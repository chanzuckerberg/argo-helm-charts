{{- define "escape" -}}
{{ printf "{{ %s }}" . }}
{{- end }}