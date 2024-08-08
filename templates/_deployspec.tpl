{{- define "containerspec" -}}
- name: {{ .Values.app.name }}
  image: "{{ .Values.app.image }}:{{ .Values.app.tag }}"  # nginx:1.21.6
  ports:
  - containerPort: {{ .Values.app.containerPort }} # 80
  volumeMounts:
  - name: {{ .Values.app.name }}-config-volume
    mountPath: /usr/share/nginx/html/index.html
    subPath: index.html
{{- end -}}


