# Changelog

## [0.4.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.3.0...grafana-v0.4.0) (2025-06-04)


### Features

* allow specifying extra volume mounts ([#230](https://github.com/chanzuckerberg/argo-helm-charts/issues/230)) ([e0f7821](https://github.com/chanzuckerberg/argo-helm-charts/commit/e0f782110047000e6dab2527ada3b09e3eeae045))
* Migrate and update CZI dashboards into the chart itself ([#233](https://github.com/chanzuckerberg/argo-helm-charts/issues/233)) ([0bac583](https://github.com/chanzuckerberg/argo-helm-charts/commit/0bac583e7e6ffa72fcd73f38d3afc63984e5be0b))


### Bug Fixes

* use integer for defaultMode ([#232](https://github.com/chanzuckerberg/argo-helm-charts/issues/232)) ([27b8f69](https://github.com/chanzuckerberg/argo-helm-charts/commit/27b8f69dc7be77a434a598f7ebdaf26768a8c61b))

## [0.3.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.2.0...grafana-v0.3.0) (2025-04-28)


### Features

* Allow env variables to be passed into Grafana instances ([#224](https://github.com/chanzuckerberg/argo-helm-charts/issues/224)) ([8f65e4d](https://github.com/chanzuckerberg/argo-helm-charts/commit/8f65e4da2ad0efa1014f8be51a0eb54721d64770))
* Support multiple grafanas in the same namespace ([#221](https://github.com/chanzuckerberg/argo-helm-charts/issues/221)) ([1198849](https://github.com/chanzuckerberg/argo-helm-charts/commit/119884942da8504bb34a5f927eba7934e152f3f6))


### Bug Fixes

* Fix PEP access to argus Grafanas ([#225](https://github.com/chanzuckerberg/argo-helm-charts/issues/225)) ([ac836b1](https://github.com/chanzuckerberg/argo-helm-charts/commit/ac836b1a109d75888f0b7e7ac00008bc4ca5d825))

## [0.2.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.1.0...grafana-v0.2.0) (2025-04-08)


### Features

* Conditionally enable/disable grafana to allow gradual transition ([#206](https://github.com/chanzuckerberg/argo-helm-charts/issues/206)) ([bf1c9f2](https://github.com/chanzuckerberg/argo-helm-charts/commit/bf1c9f274e8db275b30286601966a85550814898))
* Grafana chart (deploys Grafana using Grafana Operator) ([#201](https://github.com/chanzuckerberg/argo-helm-charts/issues/201)) ([7e7e4c4](https://github.com/chanzuckerberg/argo-helm-charts/commit/7e7e4c457ffe97a952fdfcd2ac0376a2b9c94cd3))
