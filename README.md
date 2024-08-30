[![Lint and Test Charts](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/chart-testing.yaml/badge.svg)](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/chart-testing.yaml)
![chart-testing workflow](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/chart-testing.yaml/badge.svg)
![chart-testing branch parameter gha-cluster-test](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/chart-testing.yaml/badge.svg?branch=gha-cluster-test)
![chart-testing event parameter](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/chart-testing.yaml/badge.svg?event=push)
![unittest workflow](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/unittest.yaml/badge.svg)
![unittest branch parameter gha-cluster-test](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/unittest.yaml/badge.svg?branch=gha-cluster-test)
![unittest event parameter](https://github.com/chanzuckerberg/argo-helm-charts/actions/workflows/unittest.yaml/badge.svg?event=push)
### Run tests locally
1. `helm plugin install https://github.com/helm-unittest/helm-unittest.git`
2. from the root: run `helm unittest stack`
