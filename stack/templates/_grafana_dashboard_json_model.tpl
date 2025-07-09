{{- define "stack.grafanaDashboardActualJson" -}}
{
  "apiVersion": 1,
  "uid": "my-app-rollout-dashboard",
  "title": "{{ default "Rollout Dashboard" .dashboardName }}",
  "panels": [
    {
      "id": 1,
      "type": "graph",
      "title": "HTTP Success Rate",
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "targets": [
        {
          "expr": "sum(rate(nginx_ingress_controller_requests{status=~\"2..|3..\", namespace=\"{{ .targetServiceNamespace }}\"}[1h]))/sum(rate(nginx_ingress_controller_requests{namespace=\"{{ .targetServiceNamespace }}\"}[1h]))",
          "legendFormat": "Success Rate",
          "refId": "A"
        }
      ]
    },
    {
      "id": 2,
      "type": "graph",
      "title": "HTTP Latency (99th Percentile)",
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "targets": [
        {
          "expr": "histogram_quantile(0.99, sum(rate(nginx_ingress_controller_request_duration_seconds_bucket{status=~\"2..|3..\", namespace=\"{{ .targetServiceNamespace }}\"}[1h])) by (le))",
          "legendFormat": "99th Percentile Latency",
          "refId": "A"
        }
      ]
    },
    {
      "id": 3,
      "type": "graph",
      "title": "CPU Utilization",
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "targets": [
        {
          "expr": "sum(rate(container_cpu_usage_seconds_total{namespace=\"{{ .targetServiceNamespace }}\", pod=~\"{{ .serviceName }}-.*\"}[1h])) / sum(kube_pod_container_resource_limits{resource=\"cpu\", unit=\"core\", namespace=\"{{ .targetServiceNamespace }}\", pod=~\"{{ .serviceName }}-.*\"})",
          "legendFormat": "CPU Utilization",
          "refId": "A"
        }
      ]
    }
  ],
  "templating": {
    "list": [
      {
        "name": "serviceName",
        "type": "textbox",
        "current": {
          "text": "{{ .serviceName }}",
          "value": "{{ .serviceName }}"
        },
        "label": "Service Name",
        "query": "{{ .serviceName }}",
        "datasource": "prometheus"
      },
      {
        "name": "targetServiceNamespace",
        "type": "textbox",
        "current": {
          "text": "{{ .targetServiceNamespace }}",
          "value": "{{ .targetServiceNamespace }}"
        },
        "label": "Target Service Namespace",
        "query": "{{ .targetServiceNamespace }}",
        "datasource": "prometheus"
      }
    ]
  },
  "refresh": "5s",
  "schemaVersion": 16,
  "version": 1
}
{{- end }}