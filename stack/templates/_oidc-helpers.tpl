{{/*
OIDC Proxy Gateway helper functions for Envoy Gateway SecurityPolicy
*/}}

{{/*
Get the OIDC client ID from oidcProxyGateway configuration
*/}}
{{- define "oidcProxyGateway.clientID" -}}
{{- .Values.oidcProxyGateway.clientID -}}
{{- end -}}

{{/*
Get the OIDC issuer URL from oidcProxyGateway configuration
*/}}
{{- define "oidcProxyGateway.issuer" -}}
{{- .Values.oidcProxyGateway.provider.issuer -}}
{{- end -}}

{{/*
Generate the redirect URL for OIDC callback
For multiple hosts, this uses the primary gateway.host by default.
Users should configure their OIDC provider to accept multiple redirect URIs:
- https://{{ .Values.gateway.host }}/oauth2/callback
{{- range $rule := .Values.gateway.rules }}
- https://{{ $rule.host }}/oauth2/callback
{{- end }}
*/}}
{{- define "oidcProxyGateway.redirectURL" -}}
https://{{ .Values.gateway.host }}/oauth2/callback
{{- end -}}

{{/*
Get all hostnames that need OIDC redirect URIs configured in the provider
*/}}
{{- define "oidcProxyGateway.allRedirectURLs" -}}
{{- $urls := list (printf "https://%s/oauth2/callback" .Values.gateway.host) -}}
{{- range $rule := .Values.gateway.rules -}}
  {{- $urls = append $urls (printf "https://%s/oauth2/callback" $rule.host) -}}
{{- end -}}
{{- $urls | join ", " -}}
{{- end -}}