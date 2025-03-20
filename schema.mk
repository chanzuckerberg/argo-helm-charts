
.PHONY: update-schema
update-schema:
	helm schema -input values.yaml -indent 2 -schemaRoot.id argo.helm.charts/$${PWD##*/} -schemaRoot.title $${PWD##*/} -schemaRoot.additionalProperties false
