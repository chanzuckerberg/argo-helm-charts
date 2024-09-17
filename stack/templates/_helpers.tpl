{{/*
Expand the name of the chart.
*/}}
{{- define "stack.name" -}}
{{- default .Chart.Name .nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "service.name" -}}
{{- .Values.name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "stack.fullname" -}}
{{- if .fullnameOverride }}
{{- .fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{- define "service.fullname" -}}
{{ include "stack.fullname" . | lower }}-{{ include "service.name" . | lower }}
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

{{- define "service.nonsensitiveEnvVars" -}}
{{- $envs := list }}
{{- range $i, $envHolder := . -}}
{{ $envs = concat $envs (default (list) $envHolder.env) }}
{{- end -}}
{{- if ne (len $envs) 0 -}}
env:
{{ toYaml (uniq $envs) }}
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
    {{- printf "%s" (tpl .Values.persistence.existingClaim $) -}}
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
{{- $splits := (splitList "." .Values.global.ingress.host) }}
{{- $last := $splits | last }}
{{- $secondLast := $splits | initial | last }}
{{- printf "%s.%s" $secondLast $last -}}
{{- end -}}

{{- define "clusterBaseDomain" -}}
{{ splitList "." .Values.global.ingress.host | rest | join "." }} 
{{- end -}}

{{- define "oidcProxy.name" -}}
{{ include "stack.fullname" . | lower }}-oidc-proxy
{{- end }}

{{- define "oidcProxy.port" -}}
{{ .Values.global.oidcProxy.port | default 4180 | int  }}
{{- end }}

{{- define "oidcProxy.labels" -}}
{{- include "oidcProxy.selectorLabels" . }}
k8s-app:  {{ include "oidcProxy.name" . }}
{{- end }}

{{- define "oidcProxy.selectorLabels" -}}
app.kubernetes.io/name: {{ include "oidcProxy.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{ define "oidcProxy.envFromArgusSecrets" -}}
{{- if ne (trim .Values.global.appSecrets.envSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.global.appSecrets.envSecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.global.appSecrets.stackSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.global.appSecrets.stackSecret.secretName }}
    optional: true
{{- end -}}
{{- if ne (trim .Values.global.appSecrets.clusterSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.global.appSecrets.clusterSecret.secretName }}
    optional: true
{{- end -}}
{{- end -}}

{{ define "oidcProxy.additionalSecrets" -}}
{{ if gt (len .Values.global.oidcProxy.additionalSecrets) 0 }}
{{ toYaml .Values.global.oidcProxy.additionalSecrets }}
{{- end -}}
{{- end -}}

{{- define "oidcProxy.envFrom" -}}
{{- include "oidcProxy.envFromArgusSecrets" . }}
{{- include "oidcProxy.additionalSecrets" . }}
{{- end -}}

{{- define "oidcProxy.authDomain" -}}
{{ join "." (list (include "oidcProxy.name" .) (include "clusterBaseDomain" .)) }}
{{- end -}}

{{- define "oidcProxy.skipAuthConfig" -}}
{{- range  $k, $v := .Values.global.oidcProxy.skipAuth -}}
{{- $id := printf "%s_%s" ($v.method |lower) ($v.path | replace "/" "")}}
{{- $id := regexReplaceAll "\\W+" $id "_" -}}
{{- $var_name := printf "%s_%s" "skip_auth" $id }}
set ${{ $var_name }} 1;

if ( $request_uri !~ "{{$v.path}}" ) {
    set ${{ $var_name }}  0;
}

if ( $request_method !~ "{{$v.method}}" ) {
    set ${{ $var_name }}  0;
}

if ( ${{ $var_name }} ) {
    return 200;
}
{{- end -}}
{{- end -}}

{{- define "oidcProxy.nginxAuthAnnotations" -}}
nginx.ingress.kubernetes.io/auth-url: "http://{{ include "oidcProxy.name" . }}.{{ .Release.Namespace }}.svc.cluster.local:4180/oauth2/auth"
nginx.ingress.kubernetes.io/auth-signin: "https://{{- include "oidcProxy.authDomain" . }}/oauth2/start?rd=https://$host$escaped_request_uri"
nginx.ingress.kubernetes.io/auth-response-headers: {{join "," (concat (list "Authorization" "X-Auth-Request-User" "X-Auth-Request-Groups" "X-Auth-Request-Email" "X-Auth-Request-Preferred-Username") .Values.global.oidcProxy.additionalHeaders) }}
nginx.ingress.kubernetes.io/auth-snippet: |
{{- include "oidcProxy.skipAuthConfig" . | nindent 4 }}
nginx.ingress.kubernetes.io/configuration-snippet: |
    auth_request_set $email $upstream_http_x_auth_request_email;
    auth_request_set $user $upstream_http_x_auth_request_user;
    auth_request_set $groups $upstream_http_x_auth_request_groups;
    auth_request_set $preferred_username $upstream_http_x_auth_request_preferred_username;

    proxy_set_header X-Forwarded-Email $email;
    proxy_set_header X-Forwarded-User $user;
    proxy_set_header X-Forwarded-Groups $groups;
    proxy_set_header X-Forwarded-Preferred-Username $preferred_username;
{{- end -}}
