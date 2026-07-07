{{/*
Expand the name of the chart.
*/}}
{{- define "stack.name" -}}
{{- default .Chart.Name .nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "service.name" -}}
{{- .Values.name | trunc 63 | trimSuffix "-" }}
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
{{- with .Values.argusMetadata }}
{{- if .appName }}
argus/app-name: {{ .appName }}
{{- end }}
{{- if .envName }}
argus/env-name: {{ .envName }}
{{- end }}
{{- if .stackName }}
argus/stack-name: {{ .stackName }}
{{- end }}
{{- if .repoName }}
argus/repo-name: {{ .repoName }}
{{- end }}
{{- if .repoOwner }}
argus/repo-owner: {{ .repoOwner }}
{{- end }}
{{- end }}
{{- end }}

{{- define "service.selectorLabels" -}}
app.kubernetes.io/service: {{ include "service.fullname" . }}
{{- end }}

{{/*
Service configuration - generates envFrom array with secrets and configmaps
*/}}
{{- define "service.configuration" -}}
{{- $envFromList := list -}}
{{- if and .Values.appSecrets .Values.appSecrets.clusterSecret (ne (trim .Values.appSecrets.clusterSecret.secretName) "") -}}
  {{- $envFromList = append $envFromList (dict "secretRef" (dict "name" .Values.appSecrets.clusterSecret.secretName "optional" true)) -}}
{{- end -}}
{{- if and .Values.appSecrets .Values.appSecrets.clusterCLISecret (ne (trim .Values.appSecrets.clusterCLISecret.secretName) "") -}}
  {{- $envFromList = append $envFromList (dict "secretRef" (dict "name" .Values.appSecrets.clusterCLISecret.secretName "optional" true)) -}}
{{- end -}}
{{- if and .Values.appSecrets .Values.appSecrets.envSecret (ne (trim .Values.appSecrets.envSecret.secretName) "") -}}
  {{- $envFromList = append $envFromList (dict "secretRef" (dict "name" .Values.appSecrets.envSecret.secretName "optional" true)) -}}
{{- end -}}
{{- if and .Values.appSecrets .Values.appSecrets.stackSecret (ne (trim .Values.appSecrets.stackSecret.secretName) "") -}}
  {{- $envFromList = append $envFromList (dict "secretRef" (dict "name" .Values.appSecrets.stackSecret.secretName "optional" true)) -}}
{{- end -}}
{{- if ne (trim .Values.appContext.envContextConfigMapName) "" -}}
  {{- $envFromList = append $envFromList (dict "configMapRef" (dict "name" .Values.appContext.envContextConfigMapName "optional" true)) -}}
{{- end -}}
{{- if ne (trim .Values.appContext.stackContextConfigMapName) "" -}}
  {{- $envFromList = append $envFromList (dict "configMapRef" (dict "name" .Values.appContext.stackContextConfigMapName "optional" true)) -}}
{{- end -}}
{{- if .Values.envFrom -}}
  {{- $envFromList = concat $envFromList .Values.envFrom -}}
{{- end -}}
{{- if $envFromList }}
envFrom:
{{ toYaml $envFromList | indent 0 }}
{{- end -}}
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
{{- if .Values.grafanaDashboard.enabled -}}
{{- $sectionPanelDict := dict "collapsed" false "panels" (list) "title" (printf "Service: %s" $serviceName) "type" "row" "serviceIndex" $idx -}}
{{- $panels = append $panels $sectionPanelDict -}}

{{/* Add extra panels from grafanaDashboard.extraPanels */}}
{{- range $extraPanel := .Values.grafanaDashboard.extraPanels -}}
  {{- $panels = append $panels $extraPanel -}}
{{- end -}}

{{- end -}}
{{- end -}}
{{- end -}}

{{/* Iterate over cronJobs and add panels for each cronjob */}}
{{- range $idx, $cronJobName := (keys .Values.cronJobs | sortAlpha) -}}
  {{- $cronJobValues := index $global.Values.cronJobs $cronJobName -}}
  {{- $globalValuesDict := $global.Values.global | toYaml -}}
  {{- $values := fromYaml $globalValuesDict -}}
  {{- $values = set $values "name" $cronJobName -}}
  {{- $values := mergeOverwrite $values $cronJobValues -}}
  {{- $cronJob := dict "Chart" $global.Chart "Release" $global.Release "Capabilities" $global.Capabilities "Values" $values -}}
{{- with $cronJob -}}
{{- if .Values.grafanaDashboard.enabled -}}
{{- $sectionPanelDict := dict "collapsed" false "panels" (list) "title" (printf "CronJob: %s" $cronJobName) "type" "row" "serviceIndex" (add $idx (len $global.Values.services)) -}}
{{- $panels = append $panels $sectionPanelDict -}}

{{- $cronJobMetricsPanelDict := include "stack.grafanaDashboard.charts.cronJobMetrics" (dict "global" $global "cronJob" $cronJob) | fromYaml -}}
{{- $panels = append $panels $cronJobMetricsPanelDict -}}
{{- $cronJobLastSuccessfulRunPanelDict := include "stack.grafanaDashboard.charts.cronJobLastSuccessfulRun" (dict "global" $global "cronJob" $cronJob) | fromYaml -}}
{{- $panels = append $panels $cronJobLastSuccessfulRunPanelDict -}}
{{- $cronJobAvgDurationPanelDict := include "stack.grafanaDashboard.charts.cronJobAverageDuration" (dict "global" $global "cronJob" $cronJob) | fromYaml -}}
{{- $panels = append $panels $cronJobAvgDurationPanelDict -}}

{{/* Add extra panels from grafanaDashboard.extraPanels */}}
{{- range $extraPanel := .Values.grafanaDashboard.extraPanels -}}
  {{- $panels = append $panels $extraPanel -}}
{{- end -}}

{{- end -}}
{{- end -}}
{{- end -}}

{{/* Now iterate over panels and set gridPos and id sequentially */}}
{{- $finalPanels := list -}}
{{- $currentX := 0 -}}
{{- $currentY := 0 -}}
{{- $currentRowHeight := 8 -}}
{{- range $panelIdx, $panel := $panels -}}
  {{- $panel = set $panel "id" (add $panelIdx 1) -}}
  {{- if eq $panel.type "row" -}}
    {{/* Row panel - if we have panels on current row, move to next row first */}}
    {{- if gt $currentX 0 -}}
      {{- $currentY = add $currentY $currentRowHeight -}}
    {{- end -}}
    {{- $currentX = 0 -}}
    {{- $panel = set $panel "gridPos" (dict "h" 1 "w" 24 "x" 0 "y" $currentY) -}}
    {{- $panel = unset $panel "serviceIndex" -}}
    {{/* After row, start panels on next line */}}
    {{- $currentY = add $currentY 1 -}}
    {{- $currentRowHeight = 8 -}}
  {{- else -}}
    {{/* Regular panel - use existing gridPos.h and gridPos.w, calculate x and y */}}
    {{- $existingGridPos := $panel.gridPos -}}
    {{- $h := default 8 $existingGridPos.h | int -}}
    {{- $w := default 12 $existingGridPos.w | int -}}

    {{/* If panel doesn't fit on current row, wrap to next row */}}
    {{- if gt (add $currentX $w) 24 -}}
      {{- $currentX = 0 -}}
      {{- $currentY = add $currentY $currentRowHeight -}}
      {{- $currentRowHeight = $h -}}
    {{- else -}}
      {{/* Track max height of panels in current row */}}
      {{- if gt $h $currentRowHeight -}}
        {{- $currentRowHeight = $h -}}
      {{- end -}}
    {{- end -}}

    {{/* Set final gridPos with calculated x and y */}}
    {{- $panel = set $panel "gridPos" (dict "h" $h "w" $w "x" $currentX "y" $currentY) -}}

    {{/* Move x position for next panel */}}
    {{- $currentX = add $currentX $w -}}
    {{/* If we've filled the row, reset x and move to next row */}}
    {{- if ge $currentX 24 -}}
      {{- $currentX = 0 -}}
      {{- $currentY = add $currentY $currentRowHeight -}}
      {{- $currentRowHeight = 8 -}}
    {{- end -}}
  {{- end -}}
  {{- $finalPanels = append $finalPanels $panel -}}
{{- end -}}

{{/* 3. Build the final, top-level dashboard dictionary */}}
{{- $dashboardTitle := $global.Release.Name }}
{{- $dashboard := dict
    "id" nil
    "uid" $dashboardTitle
    "title" $dashboardTitle
    "tags" (list)
    "style" "dark"
    "timezone" "browser"
    "editable" true
    "hideControls" false
    "graphTooltip" 1
    "panels" $finalPanels
    "time" (dict "from" "now-6h" "to" "now")
    "timepicker" (dict "time_options" (list) "refresh_intervals" (list))
    "templating" (dict "list" (list
      (dict
        "name" "namespace"
        "type" "constant"
        "hide" 2
        "query" $global.Release.Namespace
        "current" (dict "value" $global.Release.Namespace "text" $global.Release.Namespace)
      )
      (dict
        "name" "stackName"
        "type" "constant"
        "hide" 2
        "query" $global.Values.global.argusMetadata.stackName
        "current" (dict "value" $global.Values.global.argusMetadata.stackName "text" $global.Values.global.argusMetadata.stackName)
      )
    ))
    "annotations" (dict "list" (list
      (dict
        "builtIn" 1
        "datasource" (dict
          "type" "grafana"
          "uid" "-- Grafana --"
        )
        "enable" true
        "hide" true
        "iconColor" "rgba(0, 211, 255, 1)"
        "name" "Annotations & Alerts"
        "type" "dashboard"
      )
      (dict
        "datasource" (dict
          "type" "datasource"
          "uid" "grafana"
        )
        "enable" true
        "iconColor" "red"
        "name" "Argus Events"
        "target" (dict
          "limit" 100
          "matchAny" false
          "tags" (list
            (printf "app:%s" $global.Values.global.argusMetadata.appName)
            (printf "env:%s" $global.Values.global.argusMetadata.envName)
          )
          "type" "tags"
        )
      )
    ))
    "refresh" "5s"
    "schemaVersion" 17
    "version" 0
    "links" (list)
-}}

{{/* 5. Return the *entire data structure*. DO NOT pipe to toJson here. */}}
{{- $dashboard | toPrettyJson }}
{{- end -}}

{{/*
Create a container restarts panel for a service.
Expects a dict with keys: global, service
*/}}
{{- define "stack.grafanaDashboard.charts.serviceContainerRestarts" -}}
{{- $global := .global -}}
{{- $service := .service -}}
{{- $metricsQuery := printf "increase(kube_pod_container_status_restarts_total{namespace=\"$namespace\", pod=~\"%s-.*\"}[5m])" (include "service.fullname" $service) -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
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
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $metricsQuery
        "legendFormat" "{{pod}}"
        "range" true
        "refId" "A"
      )
    )
    "title" "Container Restarts"
    "type" "timeseries"
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a cronjob metrics panel showing success and failure events as bars.
Expects a dict with keys: global, cronJob
*/}}
{{- define "stack.grafanaDashboard.charts.cronJobMetrics" -}}
{{- $global := .global -}}
{{- $cronJob := .cronJob -}}
{{- $cronJobFullname := include "service.fullname" $cronJob -}}
{{- $successQuery := printf "count((kube_job_status_succeeded{namespace=\"$namespace\", job_name=~\"%s-.*\"} UNLESS kube_job_status_succeeded{namespace=\"$namespace\", job_name=~\"%s-.*\"} offset $__interval) == 1)" $cronJobFullname $cronJobFullname -}}
{{- $failureQuery := printf "count((kube_job_status_failed{namespace=\"$namespace\", job_name=~\"%s-.*\"} UNLESS kube_job_status_failed{namespace=\"$namespace\", job_name=~\"%s-.*\"} offset $__interval) == 1)" $cronJobFullname $cronJobFullname -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 12)
    "options" (dict
      "legend" (dict
        "calcs" (list)
        "displayMode" "list"
        "placement" "bottom"
        "showLegend" true
      )
      "tooltip" (dict
        "hideZeros" true
        "mode" "multi"
        "sort" "none"
      )
      "orientation" "auto"
      "xTickLabelRotation" 0
      "xTickLabelSpacing" 100
      "barWidth" 0.97
      "barRadius" 0
      "fullHighlight" false
      "groupWidth" 0.7
      "showValue" "auto"
      "stacking" "none"
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $successQuery
        "legendFormat" "Success"
        "range" true
        "refId" "A"
      )
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $failureQuery
        "legendFormat" "Failure"
        "range" true
        "refId" "B"
      )
    )
    "title" "CronJob Executions"
    "type" "barchart"
    "transformations" (list
      (dict
        "id" "filterByValue"
        "options" (dict
          "filters" (list
            (dict
              "config" (dict
                "id" "equal"
                "options" (dict "value" 0)
              )
              "fieldName" ""
            )
          )
          "match" "all"
          "type" "exclude"
        )
      )
    )
    "fieldConfig" (dict
      "defaults" (dict
        "unit" "short"
        "min" 0
        "custom" (dict
          "drawStyle" "bars"
          "barAlignment" 0
          "lineInterpolation" "linear"
          "barWidthFactor" 0.6
          "fillOpacity" 80
          "gradientMode" "none"
          "hideFrom" (dict
            "tooltip" false
            "viz" false
            "legend" false
          )
          "lineWidth" 1
          "pointSize" 5
          "scaleDistribution" (dict "type" "linear")
          "showPoints" "never"
          "spanNulls" false
          "stacking" (dict "group" "A" "mode" "none")
          "thresholdsStyle" (dict "mode" "off")
        )
      )
      "overrides" (list
        (dict
          "matcher" (dict "id" "byFrameRefID" "options" "A")
          "properties" (list
            (dict
              "id" "color"
              "value" (dict "mode" "fixed" "fixedColor" "green")
            )
          )
        )
        (dict
          "matcher" (dict "id" "byFrameRefID" "options" "B")
          "properties" (list
            (dict
              "id" "color"
              "value" (dict "mode" "fixed" "fixedColor" "red")
            )
          )
        )
      )
    )
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a stat panel showing the last successful run of a cronjob.
Expects a dict with keys: global, cronJob
*/}}
{{- define "stack.grafanaDashboard.charts.cronJobLastSuccessfulRun" -}}
{{- $global := .global -}}
{{- $cronJob := .cronJob -}}
{{- $cronJobFullname := include "service.fullname" $cronJob -}}
{{- $lastSuccessQuery := printf "max(kube_job_status_completion_time{namespace=\"$namespace\", job_name=~\"%s-.*\"} > 0) * 1000" $cronJobFullname -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 6)
    "options" (dict
      "colorMode" "value"
      "graphMode" "none"
      "justifyMode" "auto"
      "orientation" "auto"
      "reduceOptions" (dict
        "calcs" (list "lastNotNull")
        "fields" ""
        "values" false
      )
      "textMode" "value_and_name"
      "showPercentChange" false
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $lastSuccessQuery
        "legendFormat" "Last Successful Run"
        "range" false
        "instant" true
        "refId" "A"
      )
    )
    "title" "Last Successful Run"
    "type" "stat"
    "fieldConfig" (dict
      "defaults" (dict
        "unit" "dateTimeFromNow"
        "noValue" "No completions found"
        "mappings" (list
          (dict
            "type" "special"
            "options" (dict
              "match" "null"
              "result" (dict
                "text" "No completions"
                "color" "orange"
              )
            )
          )
        )
        "thresholds" (dict
          "mode" "absolute"
          "steps" (list
            (dict "color" "green" "value" nil)
          )
        )
      )
    )
-}}
{{- $panelDict | toYaml -}}
{{- end -}}

{{/*
Create a stat panel showing the average duration of cronjob runs.
Expects a dict with keys: global, cronJob
*/}}
{{- define "stack.grafanaDashboard.charts.cronJobAverageDuration" -}}
{{- $global := .global -}}
{{- $cronJob := .cronJob -}}
{{- $cronJobFullname := include "service.fullname" $cronJob -}}
{{- $avgDurationQuery := printf "avg(kube_job_status_completion_time{namespace=\"$namespace\", job_name=~\"%s-.*\"} - kube_job_status_start_time{namespace=\"$namespace\", job_name=~\"%s-.*\"})" $cronJobFullname $cronJobFullname -}}
{{- $panelDict := dict
    "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
    "gridPos" (dict "h" 8 "w" 6)
    "options" (dict
      "colorMode" "value"
      "graphMode" "area"
      "justifyMode" "auto"
      "orientation" "auto"
      "reduceOptions" (dict
        "calcs" (list "lastNotNull")
        "fields" ""
        "values" false
      )
      "textMode" "value_and_name"
      "showPercentChange" false
    )
    "pluginVersion" "12.1.0"
    "targets" (list
      (dict
        "datasource" (dict "type" "prometheus" "uid" $global.Values.global.grafanaDashboard.datasources.prometheus.uid)
        "editorMode" "code"
        "expr" $avgDurationQuery
        "legendFormat" "Average Duration"
        "range" true
        "refId" "A"
      )
    )
    "title" "Average Job Duration"
    "type" "stat"
    "fieldConfig" (dict
      "defaults" (dict
        "unit" "s"
        "noValue" "No data"
        "decimals" 2
        "thresholds" (dict
          "mode" "absolute"
          "steps" (list
            (dict "color" "green" "value" nil)
            (dict "color" "yellow" "value" 60)
            (dict "color" "red" "value" 300)
          )
        )
      )
    )
-}}
{{- $panelDict | toYaml -}}
{{- end -}}
