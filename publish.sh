#!/bin/sh
helm package basic --destination .
helm repo index . --url https://github.com/chanzuckerberg/argo-helm-charts/blob/main