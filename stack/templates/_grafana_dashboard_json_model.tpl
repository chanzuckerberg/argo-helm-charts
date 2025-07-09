{{- define "stack.grafanaDashboardActualJson" -}}
{
  "apiVersion": 1,
  "uid": "my-app-rollout-dashboard",
  "title": "{{ default "Rollout Dashboard" .dashboardName }}",
  "panels": [
    {
      "collapsed": false,
      "id": 0,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "panels": [],
      "title": "Rollout Status",
      "type": "row"
    },
    {
      "datasource": {
        "uid": "prometheus"
      },
      "id": 11,
      "gridPos": {
        "h": 5,
        "w": 4,
        "x": 0,
        "y": 1
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "center",
            "cellOptions": {
              "type": "auto"
            },
            "filterable": false,
            "inspect": false
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "options": {
        "cellHeight": "sm",
        "footer": {
          "countRows": false,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": false
      },
      "pluginVersion": "11.3.0",
      "targets": [
        {
          "datasource": {
            "uid": "prometheus"
          },
          "editorMode": "code",
          "expr": "rollout_info{namespace=\"{{ .targetServiceNamespace }}\",name=~\"{{ .serviceName }}-.*\"}",
          "format": "table",
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Phase",
      "transformations": [
        {
          "id": "filterFieldsByName",
          "options": {
            "include": {
              "names": [
                "phase"
              ]
            }
          }
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 4,
        "x": 4,
        "y": 1
      },
      "id": 12,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "text": {},
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.3.0",
      "targets": [
        {
          "datasource": {
            "uid": "prometheus"
          },
          "editorMode": "code",
          "expr": "rollout_info_replicas_desired{namespace=\"{{ .targetServiceNamespace }}\",name=~\"{{ .serviceName }}-.*\"}",
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Replicas (desired)",
      "type": "stat"
    },
    {
      "datasource": {
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 4,
        "x": 8,
        "y": 1
      },
      "id": 13,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "text": {},
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.3.0",
      "targets": [
        {
          "datasource": {
            "uid": "prometheus"
          },
          "editorMode": "code",
          "expr": "rollout_info_replicas_available{namespace=\"{{ .targetServiceNamespace }}\",name=~\"{{ .serviceName }}-.*\"}",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Replica (available)",
      "type": "stat"
    },
    {
      "datasource": {
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": []
      },
      "gridPos": {
        "h": 5,
        "w": 4,
        "x": 12,
        "y": 1
      },
      "id": 14,
      "options": {
        "colorMode": "value",
        "graphMode": "area",
        "justifyMode": "auto",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "lastNotNull"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "text": {},
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.3.0",
      "targets": [
        {
          "datasource": {
            "uid": "prometheus"
          },
          "editorMode": "code",
          "expr": "rollout_info_replicas_unavailable{namespace=\"{{ .targetServiceNamespace }}\",name=~\"{{ .serviceName }}-.*\"}",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        }
      ],
      "title": "Replica (unavailable)",
      "type": "stat"
    },
    {
      "collapsed": false,
      "id": 2,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 6
      },
      "panels": [],
      "title": "Request and Performance Metrics",
      "type": "row"
    },
    {
      "id": 21,
      "type": "graph",
      "title": "HTTP Success Rate",
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "gridPos": {
        "h": 6,
        "w": 24,
        "x": 0,
        "y": 7
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
      "id": 22,
      "type": "graph",
      "title": "HTTP Latency (99th Percentile)",
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "gridPos": {
        "h": 6,
        "w": 24,
        "x": 0,
        "y": 13
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
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "CPU Cores",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 25,
            "gradientMode": "opacity",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "smooth",
            "lineWidth": 2,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "decimals": 4,
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 12,
        "x": 0,
        "y": 19
      },
      "id": 23,
      "options": {
        "legend": {
          "calcs": [
            "min",
            "max",
            "mean"
          ],
          "displayMode": "table",
          "placement": "right",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "11.3.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(rate(container_cpu_usage_seconds_total{namespace=\"$namespace\"}[$__rate_interval])) by (container)",
          "interval": "30",
          "legendFormat": {{ printf "{{%s}}" "container" | quote }},
          "range": true,
          "refId": "A"
        }
      ],
      "title": "CPU Usage by container",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "CPU Cores",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 25,
            "gradientMode": "opacity",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "smooth",
            "lineWidth": 2,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "decimals": 2,
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "bytes",
          "unitScale": true
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 12,
        "x": 12,
        "y": 19
      },
      "id": 23,
      "options": {
        "legend": {
          "calcs": [
            "min",
            "max",
            "mean"
          ],
          "displayMode": "table",
          "placement": "right",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "11.3.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(container_memory_working_set_bytes{namespace=\"$namespace\"}) by (container)",
          "interval": "30",
          "legendFormat": {{ printf "{{%s}}" "container" | quote }},
          "range": true,
          "refId": "A"
        }
      ],
      "title": "Memory Usage by container",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "prometheus"
      },
      "fieldConfig": {
        "defaults": {
            "color": {"mode": "palette-classic"},
            "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 25,
                "gradientMode": "opacity",
                "hideFrom": {
                    "legend": false,
                    "tooltip": false,
                    "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "smooth",
                "lineWidth": 2,
                "pointSize": 5,
                "scaleDistribution": {"type": "linear"},
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {"group": "A", "mode": "none"},
                "thresholdsStyle": {"mode": "off"}
            },
            "mappings": [],
            "thresholds": {
                "mode": "absolute",
                "steps": [
                    {"color": "green"},
                    {"color": "red", "value": 80}
                ]
            },
            "unit": "bytes",
            "unitScale": true
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 12,
        "x": 0,
        "y": 25
      },
      "id": 25,
      "options": {
        "legend": {
            "calcs": [],
            "displayMode": "list",
            "placement": "bottom",
            "showLegend": true
        },
        "tooltip": {"mode": "multi", "sort": "none"}
      },
      "pluginVersion": "8.3.3",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(rate(container_network_receive_bytes_total{namespace=\"$namespace\"}[$__rate_interval]))",
          "interval": "30s",
          "legendFormat": "Received",
          "range": true,
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "prometheus"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "- sum(rate(container_network_transmit_bytes_total{namespace=\"$namespace\"}[$__rate_interval]))",
          "interval": "30s",
          "legendFormat": "Transmitted",
          "range": true,
          "refId": "B"
        }
        ],
        "title": "Network - Bandwidth",
        "type": "timeseries"
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
        "name": "namespace",
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