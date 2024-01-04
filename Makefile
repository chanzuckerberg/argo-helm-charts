CHART_NAME = basic
GH_PAGES = https://chanzuckerberg.github.io/argo-helm-charts
COMMIT_MSG = "Chart update"
CURRENT_BRANCH = "main"

.PHONY: help \
            helm-build

all: helm-build

helm-build:
	helm package basic --destination .
	helm repo index ./ --url ${GH_PAGES}
	mv ./index.yaml /tmp/
	mv ./${CHART_NAME}*.tgz /tmp/
	git checkout gh-pages
	cp /tmp/${CHART_NAME}*.tgz .
	cp /tmp/index.yaml .
	git add index.yaml *.tgz
	git commit -m ${COMMIT_MSG}
	git push origin gh-pages
	git checkout ${CURRENT_BRANCH}

help:
	@echo "Available commands:\n"
	@echo "- helm-build