# grafana-alloy

**Title:** grafana-alloy

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| -------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [alloy](#alloy )                                 | No      | object  | No         | -          | -                                                                         |
| - [alloyConfig](#alloyConfig )                     | No      | object  | No         | -          | -                                                                         |
| + [clusterName](#clusterName )                     | No      | string  | No         | -          | Name of the cluster where this chart is deployed. This value is required. |
| - [enabled](#enabled )                             | No      | boolean | No         | -          | Enable or disable the Grafana Alloy deployment                            |
| - [loki](#loki )                                   | No      | object  | No         | -          | -                                                                         |
| - [prometheusRemoteWrite](#prometheusRemoteWrite ) | No      | object  | No         | -          | -                                                                         |

## <a name="alloy"></a>1. Property `grafana-alloy > alloy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type   | Deprecated | Definition | Title/Description                 |
| -------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------- |
| - [affinity](#alloy_affinity )                     | No      | object | No         | -          | Affinity rules for pod assignment |
| - [alloy](#alloy_alloy )                           | No      | object | No         | -          | Alloy deployment configuration    |
| - [configReloader](#alloy_configReloader )         | No      | object | No         | -          | Config reloader configuration     |
| - [controller](#alloy_controller )                 | No      | object | No         | -          | Controller configuration          |
| - [ingress](#alloy_ingress )                       | No      | object | No         | -          | Ingress configuration             |
| - [nodeSelector](#alloy_nodeSelector )             | No      | object | No         | -          | Node selector for pod assignment  |
| - [podAnnotations](#alloy_podAnnotations )         | No      | object | No         | -          | Pod annotations                   |
| - [podLabels](#alloy_podLabels )                   | No      | object | No         | -          | Pod labels                        |
| - [podSecurityContext](#alloy_podSecurityContext ) | No      | object | No         | -          | Pod security context              |
| - [rbac](#alloy_rbac )                             | No      | object | No         | -          | RBAC configuration                |
| - [resources](#alloy_resources )                   | No      | object | No         | -          | Resource requests and limits      |
| - [securityContext](#alloy_securityContext )       | No      | object | No         | -          | Container security context        |
| - [service](#alloy_service )                       | No      | object | No         | -          | Service configuration             |
| - [serviceAccount](#alloy_serviceAccount )         | No      | object | No         | -          | Service account configuration     |
| - [tolerations](#alloy_tolerations )               | No      | array  | No         | -          | Tolerations for pod assignment    |

### <a name="alloy_affinity"></a>1.1. Property `grafana-alloy > alloy > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity rules for pod assignment

### <a name="alloy_alloy"></a>1.2. Property `grafana-alloy > alloy > alloy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Alloy deployment configuration

| Property                                         | Pattern | Type             | Deprecated | Definition | Title/Description                   |
| ------------------------------------------------ | ------- | ---------------- | ---------- | ---------- | ----------------------------------- |
| - [clustering](#alloy_alloy_clustering )         | No      | object           | No         | -          | Clustering configuration            |
| - [configMap](#alloy_alloy_configMap )           | No      | object           | No         | -          | ConfigMap configuration for Alloy   |
| - [extraArgs](#alloy_alloy_extraArgs )           | No      | array            | No         | -          | Extra arguments to pass to Alloy    |
| - [extraEnv](#alloy_alloy_extraEnv )             | No      | array            | No         | -          | Extra environment variables         |
| - [extraPorts](#alloy_alloy_extraPorts )         | No      | array            | No         | -          | Extra ports to expose               |
| - [image](#alloy_alloy_image )                   | No      | object           | No         | -          | Alloy container image configuration |
| - [stabilityLevel](#alloy_alloy_stabilityLevel ) | No      | enum (of string) | No         | -          | Stability level for Alloy features  |

#### <a name="alloy_alloy_clustering"></a>1.2.1. Property `grafana-alloy > alloy > alloy > clustering`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Clustering configuration

| Property                                      | Pattern | Type    | Deprecated | Definition | Title/Description      |
| --------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#alloy_alloy_clustering_enabled ) | No      | boolean | No         | -          | Enable clustering mode |

##### <a name="alloy_alloy_clustering_enabled"></a>1.2.1.1. Property `grafana-alloy > alloy > alloy > clustering > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable clustering mode

#### <a name="alloy_alloy_configMap"></a>1.2.2. Property `grafana-alloy > alloy > alloy > configMap`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** ConfigMap configuration for Alloy

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description                                                       |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [create](#alloy_alloy_configMap_create ) | No      | boolean | No         | -          | Whether to create the default ConfigMap (false since we create our own) |
| - [key](#alloy_alloy_configMap_key )       | No      | string  | No         | -          | Key in the ConfigMap containing the configuration                       |
| - [name](#alloy_alloy_configMap_name )     | No      | string  | No         | -          | Name of the ConfigMap to use                                            |

##### <a name="alloy_alloy_configMap_create"></a>1.2.2.1. Property `grafana-alloy > alloy > alloy > configMap > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to create the default ConfigMap (false since we create our own)

##### <a name="alloy_alloy_configMap_key"></a>1.2.2.2. Property `grafana-alloy > alloy > alloy > configMap > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Key in the ConfigMap containing the configuration

##### <a name="alloy_alloy_configMap_name"></a>1.2.2.3. Property `grafana-alloy > alloy > alloy > configMap > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the ConfigMap to use

#### <a name="alloy_alloy_extraArgs"></a>1.2.3. Property `grafana-alloy > alloy > alloy > extraArgs`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Extra arguments to pass to Alloy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="alloy_alloy_extraEnv"></a>1.2.4. Property `grafana-alloy > alloy > alloy > extraEnv`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Extra environment variables

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="alloy_alloy_extraPorts"></a>1.2.5. Property `grafana-alloy > alloy > alloy > extraPorts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Extra ports to expose

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="alloy_alloy_image"></a>1.2.6. Property `grafana-alloy > alloy > alloy > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Alloy container image configuration

| Property                                       | Pattern | Type             | Deprecated | Definition | Title/Description                  |
| ---------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ---------------------------------- |
| - [pullPolicy](#alloy_alloy_image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy                  |
| - [registry](#alloy_alloy_image_registry )     | No      | string           | No         | -          | Container registry for Alloy image |
| - [repository](#alloy_alloy_image_repository ) | No      | string           | No         | -          | Container image repository         |

##### <a name="alloy_alloy_image_pullPolicy"></a>1.2.6.1. Property `grafana-alloy > alloy > alloy > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

##### <a name="alloy_alloy_image_registry"></a>1.2.6.2. Property `grafana-alloy > alloy > alloy > image > registry`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Container registry for Alloy image

##### <a name="alloy_alloy_image_repository"></a>1.2.6.3. Property `grafana-alloy > alloy > alloy > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Container image repository

#### <a name="alloy_alloy_stabilityLevel"></a>1.2.7. Property `grafana-alloy > alloy > alloy > stabilityLevel`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Stability level for Alloy features

Must be one of:
* "experimental"
* "public-preview"
* "generally-available"

### <a name="alloy_configReloader"></a>1.3. Property `grafana-alloy > alloy > configReloader`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Config reloader configuration

| Property                                    | Pattern | Type    | Deprecated | Definition | Title/Description      |
| ------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#alloy_configReloader_enabled ) | No      | boolean | No         | -          | Enable config reloader |

#### <a name="alloy_configReloader_enabled"></a>1.3.1. Property `grafana-alloy > alloy > configReloader > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable config reloader

### <a name="alloy_controller"></a>1.4. Property `grafana-alloy > alloy > controller`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Controller configuration

| Property                                  | Pattern | Type             | Deprecated | Definition | Title/Description                                    |
| ----------------------------------------- | ------- | ---------------- | ---------- | ---------- | ---------------------------------------------------- |
| - [replicas](#alloy_controller_replicas ) | No      | integer          | No         | -          | Number of replicas (only for deployment/statefulset) |
| - [type](#alloy_controller_type )         | No      | enum (of string) | No         | -          | Type of controller to use                            |

#### <a name="alloy_controller_replicas"></a>1.4.1. Property `grafana-alloy > alloy > controller > replicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas (only for deployment/statefulset)

#### <a name="alloy_controller_type"></a>1.4.2. Property `grafana-alloy > alloy > controller > type`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Type of controller to use

Must be one of:
* "daemonset"
* "deployment"
* "statefulset"

### <a name="alloy_ingress"></a>1.5. Property `grafana-alloy > alloy > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                                     | Pattern | Type    | Deprecated | Definition | Title/Description           |
| -------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------- |
| - [annotations](#alloy_ingress_annotations ) | No      | object  | No         | -          | Annotations for the ingress |
| - [enabled](#alloy_ingress_enabled )         | No      | boolean | No         | -          | Enable ingress              |
| - [hosts](#alloy_ingress_hosts )             | No      | array   | No         | -          | Ingress hosts               |
| - [tls](#alloy_ingress_tls )                 | No      | array   | No         | -          | TLS configuration           |

#### <a name="alloy_ingress_annotations"></a>1.5.1. Property `grafana-alloy > alloy > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations for the ingress

#### <a name="alloy_ingress_enabled"></a>1.5.2. Property `grafana-alloy > alloy > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress

#### <a name="alloy_ingress_hosts"></a>1.5.3. Property `grafana-alloy > alloy > ingress > hosts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Ingress hosts

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="alloy_ingress_tls"></a>1.5.4. Property `grafana-alloy > alloy > ingress > tls`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** TLS configuration

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="alloy_nodeSelector"></a>1.6. Property `grafana-alloy > alloy > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Node selector for pod assignment

### <a name="alloy_podAnnotations"></a>1.7. Property `grafana-alloy > alloy > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod annotations

### <a name="alloy_podLabels"></a>1.8. Property `grafana-alloy > alloy > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod labels

### <a name="alloy_podSecurityContext"></a>1.9. Property `grafana-alloy > alloy > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod security context

### <a name="alloy_rbac"></a>1.10. Property `grafana-alloy > alloy > rbac`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** RBAC configuration

| Property                        | Pattern | Type    | Deprecated | Definition | Title/Description     |
| ------------------------------- | ------- | ------- | ---------- | ---------- | --------------------- |
| - [create](#alloy_rbac_create ) | No      | boolean | No         | -          | Create RBAC resources |

#### <a name="alloy_rbac_create"></a>1.10.1. Property `grafana-alloy > alloy > rbac > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Create RBAC resources

### <a name="alloy_resources"></a>1.11. Property `grafana-alloy > alloy > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests and limits

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#alloy_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#alloy_resources_requests ) | No      | object | No         | -          | -                 |

#### <a name="alloy_resources_limits"></a>1.11.1. Property `grafana-alloy > alloy > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                    | Pattern | Type        | Deprecated | Definition | Title/Description                  |
| ------------------------------------------- | ------- | ----------- | ---------- | ---------- | ---------------------------------- |
| - [cpu](#alloy_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit (e.g., "200m", "1", "2") |
| - [memory](#alloy_resources_limits_memory ) | No      | string      | No         | -          | Memory limit                       |

##### <a name="alloy_resources_limits_cpu"></a>1.11.1.1. Property `grafana-alloy > alloy > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit (e.g., "200m", "1", "2")

| Any of(Option)                                 |
| ---------------------------------------------- |
| [item 0](#alloy_resources_limits_cpu_anyOf_i0) |
| [item 1](#alloy_resources_limits_cpu_anyOf_i1) |

###### <a name="alloy_resources_limits_cpu_anyOf_i0"></a>1.11.1.1.1. Property `grafana-alloy > alloy > resources > limits > cpu > anyOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="alloy_resources_limits_cpu_anyOf_i1"></a>1.11.1.1.2. Property `grafana-alloy > alloy > resources > limits > cpu > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

##### <a name="alloy_resources_limits_memory"></a>1.11.1.2. Property `grafana-alloy > alloy > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

#### <a name="alloy_resources_requests"></a>1.11.2. Property `grafana-alloy > alloy > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type        | Deprecated | Definition | Title/Description                    |
| --------------------------------------------- | ------- | ----------- | ---------- | ---------- | ------------------------------------ |
| - [cpu](#alloy_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request (e.g., "200m", "1", "2") |
| - [memory](#alloy_resources_requests_memory ) | No      | string      | No         | -          | Memory request                       |

##### <a name="alloy_resources_requests_cpu"></a>1.11.2.1. Property `grafana-alloy > alloy > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request (e.g., "200m", "1", "2")

| Any of(Option)                                   |
| ------------------------------------------------ |
| [item 0](#alloy_resources_requests_cpu_anyOf_i0) |
| [item 1](#alloy_resources_requests_cpu_anyOf_i1) |

###### <a name="alloy_resources_requests_cpu_anyOf_i0"></a>1.11.2.1.1. Property `grafana-alloy > alloy > resources > requests > cpu > anyOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="alloy_resources_requests_cpu_anyOf_i1"></a>1.11.2.1.2. Property `grafana-alloy > alloy > resources > requests > cpu > anyOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

##### <a name="alloy_resources_requests_memory"></a>1.11.2.2. Property `grafana-alloy > alloy > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

### <a name="alloy_securityContext"></a>1.12. Property `grafana-alloy > alloy > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Container security context

| Property                                                                       | Pattern | Type    | Deprecated | Definition | Title/Description                  |
| ------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ---------------------------------- |
| - [allowPrivilegeEscalation](#alloy_securityContext_allowPrivilegeEscalation ) | No      | boolean | No         | -          | Prevent privilege escalation       |
| - [readOnlyRootFilesystem](#alloy_securityContext_readOnlyRootFilesystem )     | No      | boolean | No         | -          | Mount root filesystem as read-only |
| - [runAsNonRoot](#alloy_securityContext_runAsNonRoot )                         | No      | boolean | No         | -          | Run container as non-root user     |

#### <a name="alloy_securityContext_allowPrivilegeEscalation"></a>1.12.1. Property `grafana-alloy > alloy > securityContext > allowPrivilegeEscalation`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Prevent privilege escalation

#### <a name="alloy_securityContext_readOnlyRootFilesystem"></a>1.12.2. Property `grafana-alloy > alloy > securityContext > readOnlyRootFilesystem`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Mount root filesystem as read-only

#### <a name="alloy_securityContext_runAsNonRoot"></a>1.12.3. Property `grafana-alloy > alloy > securityContext > runAsNonRoot`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Run container as non-root user

### <a name="alloy_service"></a>1.13. Property `grafana-alloy > alloy > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service configuration

| Property                             | Pattern | Type    | Deprecated | Definition | Title/Description  |
| ------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------ |
| - [enabled](#alloy_service_enabled ) | No      | boolean | No         | -          | Enable the service |
| - [type](#alloy_service_type )       | No      | string  | No         | -          | Service type       |

#### <a name="alloy_service_enabled"></a>1.13.1. Property `grafana-alloy > alloy > service > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the service

#### <a name="alloy_service_type"></a>1.13.2. Property `grafana-alloy > alloy > service > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service type

### <a name="alloy_serviceAccount"></a>1.14. Property `grafana-alloy > alloy > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service account configuration

| Property                                            | Pattern | Type    | Deprecated | Definition | Title/Description                         |
| --------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------------------------------- |
| - [annotations](#alloy_serviceAccount_annotations ) | No      | object  | No         | -          | Annotations to add to the service account |
| - [create](#alloy_serviceAccount_create )           | No      | boolean | No         | -          | Create a service account                  |
| - [name](#alloy_serviceAccount_name )               | No      | string  | No         | -          | Name of the service account               |

#### <a name="alloy_serviceAccount_annotations"></a>1.14.1. Property `grafana-alloy > alloy > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the service account

#### <a name="alloy_serviceAccount_create"></a>1.14.2. Property `grafana-alloy > alloy > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Create a service account

#### <a name="alloy_serviceAccount_name"></a>1.14.3. Property `grafana-alloy > alloy > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service account

### <a name="alloy_tolerations"></a>1.15. Property `grafana-alloy > alloy > tolerations`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Tolerations for pod assignment

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="alloyConfig"></a>2. Property `grafana-alloy > alloyConfig`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description                                                                            |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------------------------------------------------------------- |
| - [beyla](#alloyConfig_beyla )     | No      | object | No         | -          | Enable Beyla integration for eBPF-based application instrumentation                          |
| - [content](#alloyConfig_content ) | No      | string | No         | -          | Custom Alloy configuration content (River format). If empty, uses default collection config. |
| - [events](#alloyConfig_events )   | No      | object | No         | -          | Enable Kubernetes events collection                                                          |
| - [logging](#alloyConfig_logging ) | No      | object | No         | -          | Logging configuration for Alloy                                                              |
| - [metrics](#alloyConfig_metrics ) | No      | object | No         | -          | Enable Prometheus metrics collection                                                         |
| - [podLogs](#alloyConfig_podLogs ) | No      | object | No         | -          | Enable pod log collection                                                                    |

### <a name="alloyConfig_beyla"></a>2.1. Property `grafana-alloy > alloyConfig > beyla`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable Beyla integration for eBPF-based application instrumentation

| Property                                 | Pattern | Type    | Deprecated | Definition | Title/Description                                                      |
| ---------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------------------------------------------------------- |
| - [debug](#alloyConfig_beyla_debug )     | No      | boolean | No         | -          | Enable debug logging for Beyla BPF component                           |
| - [enabled](#alloyConfig_beyla_enabled ) | No      | boolean | No         | -          | Enable Beyla integration (requires prometheusRemoteWrite.enabled=true) |

#### <a name="alloyConfig_beyla_debug"></a>2.1.1. Property `grafana-alloy > alloyConfig > beyla > debug`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable debug logging for Beyla BPF component

#### <a name="alloyConfig_beyla_enabled"></a>2.1.2. Property `grafana-alloy > alloyConfig > beyla > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Beyla integration (requires prometheusRemoteWrite.enabled=true)

### <a name="alloyConfig_content"></a>2.2. Property `grafana-alloy > alloyConfig > content`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom Alloy configuration content (River format). If empty, uses default collection config.

### <a name="alloyConfig_events"></a>2.3. Property `grafana-alloy > alloyConfig > events`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable Kubernetes events collection

| Property                                  | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [enabled](#alloyConfig_events_enabled ) | No      | boolean | No         | -          | Enable collection of Kubernetes events |

#### <a name="alloyConfig_events_enabled"></a>2.3.1. Property `grafana-alloy > alloyConfig > events > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable collection of Kubernetes events

### <a name="alloyConfig_logging"></a>2.4. Property `grafana-alloy > alloyConfig > logging`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Logging configuration for Alloy

| Property                                 | Pattern | Type             | Deprecated | Definition | Title/Description    |
| ---------------------------------------- | ------- | ---------------- | ---------- | ---------- | -------------------- |
| - [format](#alloyConfig_logging_format ) | No      | enum (of string) | No         | -          | Log format for Alloy |
| - [level](#alloyConfig_logging_level )   | No      | enum (of string) | No         | -          | Log level for Alloy  |

#### <a name="alloyConfig_logging_format"></a>2.4.1. Property `grafana-alloy > alloyConfig > logging > format`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Log format for Alloy

Must be one of:
* "logfmt"
* "json"

#### <a name="alloyConfig_logging_level"></a>2.4.2. Property `grafana-alloy > alloyConfig > logging > level`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Log level for Alloy

Must be one of:
* "debug"
* "info"
* "warn"
* "error"

### <a name="alloyConfig_metrics"></a>2.5. Property `grafana-alloy > alloyConfig > metrics`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable Prometheus metrics collection

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description                                                                             |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | --------------------------------------------------------------------------------------------- |
| - [enabled](#alloyConfig_metrics_enabled ) | No      | boolean | No         | -          | Enable scraping of Prometheus metrics from pods (requires prometheusRemoteWrite.enabled=true) |

#### <a name="alloyConfig_metrics_enabled"></a>2.5.1. Property `grafana-alloy > alloyConfig > metrics > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping of Prometheus metrics from pods (requires prometheusRemoteWrite.enabled=true)

### <a name="alloyConfig_podLogs"></a>2.6. Property `grafana-alloy > alloyConfig > podLogs`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable pod log collection

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description                            |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | -------------------------------------------- |
| - [enabled](#alloyConfig_podLogs_enabled ) | No      | boolean | No         | -          | Enable collection of pod logs from all nodes |

#### <a name="alloyConfig_podLogs_enabled"></a>2.6.1. Property `grafana-alloy > alloyConfig > podLogs > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable collection of pod logs from all nodes

## <a name="clusterName"></a>3. Property `grafana-alloy > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Name of the cluster where this chart is deployed. This value is required.

## <a name="enabled"></a>4. Property `grafana-alloy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable or disable the Grafana Alloy deployment

## <a name="loki"></a>5. Property `grafana-alloy > loki`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                        | Pattern | Type            | Deprecated | Definition | Title/Description                      |
| ------------------------------- | ------- | --------------- | ---------- | ---------- | -------------------------------------- |
| - [endpoints](#loki_endpoints ) | No      | array of object | No         | -          | List of Loki endpoints to send logs to |

### <a name="loki_endpoints"></a>5.1. Property `grafana-alloy > loki > endpoints`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** List of Loki endpoints to send logs to

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be          | Description |
| ---------------------------------------- | ----------- |
| [endpoints items](#loki_endpoints_items) | -           |

#### <a name="loki_endpoints_items"></a>5.1.1. grafana-alloy > loki > endpoints > endpoints items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description        |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------ |
| - [url](#loki_endpoints_items_url ) | No      | string | No         | -          | URL of the Loki endpoint |

##### <a name="loki_endpoints_items_url"></a>5.1.1.1. Property `grafana-alloy > loki > endpoints > endpoints items > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL of the Loki endpoint

## <a name="prometheusRemoteWrite"></a>6. Property `grafana-alloy > prometheusRemoteWrite`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                               | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| - [additionalStaticScrapes](#prometheusRemoteWrite_additionalStaticScrapes )                           | No      | array   | No         | -          | Extra prometheus.scrape blocks with static __address__ targets (forward_to filter_metrics). Each item: jobName, optional metricsPath, scrapeInterval, scrapeTimeout, targets: [{ address, optional job, optional namespace }] |
| - [enabled](#prometheusRemoteWrite_enabled )                                                           | No      | boolean | No         | -          | Enable Prometheus remote write                                                                                                                                                                                                |
| - [endpoints](#prometheusRemoteWrite_endpoints )                                                       | No      | array   | No         | -          | Array of remote write endpoints                                                                                                                                                                                               |
| - [extraFilterRelabelRules](#prometheusRemoteWrite_extraFilterRelabelRules )                           | No      | array   | No         | -          | Extra prometheus.relabel rules applied in filter_metrics before the cluster label (e.g. Andromeda-style job/service drops)                                                                                                    |
| - [metricsFilter](#prometheusRemoteWrite_metricsFilter )                                               | No      | object  | No         | -          | Metrics filtering configuration                                                                                                                                                                                               |
| - [relabelNamespace](#prometheusRemoteWrite_relabelNamespace )                                         | No      | boolean | No         | -          | When true, copy exported_namespace to namespace for metrics that have it (fixes kube-state-metrics, nginx, etc. showing namespace="loki")                                                                                     |
| - [scrapeBlackboxStatic](#prometheusRemoteWrite_scrapeBlackboxStatic )                                 | No      | object  | No         | -          | Scrape static targets using blackbox exporter                                                                                                                                                                                 |
| - [scrapeCadvisor](#prometheusRemoteWrite_scrapeCadvisor )                                             | No      | object  | No         | -          | Scrape cadvisor metrics from each node (container_*)                                                                                                                                                                          |
| - [scrapeDcgmExporter](#prometheusRemoteWrite_scrapeDcgmExporter )                                     | No      | object  | No         | -          | Scrape NVIDIA DCGM exporter endpoints (VMAgent VMServiceScrape-style)                                                                                                                                                         |
| - [scrapeEndpoints](#prometheusRemoteWrite_scrapeEndpoints )                                           | No      | object  | No         | -          | Scrape Kubernetes service endpoints with prometheus.io/scrape annotations                                                                                                                                                     |
| - [scrapeHostNodeExporter](#prometheusRemoteWrite_scrapeHostNodeExporter )                             | No      | object  | No         | -          | Scrape node exporter on the local node for hostNetwork DaemonSet pods. Typical address 127.0.0.1:9101 (Andromeda-style port).                                                                                                 |
| - [scrapeHostNodeExporterInfinibandFast](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast ) | No      | object  | No         | -          | Fast scrape of local node exporter keeping only InfiniBand metrics (VMNodeScrape-style)                                                                                                                                       |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeInterval )                                             | No      | string  | No         | -          | Scrape interval for pods, kube-state-metrics, kubelet, and cadvisor scrapes                                                                                                                                                   |
| - [scrapeKubeStateMetrics](#prometheusRemoteWrite_scrapeKubeStateMetrics )                             | No      | object  | No         | -          | Scrape kube-state-metrics service for kube_* metrics                                                                                                                                                                          |
| - [scrapeKubelet](#prometheusRemoteWrite_scrapeKubelet )                                               | No      | object  | No         | -          | Scrape kubelet metrics from each node (kubelet_*, kubernetes_build_info)                                                                                                                                                      |
| - [scrapePodsAnnotated](#prometheusRemoteWrite_scrapePodsAnnotated )                                   | No      | object  | No         | -          | Scrape pods annotated with prometheus.io/scrape=true                                                                                                                                                                          |
| - [scrapeSelfRemoteWriteMetrics](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics )                 | No      | object  | No         | -          | Scrape this Alloy process /metrics (prometheus_remote_storage_* queue debug metrics) and send to remote_write for AMP cost/ingestion dashboards                                                                               |
| - [scrapeTailscaleServices](#prometheusRemoteWrite_scrapeTailscaleServices )                           | No      | object  | No         | -          | Scrape Tailscale client metrics via ExternalName Services (requires tailscalesd syncer)                                                                                                                                       |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeTimeout )                                               | No      | string  | No         | -          | Scrape timeout for pods, kube-state-metrics, kubelet, and cadvisor scrapes                                                                                                                                                    |

### <a name="prometheusRemoteWrite_additionalStaticScrapes"></a>6.1. Property `grafana-alloy > prometheusRemoteWrite > additionalStaticScrapes`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Extra prometheus.scrape blocks with static __address__ targets (forward_to filter_metrics). Each item: jobName, optional metricsPath, scrapeInterval, scrapeTimeout, targets: [{ address, optional job, optional namespace }]

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="prometheusRemoteWrite_enabled"></a>6.2. Property `grafana-alloy > prometheusRemoteWrite > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Prometheus remote write

### <a name="prometheusRemoteWrite_endpoints"></a>6.3. Property `grafana-alloy > prometheusRemoteWrite > endpoints`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Array of remote write endpoints

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="prometheusRemoteWrite_extraFilterRelabelRules"></a>6.4. Property `grafana-alloy > prometheusRemoteWrite > extraFilterRelabelRules`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Extra prometheus.relabel rules applied in filter_metrics before the cluster label (e.g. Andromeda-style job/service drops)

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="prometheusRemoteWrite_metricsFilter"></a>6.5. Property `grafana-alloy > prometheusRemoteWrite > metricsFilter`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Metrics filtering configuration

| Property                                                   | Pattern | Type    | Deprecated | Definition | Title/Description                           |
| ---------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------- |
| - [enabled](#prometheusRemoteWrite_metricsFilter_enabled ) | No      | boolean | No         | -          | Enable metrics filtering                    |
| - [regex](#prometheusRemoteWrite_metricsFilter_regex )     | No      | string  | No         | -          | Regex pattern to match metric names to keep |

#### <a name="prometheusRemoteWrite_metricsFilter_enabled"></a>6.5.1. Property `grafana-alloy > prometheusRemoteWrite > metricsFilter > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable metrics filtering

#### <a name="prometheusRemoteWrite_metricsFilter_regex"></a>6.5.2. Property `grafana-alloy > prometheusRemoteWrite > metricsFilter > regex`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Regex pattern to match metric names to keep

### <a name="prometheusRemoteWrite_relabelNamespace"></a>6.6. Property `grafana-alloy > prometheusRemoteWrite > relabelNamespace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** When true, copy exported_namespace to namespace for metrics that have it (fixes kube-state-metrics, nginx, etc. showing namespace="loki")

### <a name="prometheusRemoteWrite_scrapeBlackboxStatic"></a>6.7. Property `grafana-alloy > prometheusRemoteWrite > scrapeBlackboxStatic`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape static targets using blackbox exporter

| Property                                                                        | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                        |
| ------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------------------------------------------------------------------------- |
| - [config](#prometheusRemoteWrite_scrapeBlackboxStatic_config )                 | No      | string  | No         | -          | Blackbox exporter configuration in YAML format (defaults to standard modules if not provided)            |
| - [enabled](#prometheusRemoteWrite_scrapeBlackboxStatic_enabled )               | No      | boolean | No         | -          | Enable static blackbox scraping (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled) |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeBlackboxStatic_scrapeInterval ) | No      | string  | No         | -          | Scrape interval for static blackbox scraping                                                             |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeBlackboxStatic_scrapeTimeout )   | No      | string  | No         | -          | Scrape timeout for static blackbox scraping                                                              |
| - [targets](#prometheusRemoteWrite_scrapeBlackboxStatic_targets )               | No      | array   | No         | -          | List of static blackbox targets to probe                                                                 |

#### <a name="prometheusRemoteWrite_scrapeBlackboxStatic_config"></a>6.7.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeBlackboxStatic > config`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Blackbox exporter configuration in YAML format (defaults to standard modules if not provided)

#### <a name="prometheusRemoteWrite_scrapeBlackboxStatic_enabled"></a>6.7.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeBlackboxStatic > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable static blackbox scraping (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)

#### <a name="prometheusRemoteWrite_scrapeBlackboxStatic_scrapeInterval"></a>6.7.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeBlackboxStatic > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape interval for static blackbox scraping

#### <a name="prometheusRemoteWrite_scrapeBlackboxStatic_scrapeTimeout"></a>6.7.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeBlackboxStatic > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape timeout for static blackbox scraping

#### <a name="prometheusRemoteWrite_scrapeBlackboxStatic_targets"></a>6.7.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeBlackboxStatic > targets`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of static blackbox targets to probe

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="prometheusRemoteWrite_scrapeCadvisor"></a>6.8. Property `grafana-alloy > prometheusRemoteWrite > scrapeCadvisor`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape cadvisor metrics from each node (container_*)

| Property                                                            | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                         |
| ------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------------- |
| - [enabled](#prometheusRemoteWrite_scrapeCadvisor_enabled )         | No      | boolean | No         | -          | Enable scraping cadvisor metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)                 |
| - [shardByNode](#prometheusRemoteWrite_scrapeCadvisor_shardByNode ) | No      | boolean | No         | -          | When true (recommended for DaemonSet), each pod scrapes only its own node to avoid 23x duplication and high AMP ingestion |

#### <a name="prometheusRemoteWrite_scrapeCadvisor_enabled"></a>6.8.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeCadvisor > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping cadvisor metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)

#### <a name="prometheusRemoteWrite_scrapeCadvisor_shardByNode"></a>6.8.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeCadvisor > shardByNode`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** When true (recommended for DaemonSet), each pod scrapes only its own node to avoid 23x duplication and high AMP ingestion

### <a name="prometheusRemoteWrite_scrapeDcgmExporter"></a>6.9. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape NVIDIA DCGM exporter endpoints (VMAgent VMServiceScrape-style)

| Property                                                                                  | Pattern | Type    | Deprecated | Definition | Title/Description                                                        |
| ----------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------ |
| - [enabled](#prometheusRemoteWrite_scrapeDcgmExporter_enabled )                           | No      | boolean | No         | -          | -                                                                        |
| - [namespaces](#prometheusRemoteWrite_scrapeDcgmExporter_namespaces )                     | No      | array   | No         | -          | Kubernetes namespaces to search (e.g. nvidia-gpu-operator, gpu-operator) |
| - [portName](#prometheusRemoteWrite_scrapeDcgmExporter_portName )                         | No      | string  | No         | -          | Endpoint port name to keep                                               |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeDcgmExporter_scrapeInterval )             | No      | string  | No         | -          | -                                                                        |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeDcgmExporter_scrapeTimeout )               | No      | string  | No         | -          | -                                                                        |
| - [serviceAppLabelValue](#prometheusRemoteWrite_scrapeDcgmExporter_serviceAppLabelValue ) | No      | string  | No         | -          | Value of the Service label app=...                                       |

#### <a name="prometheusRemoteWrite_scrapeDcgmExporter_enabled"></a>6.9.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="prometheusRemoteWrite_scrapeDcgmExporter_namespaces"></a>6.9.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter > namespaces`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Kubernetes namespaces to search (e.g. nvidia-gpu-operator, gpu-operator)

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="prometheusRemoteWrite_scrapeDcgmExporter_portName"></a>6.9.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter > portName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Endpoint port name to keep

#### <a name="prometheusRemoteWrite_scrapeDcgmExporter_scrapeInterval"></a>6.9.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeDcgmExporter_scrapeTimeout"></a>6.9.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeDcgmExporter_serviceAppLabelValue"></a>6.9.6. Property `grafana-alloy > prometheusRemoteWrite > scrapeDcgmExporter > serviceAppLabelValue`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Value of the Service label app=...

### <a name="prometheusRemoteWrite_scrapeEndpoints"></a>6.10. Property `grafana-alloy > prometheusRemoteWrite > scrapeEndpoints`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape Kubernetes service endpoints with prometheus.io/scrape annotations

| Property                                                                   | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                          |
| -------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------------------------------------------------------------------------------------------- |
| - [enabled](#prometheusRemoteWrite_scrapeEndpoints_enabled )               | No      | boolean | No         | -          | Enable scraping service endpoints (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled) |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeEndpoints_scrapeInterval ) | No      | string  | No         | -          | Scrape interval for endpoint scraping                                                                      |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeEndpoints_scrapeTimeout )   | No      | string  | No         | -          | Scrape timeout for endpoint scraping                                                                       |

#### <a name="prometheusRemoteWrite_scrapeEndpoints_enabled"></a>6.10.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeEndpoints > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping service endpoints (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)

#### <a name="prometheusRemoteWrite_scrapeEndpoints_scrapeInterval"></a>6.10.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeEndpoints > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape interval for endpoint scraping

#### <a name="prometheusRemoteWrite_scrapeEndpoints_scrapeTimeout"></a>6.10.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeEndpoints > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape timeout for endpoint scraping

### <a name="prometheusRemoteWrite_scrapeHostNodeExporter"></a>6.11. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape node exporter on the local node for hostNetwork DaemonSet pods. Typical address 127.0.0.1:9101 (Andromeda-style port).

| Property                                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [address](#prometheusRemoteWrite_scrapeHostNodeExporter_address )                           | No      | string  | No         | -          | -                 |
| - [enabled](#prometheusRemoteWrite_scrapeHostNodeExporter_enabled )                           | No      | boolean | No         | -          | -                 |
| - [jobLabel](#prometheusRemoteWrite_scrapeHostNodeExporter_jobLabel )                         | No      | string  | No         | -          | -                 |
| - [metricRelabelConfigs](#prometheusRemoteWrite_scrapeHostNodeExporter_metricRelabelConfigs ) | No      | array   | No         | -          | -                 |
| - [metricsPath](#prometheusRemoteWrite_scrapeHostNodeExporter_metricsPath )                   | No      | string  | No         | -          | -                 |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeHostNodeExporter_scrapeInterval )             | No      | string  | No         | -          | -                 |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeHostNodeExporter_scrapeTimeout )               | No      | string  | No         | -          | -                 |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_address"></a>6.11.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > address`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_enabled"></a>6.11.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_jobLabel"></a>6.11.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > jobLabel`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_metricRelabelConfigs"></a>6.11.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > metricRelabelConfigs`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_metricsPath"></a>6.11.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > metricsPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_scrapeInterval"></a>6.11.6. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporter_scrapeTimeout"></a>6.11.7. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporter > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast"></a>6.12. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Fast scrape of local node exporter keeping only InfiniBand metrics (VMNodeScrape-style)

| Property                                                                                          | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [address](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_address )                 | No      | string  | No         | -          | -                 |
| - [enabled](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_enabled )                 | No      | boolean | No         | -          | -                 |
| - [jobLabel](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_jobLabel )               | No      | string  | No         | -          | -                 |
| - [metricKeepRegex](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_metricKeepRegex ) | No      | string  | No         | -          | -                 |
| - [metricsPath](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_metricsPath )         | No      | string  | No         | -          | -                 |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_scrapeInterval )   | No      | string  | No         | -          | -                 |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_scrapeTimeout )     | No      | string  | No         | -          | -                 |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_address"></a>6.12.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > address`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_enabled"></a>6.12.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_jobLabel"></a>6.12.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > jobLabel`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_metricKeepRegex"></a>6.12.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > metricKeepRegex`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_metricsPath"></a>6.12.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > metricsPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_scrapeInterval"></a>6.12.6. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeHostNodeExporterInfinibandFast_scrapeTimeout"></a>6.12.7. Property `grafana-alloy > prometheusRemoteWrite > scrapeHostNodeExporterInfinibandFast > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="prometheusRemoteWrite_scrapeInterval"></a>6.13. Property `grafana-alloy > prometheusRemoteWrite > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape interval for pods, kube-state-metrics, kubelet, and cadvisor scrapes

### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics"></a>6.14. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape kube-state-metrics service for kube_* metrics

| Property                                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                                                    |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| - [enabled](#prometheusRemoteWrite_scrapeKubeStateMetrics_enabled )                           | No      | boolean | No         | -          | Enable scraping kube-state-metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)                                          |
| - [metricRelabelConfigs](#prometheusRemoteWrite_scrapeKubeStateMetrics_metricRelabelConfigs ) | No      | array   | No         | -          | Optional metric relabel rules after scraping kube-state-metrics (Prometheus-style maps with source_labels, regex, action, target_label, replacement) |
| - [namespace](#prometheusRemoteWrite_scrapeKubeStateMetrics_namespace )                       | No      | string  | No         | -          | Namespace where kube-state-metrics service runs                                                                                                      |
| - [portName](#prometheusRemoteWrite_scrapeKubeStateMetrics_portName )                         | No      | string  | No         | -          | Optional Kubernetes Service port name to scrape only (e.g. http for VMServiceScrape parity)                                                          |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeKubeStateMetrics_scrapeInterval )             | No      | string  | No         | -          | Optional scrape interval override (defaults to prometheusRemoteWrite.scrapeInterval)                                                                 |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeKubeStateMetrics_scrapeTimeout )               | No      | string  | No         | -          | Optional scrape timeout override (defaults to prometheusRemoteWrite.scrapeTimeout)                                                                   |
| - [serviceSelector](#prometheusRemoteWrite_scrapeKubeStateMetrics_serviceSelector )           | No      | string  | No         | -          | Label selector (key=value) to find the kube-state-metrics service                                                                                    |

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_enabled"></a>6.14.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping kube-state-metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_metricRelabelConfigs"></a>6.14.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > metricRelabelConfigs`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Optional metric relabel rules after scraping kube-state-metrics (Prometheus-style maps with source_labels, regex, action, target_label, replacement)

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_namespace"></a>6.14.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Namespace where kube-state-metrics service runs

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_portName"></a>6.14.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > portName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Optional Kubernetes Service port name to scrape only (e.g. http for VMServiceScrape parity)

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_scrapeInterval"></a>6.14.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Optional scrape interval override (defaults to prometheusRemoteWrite.scrapeInterval)

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_scrapeTimeout"></a>6.14.6. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Optional scrape timeout override (defaults to prometheusRemoteWrite.scrapeTimeout)

#### <a name="prometheusRemoteWrite_scrapeKubeStateMetrics_serviceSelector"></a>6.14.7. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubeStateMetrics > serviceSelector`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Label selector (key=value) to find the kube-state-metrics service

### <a name="prometheusRemoteWrite_scrapeKubelet"></a>6.15. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubelet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape kubelet metrics from each node (kubelet_*, kubernetes_build_info)

| Property                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                         |
| ------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------------- |
| - [enabled](#prometheusRemoteWrite_scrapeKubelet_enabled )         | No      | boolean | No         | -          | Enable scraping kubelet metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)                  |
| - [shardByNode](#prometheusRemoteWrite_scrapeKubelet_shardByNode ) | No      | boolean | No         | -          | When true (recommended for DaemonSet), each pod scrapes only its own node to avoid 23x duplication and high AMP ingestion |

#### <a name="prometheusRemoteWrite_scrapeKubelet_enabled"></a>6.15.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubelet > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping kubelet metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)

#### <a name="prometheusRemoteWrite_scrapeKubelet_shardByNode"></a>6.15.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeKubelet > shardByNode`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** When true (recommended for DaemonSet), each pod scrapes only its own node to avoid 23x duplication and high AMP ingestion

### <a name="prometheusRemoteWrite_scrapePodsAnnotated"></a>6.16. Property `grafana-alloy > prometheusRemoteWrite > scrapePodsAnnotated`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape pods annotated with prometheus.io/scrape=true

| Property                                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                          |
| ------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | -------------------------------------------------------------------------------------------------------------------------- |
| - [shardByNode](#prometheusRemoteWrite_scrapePodsAnnotated_shardByNode ) | No      | boolean | No         | -          | When true (recommended for DaemonSet), each pod scrapes only its own node to avoid 321x duplication and high AMP ingestion |

#### <a name="prometheusRemoteWrite_scrapePodsAnnotated_shardByNode"></a>6.16.1. Property `grafana-alloy > prometheusRemoteWrite > scrapePodsAnnotated > shardByNode`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** When true (recommended for DaemonSet), each pod scrapes only its own node to avoid 321x duplication and high AMP ingestion

### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics"></a>6.17. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape this Alloy process /metrics (prometheus_remote_storage_* queue debug metrics) and send to remote_write for AMP cost/ingestion dashboards

| Property                                                                                | Pattern | Type    | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [address](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_address )               | No      | string  | No         | -          | -                 |
| - [enabled](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_enabled )               | No      | boolean | No         | -          | -                 |
| - [jobLabel](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_jobLabel )             | No      | string  | No         | -          | -                 |
| - [metricsPath](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_metricsPath )       | No      | string  | No         | -          | -                 |
| - [namespace](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_namespace )           | No      | string  | No         | -          | -                 |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_scrapeInterval ) | No      | string  | No         | -          | -                 |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_scrapeTimeout )   | No      | string  | No         | -          | -                 |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_address"></a>6.17.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > address`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_enabled"></a>6.17.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_jobLabel"></a>6.17.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > jobLabel`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_metricsPath"></a>6.17.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > metricsPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_namespace"></a>6.17.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_scrapeInterval"></a>6.17.6. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="prometheusRemoteWrite_scrapeSelfRemoteWriteMetrics_scrapeTimeout"></a>6.17.7. Property `grafana-alloy > prometheusRemoteWrite > scrapeSelfRemoteWriteMetrics > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="prometheusRemoteWrite_scrapeTailscaleServices"></a>6.18. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Scrape Tailscale client metrics via ExternalName Services (requires tailscalesd syncer)

| Property                                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                 |
| ---------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------------------------------------------------------------------------------------------------------- |
| - [enabled](#prometheusRemoteWrite_scrapeTailscaleServices_enabled )               | No      | boolean | No         | -          | Enable scraping Tailscale client metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled) |
| - [jobLabel](#prometheusRemoteWrite_scrapeTailscaleServices_jobLabel )             | No      | string  | No         | -          | Job label for scraped metrics                                                                                     |
| - [labelSelector](#prometheusRemoteWrite_scrapeTailscaleServices_labelSelector )   | No      | string  | No         | -          | Label selector to find Tailscale ExternalName Services                                                            |
| - [metricsPath](#prometheusRemoteWrite_scrapeTailscaleServices_metricsPath )       | No      | string  | No         | -          | Path to scrape metrics from on each target                                                                        |
| - [namespace](#prometheusRemoteWrite_scrapeTailscaleServices_namespace )           | No      | string  | No         | -          | Namespace where Tailscale ExternalName Services are created                                                       |
| - [portName](#prometheusRemoteWrite_scrapeTailscaleServices_portName )             | No      | string  | No         | -          | Service port name to scrape (filters targets to only this port)                                                   |
| - [relayAddress](#prometheusRemoteWrite_scrapeTailscaleServices_relayAddress )     | No      | string  | No         | -          | Address of the metrics relay that rewrites the Host header for Tailscale web client compatibility                 |
| - [scrapeInterval](#prometheusRemoteWrite_scrapeTailscaleServices_scrapeInterval ) | No      | string  | No         | -          | Scrape interval for Tailscale client metrics                                                                      |
| - [scrapeTimeout](#prometheusRemoteWrite_scrapeTailscaleServices_scrapeTimeout )   | No      | string  | No         | -          | Scrape timeout for Tailscale client metrics                                                                       |

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_enabled"></a>6.18.1. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping Tailscale client metrics (requires alloyConfig.metrics.enabled and prometheusRemoteWrite.enabled)

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_jobLabel"></a>6.18.2. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > jobLabel`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Job label for scraped metrics

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_labelSelector"></a>6.18.3. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > labelSelector`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Label selector to find Tailscale ExternalName Services

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_metricsPath"></a>6.18.4. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > metricsPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to scrape metrics from on each target

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_namespace"></a>6.18.5. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Namespace where Tailscale ExternalName Services are created

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_portName"></a>6.18.6. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > portName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service port name to scrape (filters targets to only this port)

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_relayAddress"></a>6.18.7. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > relayAddress`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Address of the metrics relay that rewrites the Host header for Tailscale web client compatibility

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_scrapeInterval"></a>6.18.8. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > scrapeInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape interval for Tailscale client metrics

#### <a name="prometheusRemoteWrite_scrapeTailscaleServices_scrapeTimeout"></a>6.18.9. Property `grafana-alloy > prometheusRemoteWrite > scrapeTailscaleServices > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape timeout for Tailscale client metrics

### <a name="prometheusRemoteWrite_scrapeTimeout"></a>6.19. Property `grafana-alloy > prometheusRemoteWrite > scrapeTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scrape timeout for pods, kube-state-metrics, kubelet, and cadvisor scrapes

----------------------------------------------------------------------------------------------------------------------------
