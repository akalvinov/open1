{{/*
Labels
*/}}
{{- define "app.labels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "app.stats-labels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-stats
app.kubernetes.io/instance: {{ .Release.Name }}-stats
{{- end }}

{{- define "app.migration-labels" -}}
app.kubernetes.io/name: {{ .Release.Name }}-migration
app.kubernetes.io/instance: {{ .Release.Name }}-migration
{{- end }}

{{- define "namePrefix" -}}
{{- if (eq .Values.namespace "stage") -}}
{{- .Release.Name -}}
{{- else -}}
{{- "api" -}}
{{- end -}}
{{- end -}}