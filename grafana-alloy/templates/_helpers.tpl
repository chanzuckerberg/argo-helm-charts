{{/*
Expand the name of the chart.
*/}}
{{- define "grafana-alloy.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "grafana-alloy.fullname" -}}
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
{{- define "grafana-alloy.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "grafana-alloy.labels" -}}
helm.sh/chart: {{ include "grafana-alloy.chart" . }}
{{ include "grafana-alloy.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "grafana-alloy.selectorLabels" -}}
app.kubernetes.io/name: {{ include "grafana-alloy.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "grafana-alloy.promRelabelRules" -}}
{{- range . }}
      rule {
        {{- if .source_labels }}
        source_labels = [{{- range $i, $l := .source_labels }}{{ if $i }}, {{ end }}{{ $l | quote }}{{- end }}]
        {{- end }}
        {{- if .regex }}
        regex         = {{ .regex | quote }}
        {{- end }}
        {{- if .target_label }}
        target_label  = {{ .target_label | quote }}
        {{- end }}
        {{- with .replacement }}
        replacement   = {{ . | quote }}
        {{- end }}
        {{- if .action }}
        action        = {{ .action | quote }}
        {{- end }}
      }
{{- end }}
{{- end }}

{{/*
Node-shard a role=endpoints scrape: keep only targets whose backing pod runs on THIS
Alloy's node, so a DaemonSet scrapes each cluster-wide endpoint exactly once instead of
once per node. Exact node-name match via keepequal (no regex/wildcard ambiguity).
Targets with no endpoint node name (e.g. external/headless) are dropped — only use where
all scrape targets are pod-backed.
*/}}
{{- define "grafana-alloy.shardByEndpointNode" -}}
rule {
  target_label = "__tmp_local_node"
  replacement  = coalesce(sys.env("NODE_NAME"), sys.env("HOSTNAME"), constants.hostname)
}
rule {
  source_labels = ["__meta_kubernetes_endpoint_node_name"]
  target_label  = "__tmp_local_node"
  action        = "keepequal"
}
rule {
  action = "labeldrop"
  regex  = "__tmp_local_node"
}
{{- end -}}

