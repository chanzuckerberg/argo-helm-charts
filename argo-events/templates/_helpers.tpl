{{/*
Renders an EventSource manifest based on the provided values.
*/}}
{{- define "argo-events.eventsource.name" -}}
{{- if .isMixedEventSource -}}
mixed-event-source
{{- else -}}
{{- range $sourceType, $sourceConfig := . }}
  {{- if not (empty $sourceConfig) }}
    {{ $sourceType }}
  {{- end }}
{{- end }}
{{- end }}
{{- end -}}

{{/*
Validate EventSource High Availability strategy types.
This helper checks for a mix of Active-Active and Active-Passive sources.
https://argoproj.github.io/argo-events/eventsources/ha/
*/}}
{{- define "argo-events.eventsource.validateHaStrategy" -}}
{{- $activeActive := list  "aws-sqs" "aws-sns" "bitbucket" "bitbucketServer" "github" "gitlab" "netApp" "slack" "strip" "webhook" }}
{{- $foundActiveActive := false }}
{{- $foundActivePassive := false }}

{{- range $sourceType, $sourceConfig := .Values.eventsources }}
  {{- if and (not (empty $sourceConfig)) (ne $sourceType "isMixedEventSource") }}
    {{- if has $sourceType $activeActive }}
        {{- $foundActiveActive = true }}
    {{- else }}
        {{- $foundActivePassive = true }}
    {{- end }}
  {{- end }}
{{- end }}

{{- if and $foundActiveActive $foundActivePassive }}
{{- fail "Validation Error: You cannot mix Active-Active EventSource types with Active-Passive types within the same EventSource. Please configure a separate EventSource for each type." }}
{{- end }}
{{- end }}
