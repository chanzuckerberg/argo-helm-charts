# Changelog

## [0.3.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/basic-auth-secret-v0.2.0...basic-auth-secret-v0.3.0) (2025-10-21)


### Features

* Include username and password keys into basic auth secrets ([#287](https://github.com/chanzuckerberg/argo-helm-charts/issues/287)) ([c18a9cf](https://github.com/chanzuckerberg/argo-helm-charts/commit/c18a9cf745d2422c92bb5be7d7679bdc9d6e3398))


### Bug Fixes

* Add auth key to the basic auth secret ([#289](https://github.com/chanzuckerberg/argo-helm-charts/issues/289)) ([791f515](https://github.com/chanzuckerberg/argo-helm-charts/commit/791f5154494bfe67894d82fbd49ef2ef33a65b76))
* Fix nginx auth key value (no need to double base64) ([#290](https://github.com/chanzuckerberg/argo-helm-charts/issues/290)) ([f154dc3](https://github.com/chanzuckerberg/argo-helm-charts/commit/f154dc36a29b52b053529ed7d75f11cc5c38f60c))
* Fix restarter bitnami image and reference a htpasswd secret for nginx auth ([#291](https://github.com/chanzuckerberg/argo-helm-charts/issues/291)) ([d806e11](https://github.com/chanzuckerberg/argo-helm-charts/commit/d806e111f5e12531cdcd44ed0e904c98156ca93b))


## [0.2.0](https://github.com/chanzuckerberg/argo-helm-charts/compare/basic-auth-secret-v0.1.0...basic-auth-secret-v0.2.0) (2025-10-01)


### Features

* Basic auth secret helm chart ([#285](https://github.com/chanzuckerberg/argo-helm-charts/issues/285)) ([e031d11](https://github.com/chanzuckerberg/argo-helm-charts/commit/e031d1105cf369cc33f10dc4640078526cc3589b))
