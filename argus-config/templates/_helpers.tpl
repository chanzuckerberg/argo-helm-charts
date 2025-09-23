{{- define "envSecretName" -}}
{{ .Values.appSecrets.envSecret.secretName }}
{{ end }}

{{- define "service.configuration" -}}
{{- if or (or (or (or (ne (trim .Values.appSecrets.envSecret.secretName) "") (ne (trim .Values.appSecrets.envSecret.secretName) "")) (ne (trim .Values.appContext.envContextConfigMapName) "")) (ne (trim .Values.appContext.stackContextConfigMapName) "")) .Values.envFrom -}}
envFrom:
{{- if ne (trim .Values.appSecrets.clusterSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.appSecrets.clusterSecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appSecrets.clusterCLISecret.secretName) "" }}
- secretRef:
    name: {{ .Values.appSecrets.clusterCLISecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appSecrets.envSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.appSecrets.envSecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appSecrets.stackSecret.secretName) "" }}
- secretRef:
    name: {{ .Values.appSecrets.stackSecret.secretName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appContext.envContextConfigMapName) "" }}
- configMapRef:
    name: {{ .Values.appContext.envContextConfigMapName }}
    optional: true
{{- end }}
{{- if ne (trim .Values.appContext.stackContextConfigMapName) "" }}
- configMapRef:
    name: {{ .Values.appContext.stackContextConfigMapName }}
    optional: true
{{- end }}
{{- if .Values.envFrom }}
{{ toYaml .Values.envFrom }}
{{- end }}
{{- end }}
{{- end }}