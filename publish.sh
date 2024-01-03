#!/bin/sh
helm package basic --destination index
helm repo index index --url git@github.com:chanzuckerberg/argo-helm-charts.git/index