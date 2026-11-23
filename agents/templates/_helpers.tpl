{{- define "agents.labels" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
{{- $stackName := dig "argusMetadata" "stackName" "" .Values.global }}
{{- if $stackName }}
agents.czi.team/stack: {{ $stackName }}
{{- end }}
{{- end }}

{{- define "agents.environment" -}}
{{- $all := concat (default (list) .root.Values.global.env) (default (list) .agent.env) }}
{{- $latest := dict }}
{{- range $variable := $all }}
{{- $_ := set $latest $variable.name $variable }}
{{- end }}
{{- $environment := list }}
{{- $emitted := dict }}
{{- range $variable := $all }}
{{- if not (hasKey $emitted $variable.name) }}
{{- $_ := set $emitted $variable.name true }}
{{- $environment = append $environment (get $latest $variable.name) }}
{{- end }}
{{- end }}
{{- toYaml $environment }}
{{- end }}

{{- define "agents.environmentFrom" -}}
{{- $sources := list }}
{{- $global := .root.Values.global }}
{{- range $path := list "clusterSecret" "clusterCLISecret" "envSecret" "stackSecret" }}
{{- $name := dig "appSecrets" $path "secretName" "" $global }}
{{- if $name }}
{{- $sources = append $sources (dict "secretRef" (dict "name" $name "optional" true)) }}
{{- end }}
{{- end }}
{{- $envContext := dig "appContext" "envContextConfigMapName" "" $global }}
{{- if $envContext }}
{{- $sources = append $sources (dict "configMapRef" (dict "name" $envContext "optional" true)) }}
{{- end }}
{{- $stackContext := dig "appContext" "stackContextConfigMapName" "" $global }}
{{- if $stackContext }}
{{- $sources = append $sources (dict "configMapRef" (dict "name" $stackContext "optional" true)) }}
{{- end }}
{{- $sources = concat $sources (default (list) .agent.envFrom) }}
{{- toYaml $sources }}
{{- end }}
