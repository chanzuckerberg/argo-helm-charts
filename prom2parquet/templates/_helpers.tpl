{{/*
Expand the name of the chart.
*/}}
{{- define "prom2parquet.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "prom2parquet.fullname" -}}
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

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "prom2parquet.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "prom2parquet.labels" -}}
helm.sh/chart: {{ include "prom2parquet.chart" . }}
{{ include "prom2parquet.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "prom2parquet.selectorLabels" -}}
app.kubernetes.io/name: {{ include "prom2parquet.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: {{ include "prom2parquet.fullname" . }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "prom2parquet.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "prom2parquet.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "clusterBaseDomain" -}}
{{ splitList "." .Values.ingress.host | rest | join "." }}
{{- end -}}

{{- define "certManagerAnnotations" -}}
cert-manager.io/cluster-issuer: letsencrypt-prod
cert-manager.io/private-key-algorithm: RSA
cert-manager.io/private-key-size: '4096'
external-dns.alpha.kubernetes.io/exclude: "false"
external-dns.alpha.kubernetes.io/target: "access.{{ include "clusterBaseDomain" . }}"
{{- end -}}


