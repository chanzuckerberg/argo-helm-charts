import hashlib
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import shutil
import tempfile
import unittest
from unittest.mock import patch
import yaml

ROOT = Path(__file__).resolve().parents[3]
CHART = ROOT / 'ops-telemetry'
HELM = os.environ.get('HELM', 'helm')
IMAGE = '577638397886.dkr.ecr.us-east-1.amazonaws.com/ops-telemetry@sha256:' + 'a' * 64


def render(image=IMAGE, revision=None):
    args = [HELM, 'template', 'ops-telemetry', str(CHART), '--namespace', 'ops-telemetry', '--set', 'image=' + image]
    if revision: args += ['--set', 'sourceRevision=' + revision]
    return subprocess.run(args, capture_output=True, text=True)


class DeploymentTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        result = render()
        assert result.returncode == 0, result.stderr
        cls.docs = list(yaml.safe_load_all(result.stdout))

    def resource(self, kind, name=None):
        return next(x for x in self.docs if x['kind'] == kind and (not name or x['metadata']['name'] == name))

    def test_only_one_scrape_target(self):
        pod = self.resource('Deployment')['spec']
        self.assertEqual(pod['replicas'], 1)
        self.assertEqual(pod['strategy']['type'], 'Recreate')
        self.assertEqual(pod['template']['metadata']['annotations']['prometheus.io/scrape'], 'true')
        self.assertNotIn('prometheus.io/scrape', self.resource('Service')['metadata'].get('annotations', {}))

    def test_api_only_public_route(self):
        route = self.resource('HTTPRoute')['spec']
        self.assertEqual(route['parentRefs'][0]['sectionName'], 'https')
        paths = [m['path']['value'] for rule in route['rules'] for m in rule['matches']]
        self.assertEqual(paths, ['/api/v1'])

    def test_migration_before_service_with_distinct_credentials(self):
        migration = self.resource('Job')
        self.assertEqual(migration['metadata']['annotations']['argocd.argoproj.io/sync-wave'], '0')
        deployment = self.resource('Deployment')
        self.assertEqual(deployment['metadata']['annotations']['argocd.argoproj.io/sync-wave'], '1')
        env = deployment['spec']['template']['spec']['containers'][0]['env']
        self.assertEqual({e['valueFrom']['secretKeyRef']['name'] for e in env}, {'ops-telemetry-runtime'})
        env = migration['spec']['template']['spec']['containers'][0]['env']
        self.assertEqual({e['valueFrom']['secretKeyRef']['name'] for e in env}, {'ops-telemetry-migration'})

    def test_only_gateway_and_alloy_can_access_collector(self):
        peers = self.resource('NetworkPolicy')['spec']['ingress'][0]['from']
        self.assertEqual(len(peers), 2)
        self.assertTrue(all('namespaceSelector' in p and 'podSelector' in p for p in peers))
        self.assertEqual({p['namespaceSelector']['matchLabels']['kubernetes.io/metadata.name'] for p in peers}, {'loki', 'envoy-gateway-controller'})

    def test_mutable_images_and_unreviewed_sources_rejected(self):
        self.assertNotEqual(render(IMAGE.split('@')[0] + ':latest').returncode, 0)
        self.assertNotEqual(render(revision='b' * 40).returncode, 0)

    def test_migration_provenance(self):
        manifest = json.loads((CHART / 'provenance.json').read_text())
        files = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in (CHART/'files/migrations').glob('*.sql')}
        self.assertEqual(files, manifest['migrations'])
        config = self.resource('ConfigMap', 'ops-telemetry-migrations')['data']
        for name in files:
            self.assertEqual(config[name].rstrip(), (CHART/'files/migrations'/name).read_text().rstrip())
        expected_revision = manifest['revision']
        self.assertEqual(yaml.safe_load((CHART/'values.yaml').read_text())['sourceRevision'], expected_revision)
        deployment = self.resource('Deployment')
        self.assertEqual(deployment['spec']['template']['metadata']['annotations']['ops.czi.team/source-revision'], expected_revision)

    def test_application_is_pinned_and_manual(self):
        spec = importlib.util.spec_from_file_location('release', ROOT/'scripts/ops-collector-release.py')
        module = importlib.util.module_from_spec(spec); spec.loader.exec_module(module)
        app = module.application(IMAGE, 'b' * 40)['spec']
        self.assertEqual(app['source']['targetRevision'], 'b' * 40)
        self.assertEqual(app['source']['repoURL'], 'https://github.com/chanzuckerberg/argo-helm-charts.git')
        self.assertEqual(app['source']['path'], 'ops-telemetry')
        parameters = {p['name']: p['value'] for p in app['source']['helm']['parameters']}
        self.assertEqual(parameters['sourceRevision'], json.loads((CHART/'provenance.json').read_text())['revision'])
        self.assertNotIn('automated', app['syncPolicy'])
        self.assertEqual(app['destination']['name'], 'prod-sci-data')
        with self.assertRaises(ValueError): module.application(IMAGE, 'main')

    def test_publisher_rejects_missing_extra_or_changed_migrations_before_build(self):
        spec = importlib.util.spec_from_file_location('release', ROOT/'scripts/ops-collector-release.py')
        module = importlib.util.module_from_spec(spec); spec.loader.exec_module(module)
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            chart, context = root/'chart', root/'source'
            shutil.copytree(CHART/'files/migrations', chart/'files/migrations')
            shutil.copy(CHART/'provenance.json', chart/'provenance.json')
            shutil.copytree(CHART/'files/migrations', context/'database/migrations')
            with patch.object(module, 'CHART', chart):
                module.verify_migrations(context)
                for directory in (context/'database/migrations', chart/'files/migrations'):
                    with self.subTest(directory=directory.name):
                        worker = directory/'0003_worker_timing.sql'
                        original = worker.read_bytes()
                        worker.unlink()
                        with self.assertRaisesRegex(ValueError, 'migrations do not match'):
                            module.verify_migrations(context)
                        worker.write_bytes(original + b'\n-- drift\n')
                        with self.assertRaisesRegex(ValueError, 'migrations do not match'):
                            module.verify_migrations(context)
                        worker.write_bytes(original)
                        extra = directory/'0004_unreviewed.sql'; extra.write_text('SELECT 1;')
                        with self.assertRaisesRegex(ValueError, 'migrations do not match'):
                            module.verify_migrations(context)
                        extra.unlink()
                module.verify_migrations(context)

if __name__ == '__main__': unittest.main()
