#!/bin/sh
helm package stack --destination .
helm repo index . --url https://github.com/chanzuckerberg/argo-helm-charts/blob/main