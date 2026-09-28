{{- define "platform-pulse.name" -}}
{{- .Chart.Name }}
{{- end }}

{{- define "platform-pulse.selectorLabels" -}}
app.kubernetes.io/name: {{ include "platform-pulse.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "platform-pulse.labels" -}}
{{ include "platform-pulse.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
