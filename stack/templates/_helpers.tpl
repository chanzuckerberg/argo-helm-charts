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

{{- define "service.configuration" -}}
{{- if or (or (or (or (ne (trim .Values.appSecrets.envSecret.secretName) "") (ne (trim .Values.appSecrets.envSecret.secretName) "")) (ne (trim .Values.appContext.envContextConfigMapName) "")) (ne (trim .Values.appContext.stackContextConfigMapName) "")) .Values.envFrom -}}
envFrom:
{{- if ne (trim .Values.appSecrets.envSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.appSecrets.envSecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appSecrets.stackSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.appSecrets.stackSecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appContext.envContextConfigMapName) "" }}
- configMapRef:
    name: {{ .Values.appContext.envContextConfigMapName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appContext.stackContextConfigMapName) "" }}
- configMapRef:
    name: {{ .Values.appContext.stackContextConfigMapName }}
    optional: true
{{- end }}
{{- if .Values.envFrom }}
{{ toYaml .Values.envFrom }}
{{- end }}
{{- end }}
{{- end }}

{{- define "service.nonsensitiveEnvVars" -}}
{{- if .Values.env }}
env:
{{ toYaml .Values.env }}
{{- else }}
env: []
{{- end }}
{{- end }}

{{- define "initContainer.image" -}}
{{- if typeIs "string" .Values.image }}
image: {{ .Values.image }}
{{ else }}
image: "{{ .Values.image.repository }}:{{ .Values.image.tag | default .Chart.AppVersion }}"
{{- end }}
{{- end }}