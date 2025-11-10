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

{{- define "cronjob.isEnabled" -}}
{{- if hasKey .Values "enabled" -}}
{{- .Values.enabled -}}
{{- else -}}
true
{{- end -}}
{{- end -}}

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
    {{- printf "%s" .Values.persistence.existingClaim -}}
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

{{/*
Create the full dashboard data structure as a Helm dictionary and return it as a JSON string.
*/}}
{{- define "stack.grafanaDashboard.json" -}}
{{- $panels := list -}}
{{- $global := . -}}
{{- range $idx, $serviceName := (keys .Values.services | sortAlpha) -}}
  {{- $serviceValues := index $global.Values.services $serviceName -}}
  {{- $globalValuesDict := $global.Values.global | toYaml -}}
  {{- $values := fromYaml $globalValuesDict -}}
  {{- $values = set $values "name" $serviceName -}}
  {{- $values := mergeOverwrite $values $serviceValues -}}
  {{- $service := dict "Chart" $global.Chart "Release" $global.Release "Capabilities" $global.Capabilities "Values" $values -}}
{{- with $service -}}
{{- $yPos := mul $idx 9 -}}
{{- $panelId := add (mul $idx 2) 1 -}}
{{- $sectionPanelDict := dict "collapsed" false "gridPos" (dict "h" 1 "w" 24 "x" 0 "y" $yPos) "id" $panelId "panels" (list) "title" $serviceName "type" "row" -}}
{{- $panels = append $panels $sectionPanelDict -}}

{{- if .Values.ingress.enabled }}
{{- $metricsQuery := printf "sum(rate(nginx_ingress_controller_request_duration_seconds_sum{namespace=\"%s\", status=\"200\", service=\"%s\"}[5m]))\n/\nsum(rate(nginx_ingress_controller_request_duration_seconds_count{namespace=\"%s\", status=\"200\", service=\"%s\"}[5m]))" $global.Values.global.argoBuildEnv.appNamespace (include "service.fullname" $service) $global.Values.global.argoBuildEnv.appNamespace (include "service.fullname" $service) -}}
{{- $ingressLatencyPanelDict := dict
    "datasource" (dict "type" "prometheus" "uid" "prometheus")
    "gridPos" (dict "h" 8 "w" 12 "x" 0 "y" (add $yPos 1))
    "id" (add $panelId 1)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" false
        "mode" "single"
        "sort" "none"
      )
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" "prometheus")
        "editorMode" "code"
        "expr" $metricsQuery
        "legendFormat" "__auto"
        "range" true
        "refId" "A"
      )
    )
    "title" "Ingress Request Latency"
    "type" "timeseries"
-}}

{{- $panels = append $panels $ingressLatencyPanelDict -}}
{{- end }}
{{- end -}}
{{- end -}}

{{/* 3. Build the final, top-level dashboard dictionary */}}
{{- $dashboard := dict
    "id" nil
    "title" (printf "%s-dashboard" (include "stack.fullname" $global | lower))
    "tags" (list)
    "style" "dark"
    "timezone" "browser"
    "editable" true
    "hideControls" false
    "graphTooltip" 1
    "panels" $panels
    "time" (dict "from" "now-6h" "to" "now")
    "timepicker" (dict "time_options" (list) "refresh_intervals" (list))
    "templating" (dict "list" (list))
    "annotations" (dict "list" (list))
    "refresh" "5s"
    "schemaVersion" 17
    "version" 0
    "links" (list)
-}}

{{/* 5. Return the *entire data structure*. DO NOT pipe to toJson here. */}}
{{- $dashboard | toPrettyJson }}
{{- end -}}
