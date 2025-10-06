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
Renders optional fields for the JetStream EventBus based on the provided values.
https://argoproj.github.io/argo-events/APIs/#argoproj.io/v1alpha1.JetStreamBus
*/}}
{{- define "argo-events.jetstream.optionalFields" -}}
{{- $jetstreamValues := . -}}
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

{{/*
Renders optional fields for the Kafka EventBus based on the provided values.
https://argoproj.github.io/argo-events/APIs/#argoproj.io/v1alpha1.KafkaBus
*/}}
{{- define "argo-events.kafka.optionalFields" -}}
{{- $kafkaValues := . -}}
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
{{- $natsValues := . -}}
{{- $optionalFieldsList := list "native" "exotic" }}
{{- range $optionalFieldsList -}}
  {{- $value := get $natsValues . -}}
  {{- if $value -}}
{{- . | nindent 4 -}}:
      {{- toYaml $value | nindent 6 -}}
  {{- end -}}
{{- end -}}
{{- end -}}


{{/*
Renders an EventDependency list based on the provided values.
*/}}
{{- define "argo-events.sensor.dependencies" -}}
{{- range .dependencies }}
- name: {{ .name }}
  eventSourceName: {{ .eventSourceName }}
  eventName: {{ .eventName }}
  {{- if .filters }}
  {{- include "argo-events.sensor.filters" . | nindent 2 }}
  {{- end }}
  {{- if .transform }}
  {{- include "argo-events.sensor.transformer" . | nindent 2 }}
  {{- end }}
  {{- if .filtersLogicalOperator }}
  filtersLogicalOperator: {{ .filtersLogicalOperator | toJson }}
  {{- end }}
{{- end }}
{{- end -}}

{{/*
Renders the complete filters for a sensor dependency.
*/}}
{{- define "argo-events.sensor.filters" -}}
{{- $filterValues := .filters -}}
filters:
  {{- $optionalFieldsList := list "context" "exprs" "data" "script" "time" "exprLogicalOperator" "dataLogicalOperator" }}
  {{- range $optionalFieldsList -}}
    {{- $value := get $filterValues . -}}
    {{- if $value -}}
      {{- if or (eq . "exprLogicalOperator") (eq . "dataLogicalOperator")  -}}
{{- . | nindent 4 -}}: {{ $value | toJson }}
      {{- else if eq . "script" -}}
{{- . | nindent 4 -}}: |-
        {{- $value | nindent 6 -}}
      {{- else -}}
{{- . | nindent 4 -}}:
        {{- toYaml $value | nindent 6 -}}
      {{- end -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{/*
Renders the transformer for a sensor dependency.
*/}}
{{- define "argo-events.sensor.transformer" -}}
transform:
  {{- if .transform.jq }}
  jq: {{ .transform.jq | toJson }}
  {{- end }}
  {{- if .transform.script }}
  script: |-
    {{- .transform.script | nindent 4 -}}
  {{- end -}}
{{- end -}}
