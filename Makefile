CHART_NAME = basic
GH_PAGES_URL = https://chanzuckerberg.github.io/argo-helm-charts
GH_PAGES_BRANCH = gh_pages
COMMIT_MSG = "Chart update"
CURRENT_BRANCH = "main"

.PHONY: help \
            helm-build

all: helm-build

helm-build:
	helm package basic --destination .
	helm repo index ./ --url ${GH_PAGES_URL}
	mv ./index.yaml /tmp/
	mv ./${CHART_NAME}*.tgz /tmp/
	git checkout ${GH_PAGES_BRANCH}
	cp /tmp/${CHART_NAME}*.tgz .
	cp /tmp/index.yaml .
	git add index.yaml *.tgz
	git commit -m ${COMMIT_MSG}
	git push origin ${GH_PAGES_BRANCH}
	git checkout ${CURRENT_BRANCH}

help:
	@echo "Available commands:\n"
	@echo "- helm-build