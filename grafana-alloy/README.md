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
| - [centralLoki](#centralLoki )                     | No      | object  | No         | -          | -                                                                         |
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
| - [content](#alloyConfig_content ) | No      | string | No         | -          | Custom Alloy configuration content (River format). If empty, uses default collection config. |
| - [events](#alloyConfig_events )   | No      | object | No         | -          | Enable Kubernetes events collection                                                          |
| - [metrics](#alloyConfig_metrics ) | No      | object | No         | -          | Enable Prometheus metrics collection                                                         |
| - [podLogs](#alloyConfig_podLogs ) | No      | object | No         | -          | Enable pod log collection                                                                    |

### <a name="alloyConfig_content"></a>2.1. Property `grafana-alloy > alloyConfig > content`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom Alloy configuration content (River format). If empty, uses default collection config.

### <a name="alloyConfig_events"></a>2.2. Property `grafana-alloy > alloyConfig > events`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable Kubernetes events collection

| Property                                  | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [enabled](#alloyConfig_events_enabled ) | No      | boolean | No         | -          | Enable collection of Kubernetes events |

#### <a name="alloyConfig_events_enabled"></a>2.2.1. Property `grafana-alloy > alloyConfig > events > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable collection of Kubernetes events

### <a name="alloyConfig_metrics"></a>2.3. Property `grafana-alloy > alloyConfig > metrics`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable Prometheus metrics collection

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description                                                                             |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | --------------------------------------------------------------------------------------------- |
| - [enabled](#alloyConfig_metrics_enabled ) | No      | boolean | No         | -          | Enable scraping of Prometheus metrics from pods (requires prometheusRemoteWrite.enabled=true) |

#### <a name="alloyConfig_metrics_enabled"></a>2.3.1. Property `grafana-alloy > alloyConfig > metrics > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable scraping of Prometheus metrics from pods (requires prometheusRemoteWrite.enabled=true)

### <a name="alloyConfig_podLogs"></a>2.4. Property `grafana-alloy > alloyConfig > podLogs`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Enable pod log collection

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description                            |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | -------------------------------------------- |
| - [enabled](#alloyConfig_podLogs_enabled ) | No      | boolean | No         | -          | Enable collection of pod logs from all nodes |

#### <a name="alloyConfig_podLogs_enabled"></a>2.4.1. Property `grafana-alloy > alloyConfig > podLogs > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable collection of pod logs from all nodes

## <a name="centralLoki"></a>3. Property `grafana-alloy > centralLoki`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                  |
| -------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------ |
| - [basicAuthEnvVar](#centralLoki_basicAuthEnvVar ) | No      | string  | No         | -          | Name of the environment variable containing basic auth credentials |
| - [enabled](#centralLoki_enabled )                 | No      | boolean | No         | -          | Enable central Loki endpoint                                       |
| - [url](#centralLoki_url )                         | No      | string  | No         | -          | URL of the central Loki endpoint                                   |

### <a name="centralLoki_basicAuthEnvVar"></a>3.1. Property `grafana-alloy > centralLoki > basicAuthEnvVar`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the environment variable containing basic auth credentials

### <a name="centralLoki_enabled"></a>3.2. Property `grafana-alloy > centralLoki > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable central Loki endpoint

### <a name="centralLoki_url"></a>3.3. Property `grafana-alloy > centralLoki > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL of the central Loki endpoint

## <a name="clusterName"></a>4. Property `grafana-alloy > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Name of the cluster where this chart is deployed. This value is required.

## <a name="enabled"></a>5. Property `grafana-alloy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable or disable the Grafana Alloy deployment

## <a name="loki"></a>6. Property `grafana-alloy > loki`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                | Pattern | Type   | Deprecated | Definition | Title/Description                 |
| ----------------------- | ------- | ------ | ---------- | ---------- | --------------------------------- |
| - [local](#loki_local ) | No      | object | No         | -          | Local Loki endpoint configuration |

### <a name="loki_local"></a>6.1. Property `grafana-alloy > loki > local`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Local Loki endpoint configuration

| Property                  | Pattern | Type   | Deprecated | Definition | Title/Description              |
| ------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------ |
| - [url](#loki_local_url ) | No      | string | No         | -          | URL of the local Loki instance |

#### <a name="loki_local_url"></a>6.1.1. Property `grafana-alloy > loki > local > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL of the local Loki instance

## <a name="prometheusRemoteWrite"></a>7. Property `grafana-alloy > prometheusRemoteWrite`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type    | Deprecated | Definition | Title/Description               |
| -------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------- |
| - [enabled](#prometheusRemoteWrite_enabled )             | No      | boolean | No         | -          | Enable Prometheus remote write  |
| - [endpoints](#prometheusRemoteWrite_endpoints )         | No      | array   | No         | -          | Array of remote write endpoints |
| - [metricsFilter](#prometheusRemoteWrite_metricsFilter ) | No      | object  | No         | -          | Metrics filtering configuration |

### <a name="prometheusRemoteWrite_enabled"></a>7.1. Property `grafana-alloy > prometheusRemoteWrite > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Prometheus remote write

### <a name="prometheusRemoteWrite_endpoints"></a>7.2. Property `grafana-alloy > prometheusRemoteWrite > endpoints`

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

### <a name="prometheusRemoteWrite_metricsFilter"></a>7.3. Property `grafana-alloy > prometheusRemoteWrite > metricsFilter`

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

#### <a name="prometheusRemoteWrite_metricsFilter_enabled"></a>7.3.1. Property `grafana-alloy > prometheusRemoteWrite > metricsFilter > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable metrics filtering

#### <a name="prometheusRemoteWrite_metricsFilter_regex"></a>7.3.2. Property `grafana-alloy > prometheusRemoteWrite > metricsFilter > regex`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Regex pattern to match metric names to keep

----------------------------------------------------------------------------------------------------------------------------
