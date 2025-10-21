# Changelog

## [0.7.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.7.0...grafana-v0.7.1) (2025-10-21)


### Misc

* force patch release to include recent maintenance ([#297](https://github.com/chanzuckerberg/argo-helm-charts/issues/297)) ([b362da1](https://github.com/chanzuckerberg/argo-helm-charts/commit/b362da15c6a05481a2a4b416c9b46ee36debfa83))

## [0.7.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.6.4...grafana-v0.7.0) (2025-09-05)


### Features

* add cloudwatch datasource to grafana chart ([#262](https://github.com/chanzuckerberg/argo-helm-charts/issues/262)) ([c5e9a7c](https://github.com/chanzuckerberg/argo-helm-charts/commit/c5e9a7c3a348e2f0cd8f762e2ce5a951e89a2979))

## [0.6.4](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.6.3...grafana-v0.6.4) (2025-08-05)


### Bug Fixes

* Remove grafana.ini key ([#258](https://github.com/chanzuckerberg/argo-helm-charts/issues/258)) ([b6870df](https://github.com/chanzuckerberg/argo-helm-charts/commit/b6870dff85cb84da3b4d89bffebb16616cca5a2a))

## [0.6.3](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.6.2...grafana-v0.6.3) (2025-08-05)


### Bug Fixes

* formatting for grafana helm ([#256](https://github.com/chanzuckerberg/argo-helm-charts/issues/256)) ([515ada3](https://github.com/chanzuckerberg/argo-helm-charts/commit/515ada3147be434ff8fe87b22032b0debe39527b))

## [0.6.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.6.1...grafana-v0.6.2) (2025-08-05)


### Bug Fixes

* Remove if statement for allow_embedding ([#254](https://github.com/chanzuckerberg/argo-helm-charts/issues/254)) ([da5eedc](https://github.com/chanzuckerberg/argo-helm-charts/commit/da5eedcf1e294cf78dd3296a0a70b34501c3fcee))

## [0.6.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.6.0...grafana-v0.6.1) (2025-08-04)


### Bug Fixes

* Change allow_embedding to be of type string ([#251](https://github.com/chanzuckerberg/argo-helm-charts/issues/251)) ([21d4921](https://github.com/chanzuckerberg/argo-helm-charts/commit/21d492112e0cba5dcd261012188820d0df9907fe))

## [0.6.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.5.0...grafana-v0.6.0) (2025-08-04)


### Features

* Allow_embedding for grafana helm chart ([#249](https://github.com/chanzuckerberg/argo-helm-charts/issues/249)) ([42d724e](https://github.com/chanzuckerberg/argo-helm-charts/commit/42d724eaa0a21797d517b05b643f06884d892c92))

## [0.5.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-v0.4.0...grafana-v0.5.0) (2025-07-21)


### Features

* Enable Grafana version selection through Grafana Operator ([#242](https://github.com/chanzuckerberg/argo-helm-charts/issues/242)) ([5b0f5d2](https://github.com/chanzuckerberg/argo-helm-charts/commit/5b0f5d2f10449b84b9829e6a490ebf2faf400a1f))
* ServiceAccount for grafana annotations ([#245](https://github.com/chanzuckerberg/argo-helm-charts/issues/245)) ([1c8a848](https://github.com/chanzuckerberg/argo-helm-charts/commit/1c8a84866917ea2b143a8709cf92fcbe221ac3ce))


### Bug Fixes

* Specify grafana image on a container (baseImage is not supported) ([#244](https://github.com/chanzuckerberg/argo-helm-charts/issues/244)) ([2f634a1](https://github.com/chanzuckerberg/argo-helm-charts/commit/2f634a1b2d8f5c6f86cd89255a5afd574bdb677c))

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
