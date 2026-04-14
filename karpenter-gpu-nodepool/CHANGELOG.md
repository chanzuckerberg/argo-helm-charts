# Changelog

## [0.4.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/karpenter-gpu-nodepool-v0.4.0...karpenter-gpu-nodepool-v0.4.1) (2026-04-14)


### Bug Fixes

* re-apply gpu-not-ready taint on startup and wait for stable GPU health ([#434](https://github.com/chanzuckerberg/argo-helm-charts/issues/434)) ([14bb299](https://github.com/chanzuckerberg/argo-helm-charts/commit/14bb299a3166036c44d802c2859c7eb1c16a5fe6))

## [0.4.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/karpenter-gpu-nodepool-v0.3.0...karpenter-gpu-nodepool-v0.4.0) (2026-04-07)


### Features

* add nodepool limits and expand GPU instance families ([#429](https://github.com/chanzuckerberg/argo-helm-charts/issues/429)) ([4732321](https://github.com/chanzuckerberg/argo-helm-charts/commit/4732321998d1219e5730b82ff06e5d6c76f9680d))
* Add support for gpu node readiness ([#433](https://github.com/chanzuckerberg/argo-helm-charts/issues/433)) ([02839eb](https://github.com/chanzuckerberg/argo-helm-charts/commit/02839ebde2e162ce2877217f4b2c727c555c4887))
* Enable DCGM exporter for the karpenter-gpu-nodepool ([#431](https://github.com/chanzuckerberg/argo-helm-charts/issues/431)) ([6a132bd](https://github.com/chanzuckerberg/argo-helm-charts/commit/6a132bd956d31828bb3b99e1a509e9241db1fd40))

## [0.3.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/karpenter-gpu-nodepool-v0.2.0...karpenter-gpu-nodepool-v0.3.0) (2026-01-05)


### Features

* Add priority class to nvidia driver ([#343](https://github.com/chanzuckerberg/argo-helm-charts/issues/343)) ([a7c977c](https://github.com/chanzuckerberg/argo-helm-charts/commit/a7c977caf5cb8e147892256d39749757c6ffecf8))
* Node affinity support for nvidia driver ([#345](https://github.com/chanzuckerberg/argo-helm-charts/issues/345)) ([09050d6](https://github.com/chanzuckerberg/argo-helm-charts/commit/09050d6d87143107c212e8c264bf862a93973877))

## [0.2.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/karpenter-gpu-nodepool-v0.1.0...karpenter-gpu-nodepool-v0.2.0) (2025-12-10)


### Features

* Karpenter GPU nodepool ([#341](https://github.com/chanzuckerberg/argo-helm-charts/issues/341)) ([5ed05ef](https://github.com/chanzuckerberg/argo-helm-charts/commit/5ed05eff6d1f938b5a6892167ef7c5405d3ee68b))
