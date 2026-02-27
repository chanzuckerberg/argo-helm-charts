# Changelog

## [0.6.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-alloy-v0.5.0...grafana-alloy-v0.6.0) (2026-02-27)


### Features

* Enable tailscale metric scraping ([#386](https://github.com/chanzuckerberg/argo-helm-charts/issues/386)) ([86bc9fe](https://github.com/chanzuckerberg/argo-helm-charts/commit/86bc9fe2d8d0ef82ba0c222ea6fcd611537c57ce))

## [0.5.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-alloy-v0.4.0...grafana-alloy-v0.5.0) (2026-02-17)


### ⚠ BREAKING CHANGES

* Switched grafana alloy kube-state-metrics label to selector ([#375](https://github.com/chanzuckerberg/argo-helm-charts/issues/375))
* Add metrics and logs support to grafana-alloy chart [DO NOT MERGE]  ([#354](https://github.com/chanzuckerberg/argo-helm-charts/issues/354))

### Features

* Add metrics and logs support to grafana-alloy chart [DO NOT MERGE]  ([#354](https://github.com/chanzuckerberg/argo-helm-charts/issues/354)) ([ca28853](https://github.com/chanzuckerberg/argo-helm-charts/commit/ca288534328f9d04c8b86820cc0ca7d2c29fa7c7))
* Allow grafana-alloy to scrape service endpoints ([#380](https://github.com/chanzuckerberg/argo-helm-charts/issues/380)) ([a11c9bc](https://github.com/chanzuckerberg/argo-helm-charts/commit/a11c9bcd9d74743ad221ed2943f663ceffcc8977))
* Enable basic auth support for prometheus remote write endpoints ([#372](https://github.com/chanzuckerberg/argo-helm-charts/issues/372)) ([c7566a2](https://github.com/chanzuckerberg/argo-helm-charts/commit/c7566a2f87db27160074281f998541c94e81622b))
* enable Beyla for ebpf in Grafana Alloy ([#363](https://github.com/chanzuckerberg/argo-helm-charts/issues/363)) ([f4eff06](https://github.com/chanzuckerberg/argo-helm-charts/commit/f4eff0659ac6916c7e17ce9a9d767a4300abfd8d))
* Enable grafana alloy to scrape kubelet and cadvisor metrics ([#376](https://github.com/chanzuckerberg/argo-helm-charts/issues/376)) ([760a632](https://github.com/chanzuckerberg/argo-helm-charts/commit/760a6326906db70f412e8e76cf40c70f79d36cda))
* Extract all kuberentes node labels in grafana alloy ([#377](https://github.com/chanzuckerberg/argo-helm-charts/issues/377)) ([a069ba0](https://github.com/chanzuckerberg/argo-helm-charts/commit/a069ba01ecb9a0346d088ee7e80fc91d92291bcd))
* Retain kubernetes_build_info region label only ([#379](https://github.com/chanzuckerberg/argo-helm-charts/issues/379)) ([0f43663](https://github.com/chanzuckerberg/argo-helm-charts/commit/0f43663f7c0cb8fe5e609529507d3daccc0639f3))
* Scrape kube state metrics in grafana alloy ([#374](https://github.com/chanzuckerberg/argo-helm-charts/issues/374)) ([2f8e8d9](https://github.com/chanzuckerberg/argo-helm-charts/commit/2f8e8d99c201d0ea459920bfcfaf21cf9d4262dc))
* Support log level for alloy and beyla ([#373](https://github.com/chanzuckerberg/argo-helm-charts/issues/373)) ([14ccc84](https://github.com/chanzuckerberg/argo-helm-charts/commit/14ccc8445ad4aa801560468e07016391653d39cc))
* Switched grafana alloy kube-state-metrics label to selector ([#375](https://github.com/chanzuckerberg/argo-helm-charts/issues/375)) ([ad4378f](https://github.com/chanzuckerberg/argo-helm-charts/commit/ad4378fc00a40375b0bfa082d77ff7c7ab92516a))


### Bug Fixes

* allow debug mode for beyla ([#366](https://github.com/chanzuckerberg/argo-helm-charts/issues/366)) ([103bd00](https://github.com/chanzuckerberg/argo-helm-charts/commit/103bd0078cadd437f9429c940cbbfdf9e37edafd))
* experimenting different beyla config ([#368](https://github.com/chanzuckerberg/argo-helm-charts/issues/368)) ([95f3868](https://github.com/chanzuckerberg/argo-helm-charts/commit/95f386823cf96d93726f1aa36eab1a7b423afccc))
* Fix alloy namespace labels for cadvisor and kube-state-metrics metrics ([#381](https://github.com/chanzuckerberg/argo-helm-charts/issues/381)) ([f31df4e](https://github.com/chanzuckerberg/argo-helm-charts/commit/f31df4e14f520e1dc02f6d774764fcc361f72aaf))
* Fix kubelet metrics label extraction (we are looking for topology labels) ([#378](https://github.com/chanzuckerberg/argo-helm-charts/issues/378)) ([073a0b3](https://github.com/chanzuckerberg/argo-helm-charts/commit/073a0b39ca61aab2e1f7e86638a03e6a2a601c07))
* grafana beyla config type error ([#364](https://github.com/chanzuckerberg/argo-helm-charts/issues/364)) ([773fc44](https://github.com/chanzuckerberg/argo-helm-charts/commit/773fc44ea0da1143592f6c5d69fdd01fb059deae))
* grafana metric output ([#365](https://github.com/chanzuckerberg/argo-helm-charts/issues/365)) ([41c4e6b](https://github.com/chanzuckerberg/argo-helm-charts/commit/41c4e6baad28869733a31c837947dd6eaa9cdf7a))
* type mismatch ([#367](https://github.com/chanzuckerberg/argo-helm-charts/issues/367)) ([9ac22fd](https://github.com/chanzuckerberg/argo-helm-charts/commit/9ac22fd6c04521526f4ce1604f613057aeaf1f74))

## [0.4.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-alloy-v0.3.0...grafana-alloy-v0.4.0) (2026-01-15)


### Features

* Parametrize basic auth credential environment variable name for grafana alloy ([#352](https://github.com/chanzuckerberg/argo-helm-charts/issues/352)) ([92c1fad](https://github.com/chanzuckerberg/argo-helm-charts/commit/92c1fad276bbc81834ec4428a39ef971f8ada951))

## [0.3.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-alloy-v0.2.0...grafana-alloy-v0.3.0) (2026-01-05)


### Features

* Disable central loki by default in grafana-alloy chart ([#348](https://github.com/chanzuckerberg/argo-helm-charts/issues/348)) ([a34b484](https://github.com/chanzuckerberg/argo-helm-charts/commit/a34b484a8a2dec5a6bca993830ba0ed74024a0c8))

## [0.2.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/grafana-alloy-v0.1.0...grafana-alloy-v0.2.0) (2026-01-05)


### Features

* Grafana Alloy chart ([#347](https://github.com/chanzuckerberg/argo-helm-charts/issues/347)) ([1fd6265](https://github.com/chanzuckerberg/argo-helm-charts/commit/1fd6265be1589345db9b8623c8b2b8569eb2712d))
