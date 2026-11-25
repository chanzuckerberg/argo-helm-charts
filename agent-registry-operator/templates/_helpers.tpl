{{- define "agent-registry-operator.name" -}}
agent-registry-operator
{{- end -}}

{{- define "agent-registry-operator.labels" -}}
app.kubernetes.io/name: {{ include "agent-registry-operator.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version }}
{{- end -}}
