# Changelog

## [1.6.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.5.1...argus-config-v1.6.0) (2025-11-12)


### Features

* add a default grafana dashboard to the "stack" helm chart ([#309](https://github.com/chanzuckerberg/argo-helm-charts/issues/309)) ([1f5c6ca](https://github.com/chanzuckerberg/argo-helm-charts/commit/1f5c6cafa932fb1f7275d067b4093b851e0c549a))

## [1.5.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.5.0...argus-config-v1.5.1) (2025-09-23)


### Bug Fixes

* update secret reference in helm template for cluster CLI secrets ([#280](https://github.com/chanzuckerberg/argo-helm-charts/issues/280)) ([c4f8a39](https://github.com/chanzuckerberg/argo-helm-charts/commit/c4f8a391c94074efe87f2c2baeb7d8aea6d87f7e))

## [1.5.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.4.2...argus-config-v1.5.0) (2025-09-23)


### Features

* update helm chart to include a new envFrom section tf cluster-wide secrets ([#275](https://github.com/chanzuckerberg/argo-helm-charts/issues/275)) ([25a4289](https://github.com/chanzuckerberg/argo-helm-charts/commit/25a42899346a561d44ea5667421af529126f70af))

## [1.4.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.4.1...argus-config-v1.4.2) (2025-04-28)


### Bug Fixes

* quote the argus context values ([#227](https://github.com/chanzuckerberg/argo-helm-charts/issues/227)) ([eeba31e](https://github.com/chanzuckerberg/argo-helm-charts/commit/eeba31ebb93d116e0e8dc7a9e72f089947bee1c0))

## [1.4.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.4.0...argus-config-v1.4.1) (2025-03-26)


### Bug Fixes

* fixed typo in argus config chart ([#210](https://github.com/chanzuckerberg/argo-helm-charts/issues/210)) ([1cb5e12](https://github.com/chanzuckerberg/argo-helm-charts/commit/1cb5e1254ea873353d3d62db774fb3a2be3dd211))

## [1.4.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.3.0...argus-config-v1.4.0) (2025-03-25)


### Features

* Grafana chart (deploys Grafana using Grafana Operator) ([#201](https://github.com/chanzuckerberg/argo-helm-charts/issues/201)) ([7e7e4c4](https://github.com/chanzuckerberg/argo-helm-charts/commit/7e7e4c457ffe97a952fdfcd2ac0376a2b9c94cd3))
* pass in argo built-in build env ([#207](https://github.com/chanzuckerberg/argo-helm-charts/issues/207)) ([147fba6](https://github.com/chanzuckerberg/argo-helm-charts/commit/147fba65a5bf7230668625a5fafe50d057ef8f53))

## [1.3.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.2.3...argus-config-v1.3.0) (2025-03-15)


### Features

* use more flexible tool for generating helm values schema ([#200](https://github.com/chanzuckerberg/argo-helm-charts/issues/200)) ([2a16bda](https://github.com/chanzuckerberg/argo-helm-charts/commit/2a16bda9cef52c527b23dfa57518fd09b75d1b9f))

## [1.2.3](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.2.2...argus-config-v1.2.3) (2024-10-25)


### Misc

* generate readme/schemas for changes charts ([#156](https://github.com/chanzuckerberg/argo-helm-charts/issues/156)) ([fb8c9ad](https://github.com/chanzuckerberg/argo-helm-charts/commit/fb8c9adfeaac1c24f6374a0d62bb7d070649c56d))

## [1.2.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.2.1...argus-config-v1.2.2) (2024-10-24)


### Bug Fixes

* allow env/stack secrets to override cluster-wide secrets ([#151](https://github.com/chanzuckerberg/argo-helm-charts/issues/151)) ([788fa09](https://github.com/chanzuckerberg/argo-helm-charts/commit/788fa09bcee21e04581c462c074ec41972e518b5))

## [1.2.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.2.0...argus-config-v1.2.1) (2024-09-05)


### Bug Fixes

* terraform and helm fighting over which values to use ([#97](https://github.com/chanzuckerberg/argo-helm-charts/issues/97)) ([0843dc2](https://github.com/chanzuckerberg/argo-helm-charts/commit/0843dc27a0a431385ba389382e84fd5864ed43fe))

## [1.2.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.1.0...argus-config-v1.2.0) (2024-08-30)


### Features

* create cluster secret references ([#92](https://github.com/chanzuckerberg/argo-helm-charts/issues/92)) ([205e427](https://github.com/chanzuckerberg/argo-helm-charts/commit/205e427911d35d6288b97d11abb1095f1dc04ce0))

## [1.1.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.0.2...argus-config-v1.1.0) (2024-08-20)


### Features

* fixed parsing private key ([#79](https://github.com/chanzuckerberg/argo-helm-charts/issues/79)) ([11c93be](https://github.com/chanzuckerberg/argo-helm-charts/commit/11c93be6661b61d8d16c624b97636af4522540ae))

## [1.0.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.0.1...argus-config-v1.0.2) (2024-07-19)


### Misc

* bump argus-config ([#48](https://github.com/chanzuckerberg/argo-helm-charts/issues/48)) ([b156d0e](https://github.com/chanzuckerberg/argo-helm-charts/commit/b156d0e0a480d68c1c67ef0828d562849022f148))

## [1.0.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/argus-config-v1.0.0...argus-config-v1.0.1) (2024-07-19)


### Misc

* set up release for argus-config ([#45](https://github.com/chanzuckerberg/argo-helm-charts/issues/45)) ([20ecbd5](https://github.com/chanzuckerberg/argo-helm-charts/commit/20ecbd5992a02402add713d98b869e85a41bbd75))

## 1.0.0 (2024-07-19)


### Features

* add argus-config chart ([#43](https://github.com/chanzuckerberg/argo-helm-charts/issues/43)) ([5dd200e](https://github.com/chanzuckerberg/argo-helm-charts/commit/5dd200e8373251410780264b34c26e1e823d9af9))
