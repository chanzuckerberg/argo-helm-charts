# Changelog

## [1.13.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.12.0...stack-v1.13.0) (2024-09-13)


### Features

* copy values from X-Auth to X-Forward ([#110](https://github.com/chanzuckerberg/argo-helm-charts/issues/110)) ([d413771](https://github.com/chanzuckerberg/argo-helm-charts/commit/d413771b4c51585c6d2c601c175f9004f4fed722))

## [1.12.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.11.1...stack-v1.12.0) (2024-09-13)


### Features

* by default include other idp helper headers ([#108](https://github.com/chanzuckerberg/argo-helm-charts/issues/108)) ([bbd7ef3](https://github.com/chanzuckerberg/argo-helm-charts/commit/bbd7ef3b3c5cecdf5e2634b7a2c65f2e74d90b14))

## [1.11.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.11.0...stack-v1.11.1) (2024-09-13)


### Bug Fixes

* missing headers set by oauth2_proxy ([#106](https://github.com/chanzuckerberg/argo-helm-charts/issues/106)) ([36e1444](https://github.com/chanzuckerberg/argo-helm-charts/commit/36e14441caac3a0c3e57e7be5580e86ce1e7b874))

## [1.11.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.10.3...stack-v1.11.0) (2024-09-09)


### Features

* Support shareProcessNamespace (defaults to false) ([#103](https://github.com/chanzuckerberg/argo-helm-charts/issues/103)) ([66853b0](https://github.com/chanzuckerberg/argo-helm-charts/commit/66853b0b79f57c4c168dcd73128d4fe47c30a284))


### Misc

* Increment chart version to 1.10.4 ([#105](https://github.com/chanzuckerberg/argo-helm-charts/issues/105)) ([a51d5ff](https://github.com/chanzuckerberg/argo-helm-charts/commit/a51d5ff5020b3a37bf82a5c8a4c91b8039dc6f22))

## [1.10.3](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.10.2...stack-v1.10.3) (2024-09-05)


### Bug Fixes

* make extra args an array ([#102](https://github.com/chanzuckerberg/argo-helm-charts/issues/102)) ([8bb6668](https://github.com/chanzuckerberg/argo-helm-charts/commit/8bb66688cc5b643ee3abe53fb05dd2ca70fc543b))
* unique domain names for oidcProxy per stack ([2f42b13](https://github.com/chanzuckerberg/argo-helm-charts/commit/2f42b136d8c2effd442ba0a3b85afdfeb422ac25))

## [1.10.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.10.1...stack-v1.10.2) (2024-09-05)


### Bug Fixes

* bump argus-config to fix fight between helm and terraform ([#99](https://github.com/chanzuckerberg/argo-helm-charts/issues/99)) ([3254ffb](https://github.com/chanzuckerberg/argo-helm-charts/commit/3254ffbffb071b8f7f3b135af548b9faa5e056c0))

## [1.10.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.10.0...stack-v1.10.1) (2024-08-30)


### Bug Fixes

* update argus-config version in the stack chart ([#95](https://github.com/chanzuckerberg/argo-helm-charts/issues/95)) ([d4db7e5](https://github.com/chanzuckerberg/argo-helm-charts/commit/d4db7e51822d86d1d51f5964f07a6e247c2a8aeb))

## [1.10.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.9.4...stack-v1.10.0) (2024-08-30)


### Features

* create cluster secret references ([#92](https://github.com/chanzuckerberg/argo-helm-charts/issues/92)) ([205e427](https://github.com/chanzuckerberg/argo-helm-charts/commit/205e427911d35d6288b97d11abb1095f1dc04ce0))

## [1.9.4](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.9.3...stack-v1.9.4) (2024-08-27)


### Bug Fixes

* service URL needs to be in the long form ([#90](https://github.com/chanzuckerberg/argo-helm-charts/issues/90)) ([a6f022f](https://github.com/chanzuckerberg/argo-helm-charts/commit/a6f022f885593bef26b3e2d74173b6bf97614026))

## [1.9.3](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.9.2...stack-v1.9.3) (2024-08-27)


### Bug Fixes

* wrong domain name in the annotations for ingress ([#88](https://github.com/chanzuckerberg/argo-helm-charts/issues/88)) ([6112960](https://github.com/chanzuckerberg/argo-helm-charts/commit/61129600c119776476bee038ab4c1d41aae365eb))

## [1.9.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.9.1...stack-v1.9.2) (2024-08-27)


### Bug Fixes

* use a cluster-wide domain name for auth subdomain ([#86](https://github.com/chanzuckerberg/argo-helm-charts/issues/86)) ([4b5b704](https://github.com/chanzuckerberg/argo-helm-charts/commit/4b5b704060700585262b6bfd02d5826c7ab2ab40))

## [1.9.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.9.0...stack-v1.9.1) (2024-08-27)


### Bug Fixes

* image, authn headers, name ([#84](https://github.com/chanzuckerberg/argo-helm-charts/issues/84)) ([57eca81](https://github.com/chanzuckerberg/argo-helm-charts/commit/57eca812a1d378e1970a2ee1a1616efa72d6e19f))

## [1.9.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.8.0...stack-v1.9.0) (2024-08-27)


### Features

* add oidc proxy deployment to stack helm chart ([#82](https://github.com/chanzuckerberg/argo-helm-charts/issues/82)) ([73ef475](https://github.com/chanzuckerberg/argo-helm-charts/commit/73ef4753b2325837a6d30747c065ce765b76ac76))

## [1.8.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.7.0...stack-v1.8.0) (2024-08-20)


### Features

* bump version of argus-config ([#81](https://github.com/chanzuckerberg/argo-helm-charts/issues/81)) ([05b025f](https://github.com/chanzuckerberg/argo-helm-charts/commit/05b025f94cc0bddf50321cf0c348476261960cd4))

## [1.7.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.6.1...stack-v1.7.0) (2024-08-14)


### Features

* add support for probes that exec a command ([#76](https://github.com/chanzuckerberg/argo-helm-charts/issues/76)) ([9ac7d63](https://github.com/chanzuckerberg/argo-helm-charts/commit/9ac7d636b609089ae7fac8a82522103e6d9dcf49))

## [1.6.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.6.0...stack-v1.6.1) (2024-08-02)


### Bug Fixes

* release patch ([#71](https://github.com/chanzuckerberg/argo-helm-charts/issues/71)) ([fe7cc32](https://github.com/chanzuckerberg/argo-helm-charts/commit/fe7cc321d37a354d49377328d1f93fff94381222))

## [1.6.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.5.0...stack-v1.6.0) (2024-08-02)


### Features

* (CCIE-3082) add unit testing to GHA ([#64](https://github.com/chanzuckerberg/argo-helm-charts/issues/64)) ([8d332f7](https://github.com/chanzuckerberg/argo-helm-charts/commit/8d332f7e5eeadb9316d1e5842a99525baa9ee0b5))
* add pvc creation support ([#67](https://github.com/chanzuckerberg/argo-helm-charts/issues/67)) ([2269fbd](https://github.com/chanzuckerberg/argo-helm-charts/commit/2269fbd76ffc71d254effa0435ab83865a1f8f7f))

## [1.5.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.8...stack-v1.5.0) (2024-08-01)


### Features

* add support for tcp probes ([#66](https://github.com/chanzuckerberg/argo-helm-charts/issues/66)) ([7bda0ed](https://github.com/chanzuckerberg/argo-helm-charts/commit/7bda0ed0e1cdcc92f94e9d33441693529287183b))

## [1.4.8](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.7...stack-v1.4.8) (2024-07-19)


### Bug Fixes

* can't nest package dir ([f176358](https://github.com/chanzuckerberg/argo-helm-charts/commit/f1763584ef1ebcebf11ee020284b36fa3ae3d04e))

## [1.4.7](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.6...stack-v1.4.7) (2024-07-19)


### Misc

* fix publish script ([0446bd9](https://github.com/chanzuckerberg/argo-helm-charts/commit/0446bd9e9a2deb3a993f9c7d17b045eaffc55ebd))

## [1.4.6](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.5...stack-v1.4.6) (2024-07-19)


### Misc

* update publish locations ([21b0a37](https://github.com/chanzuckerberg/argo-helm-charts/commit/21b0a37ecacdf11ac193a17605322f513e94aee5))

## [1.4.5](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.4...stack-v1.4.5) (2024-07-19)


### Bug Fixes

* don't gitignore packaged helm chart ([71df9a1](https://github.com/chanzuckerberg/argo-helm-charts/commit/71df9a14c0de563edf8651caa511746819e21ad5))

## [1.4.4](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.3...stack-v1.4.4) (2024-07-19)


### Misc

* specify chart ([#57](https://github.com/chanzuckerberg/argo-helm-charts/issues/57)) ([69ad843](https://github.com/chanzuckerberg/argo-helm-charts/commit/69ad8432c70aa09aad3793547a475136742605d0))

## [1.4.3](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.2...stack-v1.4.3) (2024-07-19)


### Misc

* try without chart lock ([8083b0d](https://github.com/chanzuckerberg/argo-helm-charts/commit/8083b0d4bc0252b866b65e9083e1bfef22a04fa6))

## [1.4.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.1...stack-v1.4.2) (2024-07-19)


### Misc

* update publisher ([3e6b601](https://github.com/chanzuckerberg/argo-helm-charts/commit/3e6b6019b3b3c08fd8c8404997f9020b127e13b3))

## [1.4.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.4.0...stack-v1.4.1) (2024-07-19)


### Misc

* fix release - add helm dependency update ([#52](https://github.com/chanzuckerberg/argo-helm-charts/issues/52)) ([734b7a8](https://github.com/chanzuckerberg/argo-helm-charts/commit/734b7a80e096eb061f175b6cebefb706cdf03641))
* include chart lock ([#54](https://github.com/chanzuckerberg/argo-helm-charts/issues/54)) ([6229a66](https://github.com/chanzuckerberg/argo-helm-charts/commit/6229a669675d2508d954cfb0638d99a9f09db149))

## [1.4.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.3.0...stack-v1.4.0) (2024-07-19)


### Features

* make stack chart use argus-config as a subchart ([#50](https://github.com/chanzuckerberg/argo-helm-charts/issues/50)) ([67ee7df](https://github.com/chanzuckerberg/argo-helm-charts/commit/67ee7df9e1881416c3861721ba00b793366ffd03))

## [1.3.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.2.0...stack-v1.3.0) (2024-06-27)


### Features

* add the global settings as default values to helm chart ([#41](https://github.com/chanzuckerberg/argo-helm-charts/issues/41)) ([6569b39](https://github.com/chanzuckerberg/argo-helm-charts/commit/6569b394b738e5f595e8e94a5f2cbf6a3780f42f))

## [1.2.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.1.4...stack-v1.2.0) (2024-06-27)


### Features

* allow specifying additional ingress rules ([#33](https://github.com/chanzuckerberg/argo-helm-charts/issues/33)) ([763a23b](https://github.com/chanzuckerberg/argo-helm-charts/commit/763a23b7316a11701a3d9285504d4e491a0d98af))

## [1.1.4](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.1.3...stack-v1.1.4) (2024-06-26)


### Bug Fixes

* wrong github repo ([20ea587](https://github.com/chanzuckerberg/argo-helm-charts/commit/20ea5878894df69c914bc9434bbd69df343713aa))

## [1.1.3](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.1.2...stack-v1.1.3) (2024-06-26)


### Bug Fixes

* artifacts URL ([d26c5ea](https://github.com/chanzuckerberg/argo-helm-charts/commit/d26c5ead159196757726f550868bd02781f83dfe))

## [1.1.2](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.1.1...stack-v1.1.2) (2024-06-26)


### Bug Fixes

* forgot about the package dir env var ([525779a](https://github.com/chanzuckerberg/argo-helm-charts/commit/525779a8ece9131be75002f4b7cf7767f89e9ec8))

## [1.1.1](https://github.com/chanzuckerberg/argo-helm-charts/compare/stack-v1.1.0...stack-v1.1.1) (2024-06-26)


### Bug Fixes

* wrong artificat URL ([7c4b721](https://github.com/chanzuckerberg/argo-helm-charts/commit/7c4b721121285a030a2f891027634c38a1b595b7))

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
