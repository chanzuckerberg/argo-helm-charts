# Grafana Alloy Helm Chart

A Helm chart for deploying [Grafana Alloy](https://grafana.com/docs/alloy/latest/) with custom configuration for Kubernetes events collection.

## Description

This chart deploys Grafana Alloy using the official Grafana Alloy Helm chart as a dependency. It provides a pre-configured setup for collecting Kubernetes events and shipping them to Loki endpoints.

Key features:
- Kubernetes events collection out of the box
- Dual Loki endpoint support (local + remote/CloudWatch)
- Cluster-aware labeling for multi-cluster deployments
- ArgoCD ApplicationSet compatible

## Prerequisites

- Kubernetes 1.19+
- Helm 3.0+

## Installation

### Add the Helm repository

```bash
helm repo add argo-helm-charts https://chanzuckerberg.github.io/argo-helm-charts
helm repo update
```

### Install the chart

```bash
helm install grafana-alloy argo-helm-charts/grafana-alloy \
  --namespace monitoring \
  --create-namespace \
  --set clusterName=my-cluster \
  --set centralLoki.url=https://loki-gateway.example.com/loki/api/v1/push
```

### Install with custom values

```bash
helm install grafana-alloy argo-helm-charts/grafana-alloy \
  --namespace monitoring \
  --create-namespace \
  -f custom-values.yaml
```

## Configuration

### Required Parameters

| Parameter | Description | Default |
|-----------|-------------|---------|
| `clusterName` | Name of the cluster (used for labeling events) | `""` (required) |

### Key Parameters

| Parameter | Description | Default |
|-----------|-------------|---------|
| `enabled` | Enable or disable the deployment | `true` |
| `loki.local.url` | URL of the local Loki instance | `http://loki.loki.svc:3100/loki/api/v1/push` |
| `centralLoki.enabled` | Enable central Loki endpoint | `true` |
| `centralLoki.url` | URL of the central Loki endpoint | `""` |
| `alloy.alloy.image.tag` | Alloy image version | (default from subchart) |
| `alloy.controller.type` | Controller type (deployment, daemonset, statefulset) | `deployment` |
| `alloy.controller.replicas` | Number of replicas | `1` |
| `alloy.resources` | Resource requests/limits | See `values.yaml` |

### ArgoCD ApplicationSet Example

When deploying via ArgoCD ApplicationSet, you can template the `clusterName`:

```yaml
apiVersion: argoproj.io/v1alpha1
kind: ApplicationSet
metadata:
  name: grafana-alloy
spec:
  generators:
    - clusters: {}
  template:
    metadata:
      name: 'grafana-alloy-{{name}}'
    spec:
      project: default
      source:
        repoURL: https://chanzuckerberg.github.io/argo-helm-charts
        chart: grafana-alloy
        targetRevision: 1.5.1
        helm:
          values: |
            clusterName: "{{name}}"
            centralLoki:
              enabled: true
              url: "https://loki-gateway.example.com/loki/api/v1/push"
      destination:
        server: '{{server}}'
        namespace: monitoring
```

### Example: Basic Deployment

```yaml
clusterName: prod-us-west-2

loki:
  local:
    url: "http://loki.loki.svc:3100/loki/api/v1/push"

centralLoki:
  enabled: true
  url: "https://central-loki.example.com/loki/api/v1/push"
```

### Example: Disable Central Loki

```yaml
clusterName: dev-cluster

centralLoki:
  enabled: false
```

### Example: Custom Configuration

Override the default Kubernetes events collection with your own configuration:

```yaml
clusterName: my-cluster

alloyConfig:
  content: |
    logging {
      level = "debug"
    }

    prometheus.scrape "default" {
      targets = [
        {"__address__" = "localhost:12345"},
      ]
      forward_to = [prometheus.remote_write.default.receiver]
    }

    prometheus.remote_write "default" {
      endpoint {
        url = "http://prometheus:9090/api/v1/write"
      }
    }
```

### Example: DaemonSet for Node-level Collection

```yaml
clusterName: my-cluster

alloy:
  controller:
    type: daemonset
```

### Central Loki Authentication

The central Loki endpoint uses basic authentication via the `LOKI_BASIC_AUTH_CREDENTIALS` environment variable. Configure it via the Alloy subchart:

```yaml
clusterName: my-cluster

alloy:
  alloy:
    extraEnv:
      - name: LOKI_BASIC_AUTH_CREDENTIALS
        valueFrom:
          secretKeyRef:
            name: loki-credentials
            key: basic-auth
```

## Default Configuration

The chart ships with a default configuration for collecting Kubernetes events with the following features:

- **Source**: Kubernetes events via `loki.source.kubernetes_events`
- **Labeling**: Events are labeled with:
  - `cluster`: The cluster name (from `clusterName` value)
  - `exporter`: `grafana-alloy`
  - `event_reason`, `event_type`, `event_kind`, `event_namespace`, `event_host`
- **Destinations**: Dual Loki endpoints (local + optional remote with basic auth)

## Upgrading

```bash
helm upgrade grafana-alloy argo-helm-charts/grafana-alloy \
  --namespace monitoring \
  -f custom-values.yaml
```

## Uninstalling

```bash
helm uninstall grafana-alloy --namespace monitoring
```

## References

- [Grafana Alloy Documentation](https://grafana.com/docs/alloy/latest/)
- [Grafana Alloy Configuration Reference](https://grafana.com/docs/alloy/latest/reference/)
- [Official Grafana Alloy Helm Chart](https://github.com/grafana/alloy/tree/main/operations/helm/charts/alloy)
- [loki.source.kubernetes_events](https://grafana.com/docs/alloy/latest/reference/components/loki/loki.source.kubernetes_events/)
