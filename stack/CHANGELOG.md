# Changelog

## [1.1.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.0.0...stack-v1.1.0) (2024-06-26)


### Features

* bump version ([#34](https://github.com/chanzuckerberg/argo-helm-charts/issues/34)) ([cc0aaa9](https://github.com/chanzuckerberg/argo-helm-charts/commit/cc0aaa9405533d6c4ef08dad2abd1490232e68f4))

## 1.0.0 (2024-06-26)


### Features

* Ability to provide environment-level and stack-level settings to all containers ([92d2106](https://github.com/chanzuckerberg/argo-helm-charts/commit/92d21066cbabb2bb1df76dda29cdd1e7d722c752))
* add support for deploymentStage, progressDeadlineSeconds, and hierarchical env vars ([#29](https://github.com/chanzuckerberg/argo-helm-charts/issues/29)) ([4c262b4](https://github.com/chanzuckerberg/argo-helm-charts/commit/4c262b451333a2271ef8610f4ea5fd889d2848f2))
* Add support for init containers ([abbd4d9](https://github.com/chanzuckerberg/argo-helm-charts/commit/abbd4d9c7a28671c210d62536438a792c0d8a647))
* Add the ability to override args and command ([24bae87](https://github.com/chanzuckerberg/argo-helm-charts/commit/24bae876f680193ed686cb9bf4aea4a190877e2f))
* allow non-sensitive env vars to be specified via Helm ([#20](https://github.com/chanzuckerberg/argo-helm-charts/issues/20)) ([151503c](https://github.com/chanzuckerberg/argo-helm-charts/commit/151503ce994cb3ae8b7b75dee3d9234396d94e18))
* allow specifying arbitrary envFrom in values.yaml ([#23](https://github.com/chanzuckerberg/argo-helm-charts/issues/23)) ([0598c79](https://github.com/chanzuckerberg/argo-helm-charts/commit/0598c792d8b064aade87b1dc688026bbcc432d88))
* allow specifying init container tag in Stack helm chart ([#25](https://github.com/chanzuckerberg/argo-helm-charts/issues/25)) ([265194e](https://github.com/chanzuckerberg/argo-helm-charts/commit/265194e0a04b3593a41593fbb2bc84163ee8cdf3))
* create context ConfigMap in Stack helm chart ([#26](https://github.com/chanzuckerberg/argo-helm-charts/issues/26)) ([53f66ed](https://github.com/chanzuckerberg/argo-helm-charts/commit/53f66ed8a52d50b52a4fe2e349132d3fcdc34937))
* Default setting for nodeSelector (kubernetes.io/arch: arm64) ([d875f8e](https://github.com/chanzuckerberg/argo-helm-charts/commit/d875f8e5fbffeff0fb0c2b5a1626c56b998c38ce))
* DNS Policy support ([1507df8](https://github.com/chanzuckerberg/argo-helm-charts/commit/1507df8b4606ead12b38c4f93b654d39e96c1dae))
* Environment and stack level context configmap references ([4ffeb2b](https://github.com/chanzuckerberg/argo-helm-charts/commit/4ffeb2b3d9397f3bb5eb4e50393205c3597314c6))
* Parametrize all health probes ([c25e509](https://github.com/chanzuckerberg/argo-helm-charts/commit/c25e5097034385ab8402f12d5222db56de536a49))
* RestartPolicy support ([840e4ad](https://github.com/chanzuckerberg/argo-helm-charts/commit/840e4ad6347af9c6fd5105fa446a613a4bb2e842))
* Reuse configuration block ([ef0365f](https://github.com/chanzuckerberg/argo-helm-charts/commit/ef0365f611eaff8f51395dd34fa52512074a7c9b))
* Stack helm chart ([c98dfb5](https://github.com/chanzuckerberg/argo-helm-charts/commit/c98dfb5b6c9c943710f0f9641e97392a9643f562))
* Stack helm chart: Add support for pod disruption budgets ([71e033b](https://github.com/chanzuckerberg/argo-helm-charts/commit/71e033b3482c7ccf0d519b81b476d0d0e2d38ef2))
* Stack helm chart: Node affinity/pod antiaffinity support ([1e47ec3](https://github.com/chanzuckerberg/argo-helm-charts/commit/1e47ec315c67cd3121528b4424c571e51cccefe3))
* support cronjob specification through values.yaml ([#24](https://github.com/chanzuckerberg/argo-helm-charts/issues/24)) ([b2db7e7](https://github.com/chanzuckerberg/argo-helm-charts/commit/b2db7e74a5f955e00941320dd5e33263c3479e2b))
* Support multiple containers per pod (sidecars) ([ec56f49](https://github.com/chanzuckerberg/argo-helm-charts/commit/ec56f49f68fd260cba1f390e3c53e4a556b3d26d))
* Update helm chart to include ExternalSecret CRDs for env-level and stack level ([#19](https://github.com/chanzuckerberg/argo-helm-charts/issues/19)) ([6a6ad81](https://github.com/chanzuckerberg/argo-helm-charts/commit/6a6ad813610c835973a8fac82fc2786651c15908))


### Bug Fixes

* Fix environment indentation for main container ([6717dae](https://github.com/chanzuckerberg/argo-helm-charts/commit/6717dae96fd39cc51c6b3b18c6b03d716e486c6a))
* Fix startup probe ([797eeeb](https://github.com/chanzuckerberg/argo-helm-charts/commit/797eeebf96a4156bac61868125bef2ebfae02845))
* Give context settings higher priority over user managed configuration settings ([f3dda74](https://github.com/chanzuckerberg/argo-helm-charts/commit/f3dda7493f349135af28285ba1746892adf154e7))
* make nonsensitive env var injection work ([#22](https://github.com/chanzuckerberg/argo-helm-charts/issues/22)) ([9ffd57b](https://github.com/chanzuckerberg/argo-helm-charts/commit/9ffd57b5105d5aa3fc8750c8a5100eb31c0dd948))
* Normalized the resource limit (memory) ([4baf35e](https://github.com/chanzuckerberg/argo-helm-charts/commit/4baf35e283e5f9cf1a121973f0e915f1bc2cc306))
* prevent creating secret if name is empty ([#21](https://github.com/chanzuckerberg/argo-helm-charts/issues/21)) ([197edd7](https://github.com/chanzuckerberg/argo-helm-charts/commit/197edd7f0ef4d8c451ae422b22f0ed369300e244))
* Quoted default resource values ([b3c89c8](https://github.com/chanzuckerberg/argo-helm-charts/commit/b3c89c8499004303c1241eb799634523ed284596))
* Remove pod Anti-affinity ([71128de](https://github.com/chanzuckerberg/argo-helm-charts/commit/71128de607c312a55f566845290d23e1d4037266))
* Remove stack NOTES.txt ([5e0fb26](https://github.com/chanzuckerberg/argo-helm-charts/commit/5e0fb2699137ee951ecb4ac3285a01387b3d8f9d))
* use correct stack short name ([#28](https://github.com/chanzuckerberg/argo-helm-charts/issues/28)) ([a7dd83d](https://github.com/chanzuckerberg/argo-helm-charts/commit/a7dd83da18788da5320ad531af1126b4562c40ad))


### Misc

* add stack to ingress host ([#27](https://github.com/chanzuckerberg/argo-helm-charts/issues/27)) ([36f3e51](https://github.com/chanzuckerberg/argo-helm-charts/commit/36f3e51423260a4f7b2d3115911ac7b1afbee749))
