{{/*
Renders an EventSource manifest based on the provided values.
*/}}
{{- define "argo-events.eventsource.name" -}}
{{- if .isMixedEventSource -}}
mixed-event-source
{{- else if .awsSqs -}}
aws-sqs
{{- else if .webhook -}}
webhook
{{- end -}}
{{- end -}}
