# cluster-healthcheck

A Helm chart for deploying a simple HTTP healthcheck endpoint for cluster health monitoring.

## Description

This chart deploys a lightweight HTTP echo server that provides a reliable endpoint for monitoring cluster health. It's designed to be highly available and minimally disruptive to cluster operations.

## Features

- Simple HTTP echo server using hashicorp/http-echo
- Configurable replica count (default: 3)
- System-critical priority class for high availability
- Pod disruption budget to prevent disruptions
- Node affinity to avoid Fargate nodes
- Ingress support with TLS
- Karpenter integration (do-not-disrupt annotation)

## Installation

```bash
helm install cluster-healthcheck ./cluster-healthcheck
```

## Configuration

The following table lists the configurable parameters of the cluster-healthcheck chart and their default values.

See `values.yaml` for detailed configuration options.

### Key Configuration Parameters

| Parameter | Description | Default |
|-----------|-------------|---------|
| `replicaCount` | Number of replicas | `3` |
| `image.repository` | Container image repository | `hashicorp/http-echo` |
| `image.tag` | Container image tag | `latest` |
| `service.port` | Service port | `80` |
| `service.targetPort` | Container target port | `8080` |
| `ingress.enabled` | Enable ingress | `true` |
| `ingress.hostname` | Ingress hostname | `healthcheck.example.com` |
| `priorityClassName` | Priority class name | `system-cluster-critical` |
| `podDisruptionBudget.enabled` | Enable PDB | `true` |

## Example Usage

### Basic Installation

```bash
helm install my-healthcheck ./cluster-healthcheck \
  --set ingress.hostname=healthcheck.mycompany.com
```

### Custom Configuration

```yaml
replicaCount: 5

ingress:
  hostname: healthcheck.prod.mycompany.com
  tls:
    secretName: prod-healthcheck-tls

resources:
  limits:
    cpu: 200m
    memory: 128Mi
  requests:
    cpu: 100m
    memory: 64Mi
```

## Testing

To run the unit tests:

```bash
helm plugin install https://github.com/helm-unittest/helm-unittest.git
helm unittest .
```

## License

MIT License - see LICENSE file for details.

