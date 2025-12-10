{{/*
Expand the name of the chart.
*/}}
{{- define "karpenter-gpu-nodepool.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "karpenter-gpu-nodepool.fullname" -}}
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
{{- define "karpenter-gpu-nodepool.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels for NodePool
*/}}
{{- define "karpenter-gpu-nodepool.labels" -}}
helm.sh/chart: {{ include "karpenter-gpu-nodepool.chart" . }}
{{ include "karpenter-gpu-nodepool.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "karpenter-gpu-nodepool.selectorLabels" -}}
app.kubernetes.io/name: {{ include "karpenter-gpu-nodepool.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
NVIDIA DaemonSet labels
*/}}
{{- define "karpenter-gpu-nodepool.nvidia.labels" -}}
helm.sh/chart: {{ include "karpenter-gpu-nodepool.chart" . }}
app.kubernetes.io/name: {{ include "karpenter-gpu-nodepool.name" . }}-nvidia
app.kubernetes.io/instance: {{ .Release.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

