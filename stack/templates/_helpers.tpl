{{/*
Expand the name of the chart.
*/}}
{{- define "stack.name" -}}
{{- default .Chart.Name .nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "service.name" -}}
{{- .Values.name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "service.backend.name.ingress" -}}
{{- if .Values.ingress.oidcProtected -}}
{{- include "oidcProxy.name" . }}
{{- else }}
{{- include "service.fullname" . }}
{{- end -}}
{{- end -}}

{{- define "service.backend.port.ingress" -}}
{{- if .Values.ingress.oidcProtected -}}
{{- include "oidcProxy.port" . }}
{{- else }}
{{- .Values.service.port | int }}
{{- end -}}
{{- end -}}

{{- define "service.backend" -}}
name: {{ include "service.backend.name.ingress" . }}
port:
    number: {{ include "service.backend.port.ingress" . }}
{{- end -}}

{{- define "service.backend.name" -}}
{{- if or .Values.ingress.oidcProtected .Values.gateway.oidcProtected -}}
{{- include "oidcProxy.name" . }}
{{- else }}
{{- include "service.fullname" . }}
{{- end -}}
{{- end -}}

{{- define "service.backend.port" -}}
{{- if or .Values.ingress.oidcProtected .Values.gateway.oidcProtected -}}
{{- include "oidcProxy.port" . }}
{{- else }}
{{- .Values.service.port | int }}
{{- end -}}
{{- end -}}


{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "stack.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}


{{- define "certManagerAnnotations" -}}
cert-manager.io/cluster-issuer: letsencrypt-prod
cert-manager.io/private-key-algorithm: RSA
cert-manager.io/private-key-size: '4096'
external-dns.alpha.kubernetes.io/exclude: "false"
external-dns.alpha.kubernetes.io/target: "access.{{ include "clusterBaseDomain" . }}"
{{- end -}}


{{- define "service.fullname" -}}
{{ include "stack.fullname" . | lower }}-{{ include "service.name" . | lower }}
{{- end }}

{{/*
Name of the vanity-domain ListenerSet. Referenced by both the ListenerSet itself
and the HTTPRoute parentRef, so keep it in one place.
*/}}
{{- define "service.vanityListenerSetName" -}}
{{ include "service.fullname" . }}-vanity
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "stack.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}

{{- define "stack.labels" -}}
helm.sh/chart: {{ include "stack.chart" . }}
{{ include "stack.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "stack.annotations" -}}
{{ toYaml .Values.annotations }}
{{- end }}

{{- define "service.labels" -}}
{{ include "stack.labels" . }}
{{ include "service.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "stack.selectorLabels" -}}
app.kubernetes.io/name: {{ include "stack.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- with .Values.argusMetadata }}
{{- if .appName }}
argus/app-name: {{ .appName }}
{{- end }}
{{- if .envName }}
argus/env-name: {{ .envName }}
{{- end }}
{{- if .stackName }}
argus/stack-name: {{ .stackName }}
{{- end }}
{{- if .repoName }}
argus/repo-name: {{ .repoName }}
{{- end }}
{{- if .repoOwner }}
argus/repo-owner: {{ .repoOwner }}
{{- end }}
{{- end }}
{{- end }}

{{- define "service.selectorLabels" -}}
app.kubernetes.io/service: {{ include "service.fullname" . }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "service.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "service.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "cronjob.isEnabled" -}}
{{- if hasKey .Values "enabled" -}}
{{- .Values.enabled -}}
{{- else -}}
true
{{- end -}}
{{- end -}}

{{- define "service.nonsensitiveEnvVars" -}}
{{- $all := list }}
{{- range $i, $envHolder := . -}}
{{- $all = concat $all (default (list) $envHolder.env) }}
{{- end -}}
{{- $latest := dict }}
{{- range $e := $all -}}
{{- $_ := set $latest $e.name $e }}
{{- end -}}
{{- $envs := list }}
{{- $emitted := dict }}
{{- range $e := $all -}}
{{- if not (hasKey $emitted $e.name) }}
{{- $_ := set $emitted $e.name true }}
{{- $envs = append $envs (get $latest $e.name) }}
{{- end }}
{{- end -}}
{{- if ne (len $envs) 0 -}}
env:
{{ toYaml $envs }}
{{- else -}}
env: []
{{- end }}
{{- end }}

{{- define "image" -}}
{{- if typeIs "string" .image }}
image: {{ .image }}
{{ else }}
image: {{ .image.repository }}:{{ .image.tag | default "latest" }}
{{- end }}
{{- end }}

{{- define "service.claimName" -}}
{{- if .Values.persistence.existingClaim }}
    {{- printf "%s" .Values.persistence.existingClaim -}}
{{- else -}}
    {{- printf "%s" (include "service.fullname" .) -}}
{{- end -}}
{{- end -}}

{{/*
The default values in this chart adds httpGet probes to the deployment.
Container probes cannot have both httpGet and tcpSocket fields, so we use omit to remove one of them.
*/}}
{{- define "container.probe" -}}
{{- if or .tcpSocket .exec -}}
{{- toYaml (omit . "httpGet") }}
{{- else }}
{{- toYaml . }}
{{- end }}
{{- end }}

{{- define "baseDomain" -}}
{{- $splits := (splitList "." .Values.ingress.host) }}
{{- $last := $splits | last }}
{{- $secondLast := $splits | initial | last }}
{{- printf "%s.%s" $secondLast $last -}}
{{- end -}}

{{- define "clusterBaseDomain" -}}
{{ splitList "." .Values.ingress.host | rest | join "." }} 
{{- end -}}

{{- define "oidcProxy.name" -}}
{{ include "stack.fullname" . | lower }}-oidc-proxy
{{- end -}}

{{- define "oidcProxy.port" -}}
{{ .Values.oidcProxy.port | default 4180 | int  }}
{{- end }}

{{- define "oidcProxy.labels" -}}
{{- include "oidcProxy.selectorLabels" . }}
k8s-app:  {{ include "oidcProxy.name" . }}
{{- end }}

{{- define "oidcProxy.selectorLabels" -}}
app.kubernetes.io/name: {{ include "oidcProxy.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "oidcProxy.envFrom" -}}
{{- $envFrom := list -}}
{{- with fromYaml (include "service.configuration" .) -}}
{{- $envFrom = concat $envFrom (default (list) .envFrom) -}}
{{- end -}}
{{- $envFrom = concat $envFrom (default (list) .Values.oidcProxy.additionalSecrets) -}}
{{- toYaml $envFrom -}}
{{- end -}}

{{- define "oidcProxy.authDomain" -}}
{{ .Values.ingress.host }}
{{- end -}}

{{- define "ingress.servedHosts" -}}
{{- $v := .Values -}}
{{- $hosts := list $v.ingress.host -}}
{{- range $v.ingress.rules -}}
  {{- $hosts = append $hosts (.host | default $v.ingress.host) -}}
{{- end -}}
{{- toJson ($hosts | uniq) -}}
{{- end -}}

{{- define "validate.gatewayIngressCoexistence" -}}
{{- if and .Values.gateway.enabled .Values.ingress.enabled -}}
  {{- $v := .Values -}}
  {{- $owner := $v.gateway.dnsOwner | default "ingress" -}}
  {{- if not (or (eq $owner "ingress") (eq $owner "gateway")) -}}
    {{- fail (printf "gateway.dnsOwner must be \"ingress\" or \"gateway\" when ingress and gateway are both enabled (got %q). Coexistence renders both routing modes and external-dns publishes only the dnsOwner side. Flip it to \"gateway\" to move DNS to the Envoy gateway NLB." $owner) -}}
  {{- end -}}
  {{- if and $v.gateway.oidcProtected (not $v.ingress.oidcProtected) -}}
    {{- fail "gateway.oidcProtected requires ingress.oidcProtected during coexistence: the still-serving nginx Ingress would expose the app without authentication. Set ingress.oidcProtected: true or disable the ingress." -}}
  {{- end -}}
  {{- if eq $owner "gateway" -}}
    {{- if $v.gateway.tlsPassthrough.enabled -}}
      {{- fail "gateway.dnsOwner: gateway cannot be combined with gateway.tlsPassthrough.enabled during coexistence: a TLSRoute is not an external-dns source, so excluding the Ingress would delete the host's DNS record." -}}
    {{- end -}}
    {{- $gwHosts := list $v.gateway.host -}}
    {{- range $v.gateway.rules -}}
      {{- $gwHosts = append $gwHosts .host -}}
    {{- end -}}
    {{- $missing := list -}}
    {{- range (fromJsonArray (include "ingress.servedHosts" $)) -}}
      {{- if not (has . $gwHosts) -}}
        {{- $missing = append $missing . -}}
      {{- end -}}
    {{- end -}}
    {{- if gt (len $missing) 0 -}}
      {{- fail (printf "gateway.dnsOwner: gateway would strip DNS for ingress hosts the gateway does not serve: %s. Add matching gateway.rules entries (or drop the ingress rules) before flipping." (join ", " $missing)) -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
{{- end -}}

{{- define "gateway.coexistDnsAnnotations" -}}
{{- $v := .root.Values -}}
{{- if and $v.gateway.enabled $v.ingress.enabled (eq ($v.gateway.dnsOwner | default "ingress") "ingress") -}}
{{- if has .host (fromJsonArray (include "ingress.servedHosts" .root)) -}}
external-dns.alpha.kubernetes.io/exclude: "true"
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "ingress.coexistDnsAnnotations" -}}
{{- if and .Values.gateway.enabled .Values.ingress.enabled (eq (.Values.gateway.dnsOwner | default "ingress") "gateway") -}}
external-dns.alpha.kubernetes.io/exclude: "true"
{{- end -}}
{{- end -}}

{{/*
Validate that each gateway rule has a host specified
*/}}
{{- define "validate.gatewayRuleHost" -}}
{{- range $i, $rule := .Values.gateway.rules -}}
  {{- if not $rule.host -}}
    {{- fail (printf "gateway.rules[%d].host is required. Each rule must specify a host." $i) -}}
  {{- end -}}
{{- end -}}
{{- end -}}

{{/*
Return the OIDC issuer URL.
(Envoy Gateway does not yet support issuerRef, so this must be a string.)
*/}}
{{- define "oidcProxyGateway.issuer" -}}
{{- if not .Values.oidcProxyGateway.provider.issuer -}}
  {{- fail "oidcProxyGateway.provider.issuer is required when gateway.oidcProtected is enabled." -}}
{{- end -}}
{{- .Values.oidcProxyGateway.provider.issuer -}}
{{- end -}}

{{/*
Return the Kubernetes secret name for OIDC credentials.
The secret must contain 'client-id' and 'client-secret' keys.

Precedence:
  1. An explicit oidcProxyGateway.clientSecretName wins. Set this when the app
     runs its own Okta client.
  2. Otherwise, the shared oidcProxyGateway.globalSecretName secret.
*/}}
{{- define "oidcProxyGateway.secretName" -}}
{{- if .Values.oidcProxyGateway.clientSecretName -}}
{{- .Values.oidcProxyGateway.clientSecretName -}}
{{- else -}}
{{- .Values.oidcProxyGateway.globalSecretName -}}
{{- end -}}
{{- end -}}

{{/*
Auto-generate the OIDC redirect URL based on gateway host (matches oauth2-proxy behavior)
Returns: https://<gateway.host>/oauth2/callback
Note: gateway.host is auto-injected by Argus at global.gateway.host (similar to ingress.host)
*/}}
{{- define "oidcProxyGateway.redirectURL" -}}
https://{{ .Values.gateway.host }}/oauth2/callback
{{- end -}}

{{/*
Whether the OIDC OAuth2 callback path is already reachable through one of the
configured gateway paths. Input dict: "paths" (list), "callback" (string,
defaults to "/oauth2/callback"). A PathPrefix path covers the callback when it is
"/" or a path-segment prefix of the callback; an Exact path covers it only on an
exact match. Returns "true"/"".
*/}}
{{- define "gateway.oidcCallbackCovered" -}}
{{- $callback := .callback | default "/oauth2/callback" -}}
{{- $covered := false -}}
{{- range .paths -}}
  {{- if eq .pathType "Exact" -}}
    {{- if eq .path $callback -}}
      {{- $covered = true -}}
    {{- end -}}
  {{- else -}}
    {{- $p := trimSuffix "/" .path -}}
    {{- if or (eq $p "") (eq $p $callback) (hasPrefix (printf "%s/" $p) $callback) -}}
      {{- $covered = true -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
{{- if $covered -}}true{{- end -}}
{{- end -}}

{{/*
OIDC base path: the URL prefix the OAuth2 callback and logout live under. Envoy
Gateway requires redirectURL and logoutPath to match the service's own HTTPRoute,
otherwise the OAuth2 filter never sees those requests. The chart scans the service's
gateway.paths for the first non-root PathPrefix path and uses it as the base so
users never have to hand-write /oauth2 or /logout paths. When no such path exists
(all paths are root or Exact) the base path is empty, placing the callback at the
host root. Input dict: "paths" (list). Returns "" or "/prefix" with no trailing slash.
*/}}
{{- define "oidcProxyGateway.basePath" -}}
{{- $paths := .paths | default list -}}
{{- $base := "" -}}
{{- $found := false -}}
{{- range $paths -}}
  {{- if and (not $found) (ne (.pathType | default "Prefix") "Exact") (ne (.path | default "/") "/") -}}
    {{- $base = trimSuffix "/" .path -}}
    {{- $found = true -}}
  {{- end -}}
{{- end -}}
{{- $base -}}
{{- end -}}

{{/*
Fail when an OIDC-protected service's derived OAuth2 callback is not reachable
through any of its gateway paths. This turns an otherwise silent misconfiguration
(the login flow breaks because the callback lands on no route, or the wrong one)
into a clear render-time error. Input: the service context.
*/}}
{{- define "validate.oidcCallbackReachable" -}}
{{- if and .Values.gateway.enabled .Values.gateway.oidcProtected (not .Values.gateway.tlsPassthrough.enabled) -}}
{{- $basePath := include "oidcProxyGateway.basePath" (dict "paths" .Values.gateway.paths) -}}
{{- $callback := printf "%s/oauth2/callback" $basePath -}}
{{- if ne (include "gateway.oidcCallbackCovered" (dict "paths" .Values.gateway.paths "callback" $callback)) "true" -}}
{{- fail (printf "gateway.oidcProtected: the OAuth2 callback %q for service %q is not covered by any configured gateway path, so login would fail. Declare the app's route path (e.g. paths: [{path: /portal}]) so the chart can namespace the callback under it, or set oidcProxyGateway.basePath explicitly." $callback (include "service.name" .)) -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Validate that OIDC and basic auth are not both enabled on a gateway service.
A route can carry only one SecurityPolicy, and oidc + basicAuth are independent
auth mechanisms; combining them is unsupported.
*/}}
{{- define "validate.gatewaySecurityExclusive" -}}
{{- if and .Values.gateway.oidcProtected .Values.gateway.basicAuth.enabled -}}
  {{- fail "gateway.oidcProtected and gateway.basicAuth.enabled cannot both be true on the same service. Pick one auth method." -}}
{{- end -}}
{{- end -}}

{{/*
Whether the service needs a SecurityPolicy (any of oidc, basicAuth, cors, ipAllowList).
Returns "true"/"" .
*/}}
{{- define "gateway.hasSecurityPolicy" -}}
{{- $g := .Values.gateway -}}
{{- if or $g.oidcProtected $g.basicAuth.enabled $g.cors.enabled (gt (len $g.ipAllowList) 0) $g.jwt.enabled -}}true{{- end -}}
{{- end -}}

{{/*
SecurityPolicy name suffix: keep "-oidc" when OIDC is on (name continuity with the
pre-consolidation policy, avoids delete/recreate), else "-security".
*/}}
{{- define "gateway.securityPolicy.suffix" -}}
{{- if .Values.gateway.oidcProtected -}}oidc{{- else -}}security{{- end -}}
{{- end -}}

{{/*
Whether the service needs a BackendTrafficPolicy (sessionAffinity, rateLimit, or connect timeout).
*/}}
{{- define "gateway.hasBackendTrafficPolicy" -}}
{{- $g := .Values.gateway -}}
{{- if or $g.sessionAffinity.enabled $g.rateLimit.enabled $g.timeouts.connect -}}true{{- end -}}
{{- end -}}

{{/*
HTTPRoute per-rule timeouts block body (no "timeouts:" key). Caller indents under a rule.
*/}}
{{- define "gateway.ruleTimeoutsInner" -}}
{{- $t := .Values.gateway.timeouts -}}
{{- if $t.request }}
request: {{ $t.request | quote }}
{{- end }}
{{- if $t.backendRequest }}
backendRequest: {{ $t.backendRequest | quote }}
{{- end }}
{{- end -}}

{{/*
HTTPRoute per-rule filters list (no "filters:" key). Caller indents under a rule.
Covers hostRewrite (URLRewrite) and request/response header modifiers. Redirect is
handled separately as a whole-route rule.
*/}}
{{- define "gateway.ruleFiltersInner" -}}
{{- $g := .Values.gateway -}}
{{- if $g.hostRewrite }}
- type: URLRewrite
  urlRewrite:
    hostname: {{ $g.hostRewrite | quote }}
{{- end }}
{{- $rh := $g.requestHeaders -}}
{{- if and $rh (or $rh.set $rh.add $rh.remove) }}
- type: RequestHeaderModifier
  requestHeaderModifier:
    {{- if $rh.set }}
    set:
      {{- toYaml $rh.set | nindent 6 }}
    {{- end }}
    {{- if $rh.add }}
    add:
      {{- toYaml $rh.add | nindent 6 }}
    {{- end }}
    {{- if $rh.remove }}
    remove:
      {{- toYaml $rh.remove | nindent 6 }}
    {{- end }}
{{- end }}
{{- $sh := $g.responseHeaders -}}
{{- $set := list -}}
{{- if and $sh $sh.set -}}
{{- $set = $sh.set -}}
{{- end -}}
{{- if $g.hsts -}}
{{- $hasSts := false -}}
{{- range $set -}}
{{- if eq (lower .name) "strict-transport-security" -}}
{{- $hasSts = true -}}
{{- end -}}
{{- end -}}
{{- if not $hasSts -}}
{{- $set = append $set (dict "name" "Strict-Transport-Security" "value" $g.hsts.value) -}}
{{- end -}}
{{- end -}}
{{- if or $set (and $sh (or $sh.add $sh.remove)) }}
- type: ResponseHeaderModifier
  responseHeaderModifier:
    {{- if $set }}
    set:
      {{- toYaml $set | nindent 6 }}
    {{- end }}
    {{- if and $sh $sh.add }}
    add:
      {{- toYaml $sh.add | nindent 6 }}
    {{- end }}
    {{- if and $sh $sh.remove }}
    remove:
      {{- toYaml $sh.remove | nindent 6 }}
    {{- end }}
{{- end }}
{{- end -}}

{{/*
SecurityPolicy spec body (no "targetRefs"). Input dict: "ctx" (service), "host", "public" (bool).
Public routes (skipAuth) carry only cors/authorization, never oidc/basicAuth.
*/}}
{{- define "gateway.securityPolicy.body" -}}
{{- $ := .ctx -}}
{{- $g := $.Values.gateway -}}
{{- if and (not .public) $g.oidcProtected }}
oidc:
  provider:
    issuer: {{ include "oidcProxyGateway.issuer" $ | quote }}
    {{- if $.Values.oidcProxyGateway.provider.authorizationEndpoint }}
    authorizationEndpoint: {{ $.Values.oidcProxyGateway.provider.authorizationEndpoint | quote }}
    {{- end }}
    {{- if $.Values.oidcProxyGateway.provider.tokenEndpoint }}
    tokenEndpoint: {{ $.Values.oidcProxyGateway.provider.tokenEndpoint | quote }}
    {{- end }}
  {{- if $.Values.oidcProxyGateway.clientID }}
  clientID: {{ $.Values.oidcProxyGateway.clientID | quote }}
  {{- else }}
  clientIDRef:
    name: {{ include "oidcProxyGateway.secretName" $ }}
  {{- end }}
  clientSecret:
    name: {{ include "oidcProxyGateway.secretName" $ }}
  {{- $basePath := include "oidcProxyGateway.basePath" (dict "paths" $g.paths) }}
  redirectURL: https://{{ .host }}{{ $basePath }}/oauth2/callback
  {{- if $.Values.oidcProxyGateway.logoutPath }}
  logoutPath: {{ printf "%s%s" $basePath $.Values.oidcProxyGateway.logoutPath | quote }}
  {{- end }}
  {{- if $.Values.oidcProxyGateway.forwardAccessToken }}
  forwardAccessToken: {{ $.Values.oidcProxyGateway.forwardAccessToken }}
  {{- end }}
  {{- if $.Values.oidcProxyGateway.refreshToken }}
  refreshToken: {{ $.Values.oidcProxyGateway.refreshToken }}
  {{- end }}
  {{- if $.Values.oidcProxyGateway.cookieDomain }}
  cookieDomain: {{ $.Values.oidcProxyGateway.cookieDomain | quote }}
  {{- end }}
  cookieNames:
    accessToken: {{ $.Values.oidcProxyGateway.cookieNames.accessToken | default (printf "AccessToken-%s-%s" $.Release.Namespace (include "service.name" $)) | quote }}
    idToken: {{ $.Values.oidcProxyGateway.cookieNames.idToken | default (printf "IdToken-%s-%s" $.Release.Namespace (include "service.name" $)) | quote }}
  {{- $apiRoutes := $.Values.oidcProxyGateway.apiRoutes | default list }}
  {{- $denyEnabled := $.Values.oidcProxyGateway.denyRedirect.enabled }}
  {{- $defaultMatcherCount := 0 }}
  {{- if $denyEnabled }}{{- $defaultMatcherCount = 3 }}{{- end }}
  {{- if gt (add (len $apiRoutes) $defaultMatcherCount) 16 }}
    {{- fail (printf "oidcProxyGateway.apiRoutes: Envoy Gateway caps denyRedirect matchers at 16, got %d apiRoutes plus %d default matchers" (len $apiRoutes) $defaultMatcherCount) }}
  {{- end }}
  {{- range $apiRoutes }}
    {{- $matchType := .matchType | default "Prefix" }}
    {{- if not (has $matchType (list "Prefix" "Exact" "RegularExpression")) }}
      {{- fail (printf "oidcProxyGateway.apiRoutes: matchType %q is not one of Prefix, Exact, RegularExpression" $matchType) }}
    {{- end }}
    {{- if not .path }}
      {{- fail "oidcProxyGateway.apiRoutes: path must not be empty" }}
    {{- end }}
    {{- if and (ne $matchType "RegularExpression") (not (hasPrefix "/" .path)) }}
      {{- fail (printf "oidcProxyGateway.apiRoutes: path %q must start with / for %s matching (request paths always do, so it would never match)" .path $matchType) }}
    {{- end }}
    {{- if and (eq $matchType "Prefix") (eq .path "/") }}
      {{- fail "oidcProxyGateway.apiRoutes: Prefix / would 401 every request including browser navigations, making login impossible. For a fully headless API, use matchType RegularExpression deliberately." }}
    {{- end }}
  {{- end }}
  {{- if or $denyEnabled (gt (len $apiRoutes) 0) }}
  denyRedirect:
    headers:
      {{- if $denyEnabled }}
      - name: Sec-Fetch-Mode
        type: RegularExpression
        value: "cors|no-cors|same-origin"
      - name: Sec-Fetch-Dest
        type: RegularExpression
        value: "empty|script|style|image|font"
      - name: X-Requested-With
        type: Exact
        value: XMLHttpRequest
      {{- end }}
      {{- range $apiRoutes }}
      - name: ":path"
        type: {{ .matchType | default "Prefix" }}
        value: {{ .path | quote }}
      {{- end }}
  {{- end }}
  {{- if $.Values.oidcProxyGateway.csrfTokenTTL }}
  csrfTokenTTL: {{ $.Values.oidcProxyGateway.csrfTokenTTL | quote }}
  {{- end }}
  {{- if $.Values.oidcProxyGateway.scopes }}
  scopes:
    {{- toYaml $.Values.oidcProxyGateway.scopes | nindent 4 }}
  {{- end }}
  {{- if $.Values.oidcProxyGateway.resources }}
  resources:
    {{- toYaml $.Values.oidcProxyGateway.resources | nindent 4 }}
  {{- end }}
{{- end }}
{{- if and (not .public) $g.jwt.enabled }}
jwt:
  providers:
{{- if and $g.jwt.providers (gt (len $g.jwt.providers) 0) }}
  {{- range $i, $provider := $g.jwt.providers }}
    - name: {{ required (printf "gateway.jwt.providers[%d].name is required. Provide a unique identifier for this JWT provider (e.g., 'okta', 'github-actions', 'eks-dev')" $i) $provider.name | quote }}
      remoteJWKS:
        uri: {{ required (printf "gateway.jwt.providers[%d].remoteJWKSUri is required. Find it with: curl -s <issuer>/.well-known/openid-configuration | jq -r .jwks_uri" $i) $provider.remoteJWKSUri | quote }}
      issuer: {{ required (printf "gateway.jwt.providers[%d].issuer is required. This should match the 'iss' claim in your JWT tokens" $i) $provider.issuer | quote }}
  {{- end }}
{{- else }}
    - name: default
      remoteJWKS:
        uri: {{ required "gateway.jwt.remoteJWKSUri is required when gateway.jwt.enabled is true (or use gateway.jwt.providers list). Find it with: curl -s <issuer>/.well-known/openid-configuration | jq -r .jwks_uri" $g.jwt.remoteJWKSUri | quote }}
      issuer: {{ required "gateway.jwt.issuer is required when gateway.jwt.enabled is true (or set oidcProxyGateway.provider.issuer, or use gateway.jwt.providers list)" ($g.jwt.issuer | default $.Values.oidcProxyGateway.provider.issuer) | quote }}
{{- end }}
{{- end }}
{{- if and (not .public) $g.basicAuth.enabled }}
basicAuth:
  users:
    name: {{ required "gateway.basicAuth.secretName is required when gateway.basicAuth.enabled is true" $g.basicAuth.secretName }}
{{- end }}
{{- if $g.cors.enabled }}
cors:
  {{- if $g.cors.allowOrigins }}
  allowOrigins:
    {{- toYaml $g.cors.allowOrigins | nindent 4 }}
  {{- end }}
  {{- if $g.cors.allowMethods }}
  allowMethods:
    {{- toYaml $g.cors.allowMethods | nindent 4 }}
  {{- end }}
  {{- if $g.cors.allowHeaders }}
  allowHeaders:
    {{- toYaml $g.cors.allowHeaders | nindent 4 }}
  {{- end }}
  {{- if $g.cors.exposeHeaders }}
  exposeHeaders:
    {{- toYaml $g.cors.exposeHeaders | nindent 4 }}
  {{- end }}
  {{- if $g.cors.allowCredentials }}
  allowCredentials: true
  {{- end }}
  {{- if $g.cors.maxAge }}
  maxAge: {{ $g.cors.maxAge | quote }}
  {{- end }}
{{- end }}
{{- if gt (len $g.ipAllowList) 0 }}
authorization:
  defaultAction: Deny
  rules:
    - action: Allow
      principal:
        clientCIDRs:
          {{- toYaml $g.ipAllowList | nindent 10 }}
{{- end }}
{{- end -}}

{{/*
Check if gateway config keys are provided (auto-enable detection)
Returns: "true" if any gateway.* keys exist (excluding just "enabled")
*/}}
{{- define "gateway.hasConfigKeys" -}}
{{- if .Values.gateway -}}
  {{- $gatewayKeys := keys (omit .Values.gateway "enabled" "dnsOwner") -}}
  {{- if gt (len $gatewayKeys) 0 -}}true{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Create the full dashboard data structure as a Helm dictionary and return it as a JSON string.
*/}}
{{- define "stack.grafanaDashboard.json" -}}
{{- $panels := list -}}
{{- $global := . -}}
{{- range $idx, $serviceName := (keys .Values.services | sortAlpha) -}}
  {{- $serviceValues := index $global.Values.services $serviceName -}}
  {{- $globalValuesDict := $global.Values.global | toYaml -}}
  {{- $values := fromYaml $globalValuesDict -}}
  {{- $values = set $values "name" $serviceName -}}
  {{- $values := mergeOverwrite $values $serviceValues -}}
  {{- $service := dict "Chart" $global.Chart "Release" $global.Release "Capabilities" $global.Capabilities "Values" $values -}}
  {{- $gwEnabled := false -}}
  {{- if hasKey $serviceValues "gateway" -}}
    {{- $svcGw := $serviceValues.gateway | default dict -}}
    {{- $explicitOff := and (hasKey $svcGw "enabled") (eq ($svcGw.enabled | toString) "false") -}}
    {{- if and (hasKey $svcGw "enabled") $svcGw.enabled -}}
      {{- $gwEnabled = true -}}
    {{- else if and (include "gateway.hasConfigKeys" (dict "Values" (dict "gateway" $svcGw))) (not $explicitOff) -}}
      {{- $gwEnabled = true -}}
    {{- end -}}
  {{- end -}}
  {{- $ingEnabled := $values.ingress.enabled -}}
  {{- if and $gwEnabled (not (and (hasKey $serviceValues "ingress") (hasKey ($serviceValues.ingress | default dict) "enabled") $serviceValues.ingress.enabled)) -}}
    {{- $ingEnabled = false -}}
  {{- end -}}
{{- with $service -}}
{{- if .Values.grafanaDashboard.enabled -}}
{{- $sectionPanelDict := dict "collapsed" false "panels" (list) "title" (printf "Service: %s" $serviceName) "type" "row" "serviceIndex" $idx -}}
{{- $panels = append $panels $sectionPanelDict -}}

{{- if or $ingEnabled $gwEnabled }}
{{- $routingArgs := dict "global" $global "service" $service "useIngress" $ingEnabled "useGateway" $gwEnabled -}}
{{- $successRatePanelDict := include "stack.grafanaDashboard.charts.serviceSuccessRate" $routingArgs | fromYaml -}}
{{- $panels = append $panels $successRatePanelDict -}}
{{- $failureRatePanelDict := include "stack.grafanaDashboard.charts.serviceFailureRate" $routingArgs | fromYaml -}}
{{- $panels = append $panels $failureRatePanelDict -}}
{{- $ingressLatencyPanelDict := include "stack.grafanaDashboard.charts.serviceIngressLatency" $routingArgs | fromYaml -}}
{{- $panels = append $panels $ingressLatencyPanelDict -}}
{{- end }}
{{- $cpuUsagePanelDict := include "stack.grafanaDashboard.charts.serviceCpuUsage" (dict "global" $global "service" $service) | fromYaml -}}
{{- $panels = append $panels $cpuUsagePanelDict -}}
{{- $memoryUsagePanelDict := include "stack.grafanaDashboard.charts.serviceMemoryUsage" (dict "global" $global "service" $service) | fromYaml -}}
{{- $panels = append $panels $memoryUsagePanelDict -}}
{{- $containerRestartsPanelDict := include "stack.grafanaDashboard.charts.serviceContainerRestarts" (dict "global" $global "service" $service) | fromYaml -}}
{{- $panels = append $panels $containerRestartsPanelDict -}}

{{/* Add extra panels from grafanaDashboard.extraPanels */}}
{{- range $extraPanel := .Values.grafanaDashboard.extraPanels -}}
  {{- $panels = append $panels $extraPanel -}}
{{- end -}}

{{- end -}}
{{- end -}}
{{- end -}}

{{/* Iterate over cronJobs and add panels for each cronjob */}}
{{- range $idx, $cronJobName := (keys .Values.cronJobs | sortAlpha) -}}
  {{- $cronJobValues := index $global.Values.cronJobs $cronJobName -}}
  {{- $globalValuesDict := $global.Values.global | toYaml -}}
  {{- $values := fromYaml $globalValuesDict -}}
  {{- $values = set $values "name" $cronJobName -}}
  {{- $values := mergeOverwrite $values $cronJobValues -}}
  {{- $cronJob := dict "Chart" $global.Chart "Release" $global.Release "Capabilities" $global.Capabilities "Values" $values -}}
{{- with $cronJob -}}
{{- if .Values.grafanaDashboard.enabled -}}
{{- $sectionPanelDict := dict "collapsed" false "panels" (list) "title" (printf "CronJob: %s" $cronJobName) "type" "row" "serviceIndex" (add $idx (len $global.Values.services)) -}}
{{- $panels = append $panels $sectionPanelDict -}}

{{- $cronJobMetricsPanelDict := include "stack.grafanaDashboard.charts.cronJobMetrics" (dict "global" $global "cronJob" $cronJob) | fromYaml -}}
{{- $panels = append $panels $cronJobMetricsPanelDict -}}
{{- $cronJobLastSuccessfulRunPanelDict := include "stack.grafanaDashboard.charts.cronJobLastSuccessfulRun" (dict "global" $global "cronJob" $cronJob) | fromYaml -}}
{{- $panels = append $panels $cronJobLastSuccessfulRunPanelDict -}}
{{- $cronJobAvgDurationPanelDict := include "stack.grafanaDashboard.charts.cronJobAverageDuration" (dict "global" $global "cronJob" $cronJob) | fromYaml -}}
{{- $panels = append $panels $cronJobAvgDurationPanelDict -}}

{{/* Add extra panels from grafanaDashboard.extraPanels */}}
{{- range $extraPanel := .Values.grafanaDashboard.extraPanels -}}
  {{- $panels = append $panels $extraPanel -}}
{{- end -}}

{{- end -}}
{{- end -}}
{{- end -}}

{{/* Now iterate over panels and set gridPos and id sequentially */}}
{{- $finalPanels := list -}}
{{- $currentX := 0 -}}
{{- $currentY := 0 -}}
{{- $currentRowHeight := 8 -}}
{{- range $panelIdx, $panel := $panels -}}
  {{- $panel = set $panel "id" (add $panelIdx 1) -}}
  {{- if eq $panel.type "row" -}}
    {{/* Row panel - if we have panels on current row, move to next row first */}}
    {{- if gt $currentX 0 -}}
      {{- $currentY = add $currentY $currentRowHeight -}}
    {{- end -}}
    {{- $currentX = 0 -}}
    {{- $panel = set $panel "gridPos" (dict "h" 1 "w" 24 "x" 0 "y" $currentY) -}}
    {{- $panel = unset $panel "serviceIndex" -}}
    {{/* After row, start panels on next line */}}
    {{- $currentY = add $currentY 1 -}}
    {{- $currentRowHeight = 8 -}}
  {{- else -}}
    {{/* Regular panel - use existing gridPos.h and gridPos.w, calculate x and y */}}
    {{- $existingGridPos := $panel.gridPos -}}
    {{- $h := default 8 $existingGridPos.h | int -}}
    {{- $w := default 12 $existingGridPos.w | int -}}

    {{/* If panel doesn't fit on current row, wrap to next row */}}
    {{- if gt (add $currentX $w) 24 -}}
      {{- $currentX = 0 -}}
      {{- $currentY = add $currentY $currentRowHeight -}}
      {{- $currentRowHeight = $h -}}
    {{- else -}}
      {{/* Track max height of panels in current row */}}
      {{- if gt $h $currentRowHeight -}}
        {{- $currentRowHeight = $h -}}
      {{- end -}}
    {{- end -}}

    {{/* Set final gridPos with calculated x and y */}}
    {{- $panel = set $panel "gridPos" (dict "h" $h "w" $w "x" $currentX "y" $currentY) -}}

    {{/* Move x position for next panel */}}
    {{- $currentX = add $currentX $w -}}
    {{/* If we've filled the row, reset x and move to next row */}}
    {{- if ge $currentX 24 -}}
      {{- $currentX = 0 -}}
      {{- $currentY = add $currentY $currentRowHeight -}}
      {{- $currentRowHeight = 8 -}}
    {{- end -}}
  {{- end -}}
  {{- $finalPanels = append $finalPanels $panel -}}
{{- end -}}

{{/* 3. Build the final, top-level dashboard dictionary */}}
{{- $dashboardTitle := $global.Release.Name }}
{{- $dashboard := dict
    "id" nil
    "uid" $dashboardTitle
    "title" $dashboardTitle
    "tags" (list)
    "style" "dark"
    "timezone" "browser"
    "editable" true
    "hideControls" false
    "graphTooltip" 1
    "panels" $finalPanels
    "time" (dict "from" "now-6h" "to" "now")
    "timepicker" (dict "time_options" (list) "refresh_intervals" (list))
    "templating" (dict "list" (list
      (dict
        "name" "namespace"
        "type" "constant"
        "hide" 2
        "query" $global.Release.Namespace
        "current" (dict "value" $global.Release.Namespace "text" $global.Release.Namespace)
      )
      (dict
        "name" "stackName"
        "type" "constant"
        "hide" 2
        "query" $global.Values.global.argusMetadata.stackName
        "current" (dict "value" $global.Values.global.argusMetadata.stackName "text" $global.Values.global.argusMetadata.stackName)
      )
    ))
    "annotations" (dict "list" (list
      (dict
        "builtIn" 1
        "datasource" (dict
          "type" "grafana"
          "uid" "-- Grafana --"
        )
        "enable" true
        "hide" true
        "iconColor" "rgba(0, 211, 255, 1)"
        "name" "Annotations & Alerts"
        "type" "dashboard"
      )
      (dict
        "datasource" (dict
          "type" "datasource"
          "uid" "grafana"
        )
        "enable" true
        "iconColor" "red"
        "name" "Argus Events"
        "target" (dict
          "limit" 100
          "matchAny" false
          "tags" (list
            (printf "app:%s" $global.Values.global.argusMetadata.appName)
            (printf "env:%s" $global.Values.global.argusMetadata.envName)
          )
          "type" "tags"
        )
      )
    ))
    "refresh" $global.Values.global.grafanaDashboard.refresh
    "schemaVersion" 17
    "version" 0
    "links" (list)
-}}

{{/* 5. Return the *entire data structure*. DO NOT pipe to toJson here. */}}
{{- $dashboard | toPrettyJson }}
{{- end -}}

{{/*
Create a success rate panel for a service.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceSuccessRate" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $useIngress := .useIngress -}}
{{- $useGateway := .useGateway -}}
{{- $serviceFullname := include "service.fullname" $service -}}
{{- $targets := list -}}
{{- if $useIngress -}}
{{- $q := printf "sum(rate(nginx_ingress_controller_requests{namespace=\"$namespace\", ingress=\"%s\", status=~\"[23]..\"}[5m]))\n/\nsum(rate(nginx_ingress_controller_requests{namespace=\"$namespace\", ingress=\"%s\"}[5m])) * 100" $serviceFullname $serviceFullname -}}
{{- $targets = append $targets (dict "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid) "editorMode" "code" "expr" $q "legendFormat" "nginx" "range" true "refId" "A") -}}
{{- end -}}
{{- if $useGateway -}}
{{- $q := printf "sum(rate(envoy_cluster_upstream_rq_xx{container=\"envoy\", envoy_cluster_name=~\"httproute/$namespace/%s(-rule-[0-9]+)?/rule/.*\", envoy_response_code_class=~\"[23]\"}[5m]))\n/\nsum(rate(envoy_cluster_upstream_rq_xx{container=\"envoy\", envoy_cluster_name=~\"httproute/$namespace/%s(-rule-[0-9]+)?/rule/.*\"}[5m])) * 100" $serviceFullname $serviceFullname -}}
{{- $targets = append $targets (dict "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid) "editorMode" "code" "expr" $q "legendFormat" "gateway" "range" true "refId" "B") -}}
{{- end -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" $targets
    "title" "Success %"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a failure rate panel for a service, segmented by error code.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceFailureRate" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $useIngress := .useIngress -}}
{{- $useGateway := .useGateway -}}
{{- $serviceFullname := include "service.fullname" $service -}}
{{- $targets := list -}}
{{- if $useIngress -}}
{{- $q := printf "sum(rate(nginx_ingress_controller_requests{namespace=\"$namespace\", ingress=\"%s\", status=~\"[45]..\"}[5m])) by (status)\n/ on() group_left\nsum(rate(nginx_ingress_controller_requests{namespace=\"$namespace\", ingress=\"%s\"}[5m])) * 100" $serviceFullname $serviceFullname -}}
{{- $targets = append $targets (dict "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid) "editorMode" "code" "expr" $q "legendFormat" "{{status}}" "range" true "refId" "A") -}}
{{- end -}}
{{- if $useGateway -}}
{{- $q := printf "sum(rate(envoy_cluster_upstream_rq_xx{container=\"envoy\", envoy_cluster_name=~\"httproute/$namespace/%s(-rule-[0-9]+)?/rule/.*\", envoy_response_code_class=~\"[45]\"}[5m])) by (envoy_response_code_class)\n/ on() group_left\nsum(rate(envoy_cluster_upstream_rq_xx{container=\"envoy\", envoy_cluster_name=~\"httproute/$namespace/%s(-rule-[0-9]+)?/rule/.*\"}[5m])) * 100" $serviceFullname $serviceFullname -}}
{{- $targets = append $targets (dict "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid) "editorMode" "code" "expr" $q "legendFormat" "{{envoy_response_code_class}}xx" "range" true "refId" "B") -}}
{{- end -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" $targets
    "title" "Failure % by Error Code"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a CPU usage panel for a service.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceCpuUsage" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $metricsQuery := printf "sum(rate(container_cpu_usage_seconds_total{namespace=\"$namespace\", pod=~\"%s-.*\", container!=\"\"}[5m])) by (pod)" (include "service.fullname" $service) -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "fieldConfig" (dict "defaults" (dict "unit" "short"))
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $metricsQuery
        "legendFormat" "{{pod}}"
        "range" true
        "refId" "A"
      )
    )
    "title" "CPU Usage"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a memory usage panel for a service.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceMemoryUsage" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $metricsQuery := printf "sum(container_memory_working_set_bytes{namespace=\"$namespace\", pod=~\"%s-.*\", container!=\"\"}) by (pod)" (include "service.fullname" $service) -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "fieldConfig" (dict "defaults" (dict "unit" "bytes"))
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $metricsQuery
        "legendFormat" "{{pod}}"
        "range" true
        "refId" "A"
      )
    )
    "title" "Memory Usage"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a container restarts panel for a service.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceContainerRestarts" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $metricsQuery := printf "increase(kube_pod_container_status_restarts_total{namespace=\"$namespace\", pod=~\"%s-.*\"}[5m])" (include "service.fullname" $service) -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $metricsQuery
        "legendFormat" "{{pod}}"
        "range" true
        "refId" "A"
      )
    )
    "title" "Container Restarts"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create an ingress latency panel for a service.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceIngressLatency" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $useIngress := .useIngress -}}
{{- $useGateway := .useGateway -}}
{{- $serviceFullname := include "service.fullname" $service -}}
{{- $targets := list -}}
{{- if $useIngress -}}
{{- $q := printf "sum(rate(nginx_ingress_controller_request_duration_seconds_sum{namespace=\"$namespace\", status=\"200\", ingress=\"%s\"}[5m]))\n/\nsum(rate(nginx_ingress_controller_request_duration_seconds_count{namespace=\"$namespace\", status=\"200\", ingress=\"%s\"}[5m]))" $serviceFullname $serviceFullname -}}
{{- $targets = append $targets (dict "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid) "editorMode" "code" "expr" $q "legendFormat" "nginx" "range" true "refId" "A") -}}
{{- end -}}
{{- if $useGateway -}}
{{- $q := printf "sum(rate(envoy_cluster_upstream_rq_time_sum{container=\"envoy\", envoy_cluster_name=~\"httproute/$namespace/%s(-rule-[0-9]+)?/rule/.*\"}[5m]))\n/\nsum(rate(envoy_cluster_upstream_rq_time_count{container=\"envoy\", envoy_cluster_name=~\"httproute/$namespace/%s(-rule-[0-9]+)?/rule/.*\"}[5m]))\n/ 1000" $serviceFullname $serviceFullname -}}
{{- $targets = append $targets (dict "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid) "editorMode" "code" "expr" $q "legendFormat" "gateway" "range" true "refId" "B") -}}
{{- end -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" $targets
    "title" "Request Latency (s)"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a cronjob metrics panel showing success and failure events as bars.
Expects a dict with keys: global, cronJob
*/}}
{{- define "stack.grafanaDashboard.charts.cronJobMetrics" -}}
{{- $global := .global -}}
{{- $cronJob := .cronJob -}}
{{- $cronJobFullname := include "service.fullname" $cronJob -}}
{{- $successQuery := printf "count((kube_job_status_succeeded{namespace=\"$namespace\", job_name=~\"%s-.*\"} UNLESS kube_job_status_succeeded{namespace=\"$namespace\", job_name=~\"%s-.*\"} offset $__interval) == 1)" $cronJobFullname $cronJobFullname -}}
{{- $failureQuery := printf "count((kube_job_status_failed{namespace=\"$namespace\", job_name=~\"%s-.*\"} UNLESS kube_job_status_failed{namespace=\"$namespace\", job_name=~\"%s-.*\"} offset $__interval) == 1)" $cronJobFullname $cronJobFullname -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" true
        "mode" "multi"
        "sort" "none"
      )
      "orientation" "auto"
      "xTickLabelRotation" 0
      "xTickLabelSpacing" 100
      "barWidth" 0.97
      "barRadius" 0
      "fullHighlight" false
      "groupWidth" 0.7
      "showValue" "auto"
      "stacking" "none"
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $successQuery
        "legendFormat" "Success"
        "range" true
        "refId" "A"
      )
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $failureQuery
        "legendFormat" "Failure"
        "range" true
        "refId" "B"
      )
    )
    "title" "CronJob Executions"
    "type" "barchart"
    "transformations" (list
      (dict
        "id" "filterByValue"
        "options" (dict
          "filters" (list
            (dict
              "config" (dict
                "id" "equal"
                "options" (dict "value" 0)
              )
              "fieldName" ""
            )
          )
          "match" "all"
          "type" "exclude"
        )
      )
    )
    "fieldConfig" (dict
      "defaults" (dict
        "unit" "short"
        "min" 0
        "custom" (dict
          "drawStyle" "bars"
          "barAlignment" 0
          "lineInterpolation" "linear"
          "barWidthFactor" 0.6
          "fillOpacity" 80
          "gradientMode" "none"
          "hideFrom" (dict
            "tooltip" false
            "viz" false
            "legend" false
          )
          "lineWidth" 1
          "pointSize" 5
          "scaleDistribution" (dict "type" "linear")
          "showPoints" "never"
          "spanNulls" false
          "stacking" (dict "group" "A" "mode" "none")
          "thresholdsStyle" (dict "mode" "off")
        )
      )
      "overrides" (list
        (dict
          "matcher" (dict "id" "byFrameRefID" "options" "A")
          "properties" (list
            (dict
              "id" "color"
              "value" (dict "mode" "fixed" "fixedColor" "green")
            )
          )
        )
        (dict
          "matcher" (dict "id" "byFrameRefID" "options" "B")
          "properties" (list
            (dict
              "id" "color"
              "value" (dict "mode" "fixed" "fixedColor" "red")
            )
          )
        )
      )
    )
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a stat panel showing the last successful run of a cronjob.
Expects a dict with keys: global, cronJob
*/}}
{{- define "stack.grafanaDashboard.charts.cronJobLastSuccessfulRun" -}}
{{- $global := .global -}}
{{- $cronJob := .cronJob -}}
{{- $cronJobFullname := include "service.fullname" $cronJob -}}
{{- $lastSuccessQuery := printf "max(kube_job_status_completion_time{namespace=\"$namespace\", job_name=~\"%s-.*\"} > 0) * 1000" $cronJobFullname -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 6)
    "options" (dict
      "colorMode" "value"
      "graphMode" "none"
      "justifyMode" "auto"
      "orientation" "auto"
      "reduceOptions" (dict
        "calcs" (list "lastNotNull")
        "fields" ""
        "values" false
      )
      "textMode" "value_and_name"
      "showPercentChange" false
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $lastSuccessQuery
        "legendFormat" "Last Successful Run"
        "range" false
        "instant" true
        "refId" "A"
      )
    )
    "title" "Last Successful Run"
    "type" "stat"
    "fieldConfig" (dict
      "defaults" (dict
        "unit" "dateTimeFromNow"
        "noValue" "No completions found"
        "mappings" (list
          (dict
            "type" "special"
            "options" (dict
              "match" "null"
              "result" (dict
                "text" "No completions"
                "color" "orange"
              )
            )
          )
        )
        "thresholds" (dict
          "mode" "absolute"
          "steps" (list
            (dict "color" "green" "value" nil)
          )
        )
      )
    )
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a stat panel showing the average duration of cronjob runs.
Expects a dict with keys: global, cronJob
*/}}
{{- define "stack.grafanaDashboard.charts.cronJobAverageDuration" -}}
{{- $global := .global -}}
{{- $cronJob := .cronJob -}}
{{- $cronJobFullname := include "service.fullname" $cronJob -}}
{{- $avgDurationQuery := printf "avg(kube_job_status_completion_time{namespace=\"$namespace\", job_name=~\"%s-.*\"} - kube_job_status_start_time{namespace=\"$namespace\", job_name=~\"%s-.*\"})" $cronJobFullname $cronJobFullname -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 6)
    "options" (dict
      "colorMode" "value"
      "graphMode" "area"
      "justifyMode" "auto"
      "orientation" "auto"
      "reduceOptions" (dict
        "calcs" (list "lastNotNull")
        "fields" ""
        "values" false
      )
      "textMode" "value_and_name"
      "showPercentChange" false
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $avgDurationQuery
        "legendFormat" "Average Duration"
        "range" true
        "refId" "A"
      )
    )
    "title" "Average Job Duration"
    "type" "stat"
    "fieldConfig" (dict
      "defaults" (dict
        "unit" "s"
        "noValue" "No data"
        "decimals" 2
        "thresholds" (dict
          "mode" "absolute"
          "steps" (list
            (dict "color" "green" "value" nil)
            (dict "color" "yellow" "value" 60)
            (dict "color" "red" "value" 300)
          )
        )
      )
    )
-}}
{{- $panelDict | toYaml -}}
{{- end -}}
