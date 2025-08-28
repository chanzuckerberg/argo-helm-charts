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

{{/*
Get EventBus Type
*/}}
{{- define "argo-events.eventbus.busType" -}}
{{- $busType := "" -}}
{{- if .Values.eventbus.jetstream }}
{{- $busType = "jetstream" -}}
{{- else if .Values.eventbus.kafka }}
{{- $busType = "kafka" -}}
{{- else if .Values.eventbus.nats -}}
{{- $busType = "nats" -}}
{{- end }}
{{- if $busType -}}
{{- $busType -}}
{{- end -}}
{{- end -}}


{{/*
Renders optional fields for the JetStream EventBus based on the provided values.
https://argoproj.github.io/argo-events/APIs/#argoproj.io/v1alpha1.JetStreamBus
*/}}
{{- define "argo-events.jetstream.optionalFields" -}}
{{- $jetstreamValues := .Values.eventbus.jetstream -}}
{{- $optionalFieldsList := list "persistence" "affinity" "tolerations" "metricsExporter" "nodeSelector" "priority" "priorityClassName" "securityContext" "serviceAccountName" "startArgs" "settings" "streamConfig" "containerTemplate" "imagePullSecrets" "maxPayload" "metadata" "reloaderContainerTemplate" }}
{{- range $optionalFieldsList -}}
  {{- $value := get $jetstreamValues . -}}
  {{- if $value -}}
    {{- if or (eq . "settings") (eq . "streamConfig") -}}
{{- . | nindent 4 -}}: |
      {{- $value | nindent 6 -}}
    {{- else if eq . "maxPayload" -}}
{{- . | nindent 4 -}}: "{{ $value }}"
    {{- else if or (eq . "priority") (eq . "priorityClassName") (eq . "serviceAccountName") -}}
{{- . | nindent 4 -}}:  {{ $value }}
    {{- else -}}
{{- . | nindent 4 -}}:
      {{- toYaml $value | nindent 6 -}}
    {{- end -}}
  {{- end -}}
{{- end -}}
{{- end -}}


{{- define "argo-events.kafka.version" -}}
{{- if .version -}}
{{- .version -}}
{{- else -}}
"latest"
{{- end -}}
{{- end -}}

{{/*
Renders optional fields for the Kafka EventBus based on the provided values.
https://argoproj.github.io/argo-events/APIs/#argoproj.io/v1alpha1.KafkaBus
*/}}
{{- define "argo-events.kafka.optionalFields" -}}
{{- $kafkaValues := .Values.eventbus.kafka -}}
{{- $optionalFieldsList := list "sasl" "tls" "consumerGroup" }}
{{- range $optionalFieldsList -}}
  {{- $value := get $kafkaValues . -}}
  {{- if $value -}}
{{- . | nindent 4 -}}:
      {{- toYaml $value | nindent 6 -}}
  {{- end -}}
{{- end -}}
{{- end -}}

{{/*
Renders optional fields for the NATs EventBus based on the provided values.
https://argoproj.github.io/argo-events/APIs/#argoproj.io/v1alpha1.NATSBus
*/}}
{{- define "argo-events.nats.optionalFields" -}}
{{- $natsValues := .Values.eventbus.nats -}}
{{- $optionalFieldsList := list "native" "exotic" }}
{{- range $optionalFieldsList -}}
  {{- $value := get $natsValues . -}}
  {{- if $value -}}
{{- . | nindent 4 -}}:
      {{- toYaml $value | nindent 6 -}}
  {{- end -}}
{{- end -}}
{{- end -}}
