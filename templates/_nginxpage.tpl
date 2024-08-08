{{- define "nginxpage" -}}
<!DOCTYPE html>
<html>
<head>
    <title>{{ .Values.nginx.title }}</title>
</head>
<body>
    <h1>{{ .Values.nginx.heading }}</h1>
    <p>Testing with new image. {{ .Values.app.namespace }}</p>
</body>
</html>
{{- end -}}