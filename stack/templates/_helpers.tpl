{{/*
Expand the name of the chart.
*/}}
{{- define "stack.name" -}}
{{- default .Chart.Name .nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "service.name" -}}
{{- .Values.name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "service.backend" -}}
{{- if .Values.ingress.oidcProtected -}}
name: {{ include "oidcProxy.name" . }}
port:
    number:  {{ include "oidcProxy.port" .}}
{{- else }}
name: {{ include "service.fullname" . }}
port:
    number: {{  .Values.service.port | int}}
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

{{ define "oidcProxy.envFromArgusSecrets" -}}
{{- include "service.configuration" . -}}
{{- end -}}

{{ define "oidcProxy.additionalSecrets" -}}
{{ if gt (len .Values.oidcProxy.additionalSecrets) 0 }}
{{ toYaml .Values.oidcProxy.additionalSecrets }}
{{- end -}}
{{- end -}}

{{- define "oidcProxy.envFrom" -}}
{{- include "oidcProxy.envFromArgusSecrets" . }}
{{- include "oidcProxy.additionalSecrets" . }}
{{- end -}}

{{- define "oidcProxy.authDomain" -}}
{{ .Values.ingress.host }}
{{- end -}}