{{- range service "envoy-proxy" }}{{.Address}}:{{.Port}}
{{end}}