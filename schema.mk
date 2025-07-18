
.PHONY: update-schema
update-schema:
	helm schema --values values.yaml --indent 2 --schema-root.id argo.helm.charts/${PWD##*/} --schema-root.title ${PWD##*/} --no-additional-properties
