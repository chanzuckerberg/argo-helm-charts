# cluster-healthcheck

**Title:** cluster-healthcheck

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type    | Deprecated | Definition | Title/Description                                 |
| ---------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------- |
| - [affinity](#affinity )                       | No      | object  | No         | -          | Pod affinity and anti-affinity rules              |
| - [image](#image )                             | No      | object  | No         | -          | Container image configuration                     |
| - [ingress](#ingress )                         | No      | object  | No         | -          | Ingress configuration                             |
| - [podAnnotations](#podAnnotations )           | No      | object  | No         | -          | Annotations to add to pods                        |
| - [podDisruptionBudget](#podDisruptionBudget ) | No      | object  | No         | -          | Pod disruption budget configuration               |
| - [priorityClassName](#priorityClassName )     | No      | string  | No         | -          | Priority class name for pod scheduling            |
| - [replicaCount](#replicaCount )               | No      | integer | No         | -          | Number of replicas for the healthcheck deployment |
| - [resources](#resources )                     | No      | object  | No         | -          | Resource requests and limits                      |
| - [service](#service )                         | No      | object  | No         | -          | Service configuration                             |

## <a name="affinity"></a>1. Property `cluster-healthcheck > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod affinity and anti-affinity rules

| Property                                  | Pattern | Type   | Deprecated | Definition | Title/Description   |
| ----------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------- |
| - [nodeAffinity](#affinity_nodeAffinity ) | No      | object | No         | -          | Node affinity rules |

### <a name="affinity_nodeAffinity"></a>1.1. Property `cluster-healthcheck > affinity > nodeAffinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Node affinity rules

| Property                                                                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description            |
| -------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------- |
| - [requiredDuringSchedulingIgnoredDuringExecution](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution ) | No      | object | No         | -          | Required node affinity rules |

#### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution"></a>1.1.1. Property `cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Required node affinity rules

| Property                                                                                                        | Pattern | Type            | Deprecated | Definition | Title/Description   |
| --------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ------------------- |
| - [nodeSelectorTerms](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms ) | No      | array of object | No         | -          | Node selector terms |

##### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms"></a>1.1.1.1. Property `cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Node selector terms

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                                          | Description |
| ------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [nodeSelectorTerms items](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items) | -           |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items"></a>1.1.1.1.1. cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                              | Pattern | Type            | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [matchExpressions](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions ) | No      | array of object | No         | -          | -                 |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions"></a>1.1.1.1.1.1. Property `cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items > matchExpressions`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                                                                | Description |
| ---------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [matchExpressions items](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items) | -           |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items"></a>1.1.1.1.1.1.1. cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items > matchExpressions > matchExpressions items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                     | Pattern | Type            | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [key](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_key )           | No      | string          | No         | -          | -                 |
| - [operator](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_operator ) | No      | string          | No         | -          | -                 |
| - [values](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_values )     | No      | array of string | No         | -          | -                 |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_key"></a>1.1.1.1.1.1.1.1. Property `cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items > matchExpressions > matchExpressions items > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_operator"></a>1.1.1.1.1.1.1.2. Property `cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items > matchExpressions > matchExpressions items > operator`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_values"></a>1.1.1.1.1.1.1.3. Property `cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items > matchExpressions > matchExpressions items > values`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                                                                   | Description |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [values items](#affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_values_items) | -           |

###### <a name="affinity_nodeAffinity_requiredDuringSchedulingIgnoredDuringExecution_nodeSelectorTerms_items_matchExpressions_items_values_items"></a>1.1.1.1.1.1.1.3.1. cluster-healthcheck > affinity > nodeAffinity > requiredDuringSchedulingIgnoredDuringExecution > nodeSelectorTerms > nodeSelectorTerms items > matchExpressions > matchExpressions items > values > values items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="image"></a>2. Property `cluster-healthcheck > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Container image configuration

| Property                           | Pattern | Type             | Deprecated | Definition | Title/Description          |
| ---------------------------------- | ------- | ---------------- | ---------- | ---------- | -------------------------- |
| - [pullPolicy](#image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy          |
| - [repository](#image_repository ) | No      | string           | No         | -          | Container image repository |
| - [tag](#image_tag )               | No      | string           | No         | -          | Container image tag        |

### <a name="image_pullPolicy"></a>2.1. Property `cluster-healthcheck > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

### <a name="image_repository"></a>2.2. Property `cluster-healthcheck > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Container image repository

### <a name="image_tag"></a>2.3. Property `cluster-healthcheck > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Container image tag

## <a name="ingress"></a>3. Property `cluster-healthcheck > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                               | Pattern | Type             | Deprecated | Definition | Title/Description                             |
| -------------------------------------- | ------- | ---------------- | ---------- | ---------- | --------------------------------------------- |
| - [annotations](#ingress_annotations ) | No      | object           | No         | -          | Ingress annotations                           |
| - [className](#ingress_className )     | No      | string           | No         | -          | Ingress class name                            |
| - [enabled](#ingress_enabled )         | No      | boolean          | No         | -          | Enable ingress for external access            |
| - [hostname](#ingress_hostname )       | No      | string           | No         | -          | Ingress hostname for the healthcheck endpoint |
| - [path](#ingress_path )               | No      | string           | No         | -          | Ingress path                                  |
| - [pathType](#ingress_pathType )       | No      | enum (of string) | No         | -          | Path type for ingress routing                 |
| - [tls](#ingress_tls )                 | No      | object           | No         | -          | TLS configuration for ingress                 |

### <a name="ingress_annotations"></a>3.1. Property `cluster-healthcheck > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress annotations

| Property                                                                                                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [external-dns.alpha.kubernetes.io/exclude](#ingress_annotations_external-dnsalphakubernetesio/exclude )                   | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-connect-timeout](#ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout ) | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-read-timeout](#ingress_annotations_nginxingresskubernetesio/proxy-read-timeout )       | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-send-timeout](#ingress_annotations_nginxingresskubernetesio/proxy-send-timeout )       | No      | string | No         | -          | -                 |

#### <a name="ingress_annotations_external-dnsalphakubernetesio/exclude"></a>3.1.1. Property `cluster-healthcheck > ingress > annotations > external-dns.alpha.kubernetes.io/exclude`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout"></a>3.1.2. Property `cluster-healthcheck > ingress > annotations > nginx.ingress.kubernetes.io/proxy-connect-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/proxy-read-timeout"></a>3.1.3. Property `cluster-healthcheck > ingress > annotations > nginx.ingress.kubernetes.io/proxy-read-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/proxy-send-timeout"></a>3.1.4. Property `cluster-healthcheck > ingress > annotations > nginx.ingress.kubernetes.io/proxy-send-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="ingress_className"></a>3.2. Property `cluster-healthcheck > ingress > className`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress class name

### <a name="ingress_enabled"></a>3.3. Property `cluster-healthcheck > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress for external access

### <a name="ingress_hostname"></a>3.4. Property `cluster-healthcheck > ingress > hostname`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress hostname for the healthcheck endpoint

### <a name="ingress_path"></a>3.5. Property `cluster-healthcheck > ingress > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path

### <a name="ingress_pathType"></a>3.6. Property `cluster-healthcheck > ingress > pathType`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Path type for ingress routing

Must be one of:
* "Prefix"
* "Exact"
* "ImplementationSpecific"

### <a name="ingress_tls"></a>3.7. Property `cluster-healthcheck > ingress > tls`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** TLS configuration for ingress

| Property                                 | Pattern | Type    | Deprecated | Definition | Title/Description      |
| ---------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#ingress_tls_enabled )       | No      | boolean | No         | -          | Enable TLS for ingress |
| - [secretName](#ingress_tls_secretName ) | No      | string  | No         | -          | Name of the TLS secret |

#### <a name="ingress_tls_enabled"></a>3.7.1. Property `cluster-healthcheck > ingress > tls > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable TLS for ingress

#### <a name="ingress_tls_secretName"></a>3.7.2. Property `cluster-healthcheck > ingress > tls > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the TLS secret

## <a name="podAnnotations"></a>4. Property `cluster-healthcheck > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to pods

| Property                                                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [karpenter.sh/do-not-disrupt](#podAnnotations_karpentersh/do-not-disrupt ) | No      | string | No         | -          | -                 |

### <a name="podAnnotations_karpentersh/do-not-disrupt"></a>4.1. Property `cluster-healthcheck > podAnnotations > karpenter.sh/do-not-disrupt`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="podDisruptionBudget"></a>5. Property `cluster-healthcheck > podDisruptionBudget`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod disruption budget configuration

| Property                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                                    |
| -------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------------------------------------- |
| - [enabled](#podDisruptionBudget_enabled )               | No      | boolean | No         | -          | Enable pod disruption budget                         |
| - [maxUnavailable](#podDisruptionBudget_maxUnavailable ) | No      | integer | No         | -          | Maximum number of unavailable pods during disruption |

### <a name="podDisruptionBudget_enabled"></a>5.1. Property `cluster-healthcheck > podDisruptionBudget > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable pod disruption budget

### <a name="podDisruptionBudget_maxUnavailable"></a>5.2. Property `cluster-healthcheck > podDisruptionBudget > maxUnavailable`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum number of unavailable pods during disruption

## <a name="priorityClassName"></a>6. Property `cluster-healthcheck > priorityClassName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Priority class name for pod scheduling

## <a name="replicaCount"></a>7. Property `cluster-healthcheck > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas for the healthcheck deployment

## <a name="resources"></a>8. Property `cluster-healthcheck > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests and limits

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#resources_limits )     | No      | object | No         | -          | Resource limits   |
| - [requests](#resources_requests ) | No      | object | No         | -          | Resource requests |

### <a name="resources_limits"></a>8.1. Property `cluster-healthcheck > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource limits

| Property                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_limits_cpu )       | No      | string | No         | -          | CPU limit         |
| - [memory](#resources_limits_memory ) | No      | string | No         | -          | Memory limit      |

#### <a name="resources_limits_cpu"></a>8.1.1. Property `cluster-healthcheck > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CPU limit

#### <a name="resources_limits_memory"></a>8.1.2. Property `cluster-healthcheck > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

### <a name="resources_requests"></a>8.2. Property `cluster-healthcheck > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_requests_cpu )       | No      | string | No         | -          | CPU request       |
| - [memory](#resources_requests_memory ) | No      | string | No         | -          | Memory request    |

#### <a name="resources_requests_cpu"></a>8.2.1. Property `cluster-healthcheck > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CPU request

#### <a name="resources_requests_memory"></a>8.2.2. Property `cluster-healthcheck > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

## <a name="service"></a>9. Property `cluster-healthcheck > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service configuration

| Property                             | Pattern | Type             | Deprecated | Definition | Title/Description       |
| ------------------------------------ | ------- | ---------------- | ---------- | ---------- | ----------------------- |
| - [port](#service_port )             | No      | integer          | No         | -          | Service port            |
| - [targetPort](#service_targetPort ) | No      | integer          | No         | -          | Container target port   |
| - [type](#service_type )             | No      | enum (of string) | No         | -          | Kubernetes service type |

### <a name="service_port"></a>9.1. Property `cluster-healthcheck > service > port`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Service port

### <a name="service_targetPort"></a>9.2. Property `cluster-healthcheck > service > targetPort`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Container target port

### <a name="service_type"></a>9.3. Property `cluster-healthcheck > service > type`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Kubernetes service type

Must be one of:
* "ClusterIP"
* "NodePort"
* "LoadBalancer"

----------------------------------------------------------------------------------------------------------------------------
