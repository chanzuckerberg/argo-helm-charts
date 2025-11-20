# prom2parquet

A Helm chart for deploying prom2parquet - a tool that exports Prometheus metrics to Parquet format on S3.

## Description

This chart deploys prom2parquet, which provides a Prometheus remote write endpoint that converts metrics to Parquet format and stores them in S3 (or other backends).

## Prerequisites

- Kubernetes 1.19+
- Helm 3.0+
- AWS credentials (if using S3 backend)
- For IRSA (IAM Roles for Service Accounts): An IAM role with S3 access

## Installing the Chart

To install the chart with the release name `my-prom2parquet`:

```bash
helm install my-prom2parquet ./prom2parquet
```

## Configuration

The following table lists the configurable parameters of the prom2parquet chart and their default values.

### Basic Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| `replicaCount` | Number of replicas | `1` |
| `image.repository` | Container image repository | `prom2parquet` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `image.tag` | Container image tag | `latest` |

### Backend Configuration

| Parameter | Description | Default |
|-----------|-------------|---------|
| `backend.type` | Backend type (e.g., s3/aws) | `s3/aws` |
| `backend.root` | Backend root path (e.g., S3 bucket name) | `""` |
| `backend.prefix` | Prefix for storing data | `parquet` |
| `serverPort` | Port for the prom2parquet server | `1234` |

### AWS Credentials

| Parameter | Description | Default |
|-----------|-------------|---------|
| `awsCredentials.secretName` | Name of secret containing AWS credentials | `""` |
| `awsCredentials.accessKeyIdKey` | Key in secret for AWS_ACCESS_KEY_ID | `access_key_id` |
| `awsCredentials.secretAccessKeyKey` | Key in secret for AWS_SECRET_ACCESS_KEY | `secret_access_key` |

### Service Account

| Parameter | Description | Default |
|-----------|-------------|---------|
| `serviceAccount.create` | Create service account | `true` |
| `serviceAccount.annotations` | Service account annotations (e.g., for IRSA) | `{}` |
| `serviceAccount.name` | Service account name | `""` |

### Resources

| Parameter | Description | Default |
|-----------|-------------|---------|
| `resources.limits.cpu` | CPU limit | `500m` |
| `resources.limits.memory` | Memory limit | `512Mi` |
| `resources.requests.cpu` | CPU request | `100m` |
| `resources.requests.memory` | Memory request | `128Mi` |

## Example: Using with IRSA (IAM Roles for Service Accounts)

```yaml
serviceAccount:
  create: true
  annotations:
    eks.amazonaws.com/role-arn: arn:aws:iam::123456789012:role/prom2parquet-role

backend:
  type: "s3/aws"
  root: "my-metrics-bucket"
  prefix: "parquet"

image:
  repository: "123456789012.dkr.ecr.us-west-2.amazonaws.com/prom2parquet"
  tag: "v1.0.0"
```

## Example: Using with AWS Credentials from Secret

```yaml
awsCredentials:
  secretName: "prom2parquet-aws-creds"

backend:
  type: "s3/aws"
  root: "my-metrics-bucket"
  prefix: "parquet"

image:
  repository: "123456789012.dkr.ecr.us-west-2.amazonaws.com/prom2parquet"
  tag: "v1.0.0"
```

The secret should contain:
```yaml
apiVersion: v1
kind: Secret
metadata:
  name: prom2parquet-aws-creds
type: Opaque
data:
  access_key_id: <base64-encoded-access-key>
  secret_access_key: <base64-encoded-secret-key>
```

## Prometheus Configuration

Configure Prometheus to use prom2parquet as a remote write endpoint:

```yaml
remoteWrite:
  - url: http://my-prom2parquet:1234/write
```

## Uninstalling the Chart

To uninstall/delete the `my-prom2parquet` deployment:

```bash
helm delete my-prom2parquet
```

