{{/*
Validation to ensure only one routing method is enabled.
ingressControllerApproach gives us the conditions to implementing an "ingress controller" approach to routing requests, which is legacy
gatewayApiApproach gives us the conditions to implementing a "gateway api" approach to routing requests, which is currently supported by the Kubernetes Open Source community
*/}}
{{- define "stack.validateRouting" -}}
{{- $ingressControllerApproach := or .Values.ingress.enabled .Values.oidcProxy.enabled -}}
{{- $gatewayApiApproach := .Values.gatewayapi.enabled -}}
{{- if and $ingressControllerApproach $gatewayApiApproach }}
{{- fail "ERROR: Cannot use both ingress-controller-approach (ingress.enabled or oidcProxy.enabled) and gateway-api-approach (gatewayapi.enabled). Please choose only one routing method." }}
{{- end }}
{{- end -}}
