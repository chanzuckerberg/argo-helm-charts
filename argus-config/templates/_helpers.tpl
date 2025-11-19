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