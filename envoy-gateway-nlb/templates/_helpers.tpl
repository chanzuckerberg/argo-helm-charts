{{- define "envoy-gateway-nlb.selector" -}}
app.kubernetes.io/managed-by: envoy-gateway
gateway.envoyproxy.io/owning-gateway-name: {{ .Values.gatewayName }}
gateway.envoyproxy.io/owning-gateway-namespace: {{ .Values.gatewayNamespace }}
{{- end }}

{{- define "envoy-gateway-nlb.ports" -}}
- name: http
  port: 80
  targetPort: 10080
  protocol: TCP
- name: https
  port: 443
  targetPort: 10443
  protocol: TCP
{{- end }}

{{- define "envoy-gateway-nlb.tags" -}}
{{- $pairs := list -}}
{{- range $k, $v := .Values.tags -}}
{{- $pairs = append $pairs (printf "%s=%s" $k $v) -}}
{{- end -}}
{{- join "," $pairs -}}
{{- end }}

{{- define "envoy-gateway-nlb.lbAttributes" -}}
{{- $pairs := list -}}
{{- if .Values.deletionProtection -}}
{{- $pairs = append $pairs "deletion_protection.enabled=true" -}}
{{- end -}}
{{- if .Values.crossZone -}}
{{- $pairs = append $pairs "load_balancing.cross_zone.enabled=true" -}}
{{- end -}}
{{- join "," $pairs -}}
{{- end }}

{{- define "envoy-gateway-nlb.targetGroupAttributes" -}}
{{- $tg := .Values.targetGroup | default dict -}}
{{- $pairs := list "preserve_client_ip.enabled=true" -}}
{{- if .Values.proxyProtocolV2 -}}
{{- $pairs = append $pairs "proxy_protocol_v2.enabled=true" -}}
{{- end -}}
{{- if not $tg.unhealthyConnectionTermination -}}
{{- $pairs = append $pairs "target_health_state.unhealthy.connection_termination.enabled=false" -}}
{{- $pairs = append $pairs (printf "target_health_state.unhealthy.draining_interval_seconds=%d" (int $tg.unhealthyDrainingIntervalSeconds)) -}}
{{- end -}}
{{- join "," $pairs -}}
{{- end }}
