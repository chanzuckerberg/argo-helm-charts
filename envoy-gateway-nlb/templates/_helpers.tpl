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
