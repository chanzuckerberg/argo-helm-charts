
.PHONY: update-schema

CHART_NAME := $(shell basename $(PWD))

update-schema:
	helm schema --values values.yaml --indent 2 --schema-root.id argo.helm.charts/$(CHART_NAME) --schema-root.title $(CHART_NAME)
