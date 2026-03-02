# Envoy Gateway Resources

A Helm chart that deploys core Envoy Gateway infrastructure resources including GatewayClass, Gateway, ClusterIssuer, and wildcard TLS certificates for cluster-wide ingress management.

## Overview

This chart creates the foundational resources needed for Envoy Gateway to handle HTTP/HTTPS traffic across a Kubernetes cluster. It sets up:

- **GatewayClass**: Defines the Envoy Gateway controller
- **Gateway**: Main ingress gateway with HTTP (80) and HTTPS (443) listeners
- **ClusterIssuer**: Cert-manager issuer for Let's Encrypt certificates
- **Certificate**: Pre-generated wildcard certificate for the cluster domain

## Features

- ✅ **Wildcard TLS**: Automatic wildcard certificate generation for `*.{clusterName}.{baseDomain}`
- ✅ **Dual Protocol**: Support for both HTTP and HTTPS traffic
- ✅ **DNS01 Challenge**: Uses Route53 for wildcard certificate validation
- ✅ **Cross-Namespace**: Gateway accepts routes from all namespaces
- ✅ **Configurable**: Gateway name and domain settings via values
- ✅ **Production Ready**: Uses Let's Encrypt production servers

## Prerequisites

- Kubernetes cluster with Envoy Gateway operator installed
- Cert-manager operator installed and configured
- Route53 hosted zone for DNS01 challenges
- Appropriate AWS permissions for cert-manager Route53 access

## Installation

### Basic Installation
```bash
helm install envoy-gateway-resources ./envoy-gateway-resources \
  --set clusterName="dev-cluster" \
  --set baseDomain="example.com"
```

### With ApplicationSet (Typical Usage)
```yaml
apiVersion: argoproj.io/v1alpha1
kind: ApplicationSet
metadata:
  name: envoy-gateway-resources
spec:
  generators:
  - clusters: {}
  template:
    spec:
      source:
        repoURL: https://github.com/your-org/argo-helm-charts
        path: envoy-gateway-resources
        helm:
          values: |
            clusterName: '{{name}}'
            baseDomain: 'dev.example.com'
```

## Configuration

### Values

| Parameter | Description | Default | Required |
|-----------|-------------|---------|----------|
| `clusterName` | Name of the cluster (used in domain construction) | `""` | ✅ Yes |
| `baseDomain` | Base domain for cluster ingresses | `"dev.czi.team"` | ✅ Yes |
| `gatewayName` | Name of the gateway resource | `"ingress-gateway"` | No |
| `alternateNames` | Additional domain names to include in certificate | `[]` | No |

### Example Values

```yaml
# Required - injected by ApplicationSet
clusterName: "dev-cluster"
baseDomain: "dev.example.com"

# Optional customization
gatewayName: "main-gateway"
alternateNames:
  - "api.example.com"
  - "admin.example.com"
```

## Generated Resources

### 1. GatewayClass
- **Name**: `eg`
- **Controller**: `gateway.envoyproxy.io/gatewayclass-controller`

### 2. Gateway
- **Name**: `{gatewayName}` (default: `ingress-gateway`)
- **Namespace**: `envoy-gateway`
- **Listeners**:
  - HTTP on port 80
  - HTTPS on port 443 with wildcard hostname
- **TLS**: Terminates with auto-generated certificate

### 3. ClusterIssuer
- **Name**: `letsencrypt-prod-eg`
- **ACME Server**: Let's Encrypt production
- **Solvers**: Route53 DNS01 + HTTP01 fallback

### 4. Certificate
- **Name**: `{gatewayName}-wildcard-cert`
- **Secret**: `{gatewayName}-tls`
- **Domains**:
  - `*.{clusterName}.{baseDomain}` (wildcard)
  - `{clusterName}.{baseDomain}` (apex)
  - Additional domains from `alternateNames`

## Usage Examples

### 1. HTTP to HTTPS Redirect
The gateway automatically handles HTTP traffic on port 80 and HTTPS on port 443.

### 2. Application HTTPRoute
```yaml
apiVersion: gateway.networking.k8s.io/v1
kind: HTTPRoute
metadata:
  name: my-app-route
spec:
  parentRefs:
  - name: ingress-gateway
    namespace: envoy-gateway
  hostnames:
  - "my-app.dev-cluster.dev.example.com"
  rules:
  - matches:
    - path:
        type: PathPrefix
        value: /
    backendRefs:
    - name: my-app-service
      port: 80
```

### 3. Multiple Domain Certificate
```yaml
# values.yaml
alternateNames:
  - "api.mycompany.com"
  - "dashboard.mycompany.com"
  - "*.internal.mycompany.com"
```

## Domain Structure

The chart creates certificates and gateways for this domain pattern:

```
{clusterName}.{baseDomain}
├── *.dev-cluster.dev.example.com (wildcard)
├── dev-cluster.dev.example.com (apex)
└── [additional domains from alternateNames]
```

**Example**: For `clusterName: "staging"` and `baseDomain: "company.com"`:
- Wildcard: `*.staging.company.com`
- Apex: `staging.company.com`
- Applications: `my-app.staging.company.com`, `api.staging.company.com`, etc.

## Troubleshooting

### Certificate Issues
```bash
# Check certificate status
kubectl get certificate -n envoy-gateway

# Check certificate details
kubectl describe certificate ingress-gateway-wildcard-cert -n envoy-gateway

# Check cert-manager logs
kubectl logs -n cert-manager deployment/cert-manager
```

### Gateway Issues
```bash
# Check gateway status
kubectl get gateway -n envoy-gateway

# Check gateway details
kubectl describe gateway ingress-gateway -n envoy-gateway

# Check Envoy Gateway logs
kubectl logs -n envoy-gateway-system deployment/envoy-gateway
```

### DNS Issues
```bash
# Verify DNS01 challenge
kubectl get challenges -A

# Check external-dns if used
kubectl logs -n external-dns deployment/external-dns
```

## Security Considerations

- **Let's Encrypt Production**: Uses production ACME server with rate limits
- **RSA 4096**: Strong private key encryption
- **TLS Termination**: Gateway terminates TLS, internal traffic may be HTTP
- **Cross-Namespace Access**: Gateway accepts routes from all namespaces by design

## Integration

This chart is designed to work with:

- **Envoy Gateway**: Provides the gateway implementation
- **cert-manager**: Handles certificate lifecycle
- **external-dns**: DNS record management (optional)
- **ArgoCD ApplicationSets**: Multi-cluster deployment

## Contributing

When making changes to this chart:

1. Update the chart version in `Chart.yaml`
2. Test with multiple cluster configurations
3. Validate certificate generation works
4. Update this README if adding new features

## Support

For issues related to:
- **Envoy Gateway**: Check [Envoy Gateway documentation](https://gateway.envoyproxy.io/)
- **cert-manager**: Check [cert-manager documentation](https://cert-manager.io/docs/)
- **Let's Encrypt**: Check [rate limits and policies](https://letsencrypt.org/docs/rate-limits/)