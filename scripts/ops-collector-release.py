#!/usr/bin/env python3
"""Build a pinned collector or render a manually synced Argo application."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import re
import subprocess
import tarfile
import tempfile

ROOT = Path(__file__).resolve().parents[1]
CHART = ROOT / 'ops-telemetry'
SOURCE = json.loads((CHART / 'provenance.json').read_text())['revision']
REPOSITORY = '577638397886.dkr.ecr.us-east-1.amazonaws.com/ops-telemetry'


def application(image, revision):
    if not re.fullmatch(re.escape(REPOSITORY) + r'@sha256:[0-9a-f]{64}', image):
        raise ValueError('Use the published immutable ECR image digest')
    if not re.fullmatch(r'[0-9a-f]{40}', revision):
        raise ValueError('Use the reviewed argo-helm-charts commit SHA')
    return {'apiVersion': 'argoproj.io/v1alpha1', 'kind': 'Application',
            'metadata': {'name': 'prod-sci-data-ops-telemetry', 'namespace': 'argocd'},
            'spec': {'project': 'default',
                     'source': {'repoURL': 'https://github.com/chanzuckerberg/argo-helm-charts.git',
                                'targetRevision': revision, 'path': 'ops-telemetry',
                                'helm': {'releaseName': 'ops-telemetry', 'parameters': [
                                    {'name': 'image', 'value': image}, {'name': 'sourceRevision', 'value': SOURCE}]}},
                     'destination': {'name': 'prod-sci-data', 'namespace': 'ops-telemetry'},
                     'syncPolicy': {'syncOptions': ['CreateNamespace=true']}}}


def verify_migrations(context):
    """Require the complete source and chart bundles to match pinned provenance."""
    expected = json.loads((CHART / 'provenance.json').read_text())['migrations']
    for label, directory in (('source', Path(context) / 'database/migrations'),
                             ('chart', CHART / 'files/migrations')):
        actual = {path.name: hashlib.sha256(path.read_bytes()).hexdigest()
                  for path in directory.glob('*.sql')}
        if actual != expected:
            raise ValueError(f'{label} migrations do not match pinned provenance')


def build():
    with tempfile.TemporaryDirectory(prefix='ops-collector-build-') as directory:
        archive = subprocess.check_output(['gh', 'api', f'repos/czbiohub-sf/ops_monorepo/tarball/{SOURCE}'])
        root = Path(directory)
        with tarfile.open(fileobj=io.BytesIO(archive), mode='r:gz') as tar:
            tar.extractall(root, filter='data')
        context = next(root.iterdir()) / 'services/ops-telemetry'
        verify_migrations(context)
        image = f'{REPOSITORY}:{SOURCE}'
        # No implicit registry login or credential printing; operator authenticates Docker first.
        subprocess.run(['docker', 'buildx', 'build', '--platform', 'linux/amd64,linux/arm64', '--push',
                        '--label', f'org.opencontainers.image.revision={SOURCE}',
                        '-f', str(context / 'deploy/collector/Dockerfile'), '-t', image, str(context)], check=True)
        print('Published ' + image + '; record its ECR digest and use it with the application command.')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    sub.add_parser('build')
    app = sub.add_parser('application')
    app.add_argument('--image', required=True)
    app.add_argument('--chart-revision', required=True)
    args = parser.parse_args()
    if args.command == 'build':
        build()
    else:
        print(json.dumps(application(args.image, args.chart_revision), indent=2))
