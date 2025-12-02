# prom2parquet

**Title:** prom2parquet

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                     | Pattern | Type            | Deprecated | Definition | Title/Description                                |
| -------------------------------------------- | ------- | --------------- | ---------- | ---------- | ------------------------------------------------ |
| - [affinity](#affinity )                     | No      | object          | No         | -          | Affinity rules for pod assignment                |
| - [args](#args )                             | No      | array of string | No         | -          | Additional command-line arguments                |
| - [awsCredentials](#awsCredentials )         | No      | object          | No         | -          | -                                                |
| - [backend](#backend )                       | No      | object          | No         | -          | -                                                |
| - [env](#env )                               | No      | array of object | No         | -          | Additional environment variables                 |
| - [envFrom](#envFrom )                       | No      | array of object | No         | -          | Environment variables from ConfigMaps or Secrets |
| - [fullnameOverride](#fullnameOverride )     | No      | string          | No         | -          | Override the full name of the chart              |
| - [image](#image )                           | No      | object          | No         | -          | -                                                |
| - [imagePullSecrets](#imagePullSecrets )     | No      | array of string | No         | -          | Image pull secrets                               |
| - [ingress](#ingress )                       | No      | object          | No         | -          | Ingress configuration                            |
| - [nameOverride](#nameOverride )             | No      | string          | No         | -          | Override the name of the chart                   |
| - [nodeSelector](#nodeSelector )             | No      | object          | No         | -          | Node selector for pod assignment                 |
| - [podAnnotations](#podAnnotations )         | No      | object          | No         | -          | Annotations to add to the pod                    |
| - [podLabels](#podLabels )                   | No      | object          | No         | -          | Labels to add to the pod                         |
| - [podSecurityContext](#podSecurityContext ) | No      | object          | No         | -          | Security context for the pod                     |
| - [replicaCount](#replicaCount )             | No      | integer         | No         | -          | Number of replicas for the deployment            |
| - [resources](#resources )                   | No      | object          | No         | -          | -                                                |
| - [securityContext](#securityContext )       | No      | object          | No         | -          | Security context for the container               |
| - [serverPort](#serverPort )                 | No      | integer         | No         | -          | Port for the prom2parquet server                 |
| - [service](#service )                       | No      | object          | No         | -          | -                                                |
| - [serviceAccount](#serviceAccount )         | No      | object          | No         | -          | -                                                |
| - [tolerations](#tolerations )               | No      | array           | No         | -          | Tolerations for pod assignment                   |

## <a name="affinity"></a>1. Property `prom2parquet > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity rules for pod assignment

## <a name="args"></a>2. Property `prom2parquet > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Additional command-line arguments

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [args items](#args_items)       | -           |

### <a name="args_items"></a>2.1. prom2parquet > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="awsCredentials"></a>3. Property `prom2parquet > awsCredentials`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                    | Pattern | Type   | Deprecated | Definition | Title/Description                                        |
| ----------------------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------------------------- |
| - [accessKeyIdKey](#awsCredentials_accessKeyIdKey )         | No      | string | No         | -          | Key in the secret for AWS_ACCESS_KEY_ID                  |
| - [secretAccessKeyKey](#awsCredentials_secretAccessKeyKey ) | No      | string | No         | -          | Key in the secret for AWS_SECRET_ACCESS_KEY              |
| - [secretName](#awsCredentials_secretName )                 | No      | string | No         | -          | Name of the Kubernetes secret containing AWS credentials |

### <a name="awsCredentials_accessKeyIdKey"></a>3.1. Property `prom2parquet > awsCredentials > accessKeyIdKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Key in the secret for AWS_ACCESS_KEY_ID

### <a name="awsCredentials_secretAccessKeyKey"></a>3.2. Property `prom2parquet > awsCredentials > secretAccessKeyKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Key in the secret for AWS_SECRET_ACCESS_KEY

### <a name="awsCredentials_secretName"></a>3.3. Property `prom2parquet > awsCredentials > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the Kubernetes secret containing AWS credentials

## <a name="backend"></a>4. Property `prom2parquet > backend`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                 | Pattern | Type   | Deprecated | Definition | Title/Description                        |
| ------------------------ | ------- | ------ | ---------- | ---------- | ---------------------------------------- |
| - [root](#backend_root ) | No      | string | No         | -          | Backend root path (e.g., S3 bucket name) |
| - [type](#backend_type ) | No      | string | No         | -          | Backend type (e.g., s3/aws)              |

### <a name="backend_root"></a>4.1. Property `prom2parquet > backend > root`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Backend root path (e.g., S3 bucket name)

### <a name="backend_type"></a>4.2. Property `prom2parquet > backend > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Backend type (e.g., s3/aws)

## <a name="env"></a>5. Property `prom2parquet > env`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Additional environment variables

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [env items](#env_items)         | -           |

### <a name="env_items"></a>5.1. prom2parquet > env > env items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#env_items_name )   | No      | string | No         | -          | -                 |
| - [value](#env_items_value ) | No      | string | No         | -          | -                 |

#### <a name="env_items_name"></a>5.1.1. Property `prom2parquet > env > env items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="env_items_value"></a>5.1.2. Property `prom2parquet > env > env items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="envFrom"></a>6. Property `prom2parquet > envFrom`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Environment variables from ConfigMaps or Secrets

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [envFrom items](#envFrom_items) | -           |

### <a name="envFrom_items"></a>6.1. prom2parquet > envFrom > envFrom items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [configMapRef](#envFrom_items_configMapRef ) | No      | object | No         | -          | -                 |
| - [secretRef](#envFrom_items_secretRef )       | No      | object | No         | -          | -                 |

#### <a name="envFrom_items_configMapRef"></a>6.1.1. Property `prom2parquet > envFrom > envFrom items > configMapRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#envFrom_items_configMapRef_name ) | No      | string | No         | -          | -                 |

##### <a name="envFrom_items_configMapRef_name"></a>6.1.1.1. Property `prom2parquet > envFrom > envFrom items > configMapRef > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="envFrom_items_secretRef"></a>6.1.2. Property `prom2parquet > envFrom > envFrom items > secretRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#envFrom_items_secretRef_name ) | No      | string | No         | -          | -                 |

##### <a name="envFrom_items_secretRef_name"></a>6.1.2.1. Property `prom2parquet > envFrom > envFrom items > secretRef > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="fullnameOverride"></a>7. Property `prom2parquet > fullnameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Override the full name of the chart

## <a name="image"></a>8. Property `prom2parquet > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type             | Deprecated | Definition | Title/Description          |
| ---------------------------------- | ------- | ---------------- | ---------- | ---------- | -------------------------- |
| - [pullPolicy](#image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy          |
| - [repository](#image_repository ) | No      | string           | No         | -          | Container image repository |
| - [tag](#image_tag )               | No      | string           | No         | -          | Container image tag        |

### <a name="image_pullPolicy"></a>8.1. Property `prom2parquet > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

### <a name="image_repository"></a>8.2. Property `prom2parquet > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Container image repository

### <a name="image_tag"></a>8.3. Property `prom2parquet > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Container image tag

## <a name="imagePullSecrets"></a>9. Property `prom2parquet > imagePullSecrets`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Image pull secrets

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [imagePullSecrets items](#imagePullSecrets_items) | -           |

### <a name="imagePullSecrets_items"></a>9.1. prom2parquet > imagePullSecrets > imagePullSecrets items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="ingress"></a>10. Property `prom2parquet > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                                   | Pattern | Type            | Deprecated | Definition | Title/Description                  |
| ------------------------------------------ | ------- | --------------- | ---------- | ---------- | ---------------------------------- |
| - [annotations](#ingress_annotations )     | No      | object          | No         | -          | -                                  |
| - [className](#ingress_className )         | No      | string          | No         | -          | Ingress class name                 |
| - [enabled](#ingress_enabled )             | No      | boolean         | No         | -          | Enable ingress                     |
| - [host](#ingress_host )                   | No      | string          | No         | -          | Ingress host                       |
| - [oidcProtected](#ingress_oidcProtected ) | No      | boolean         | No         | -          | Enable OIDC protection             |
| - [paths](#ingress_paths )                 | No      | array of object | No         | -          | List of ingress paths              |
| - [rules](#ingress_rules )                 | No      | array           | No         | -          | List of ingress rules              |
| - [tls](#ingress_tls )                     | No      | array           | No         | -          | List of ingress TLS configurations |

### <a name="ingress_annotations"></a>10.1. Property `prom2parquet > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [nginx.ingress.kubernetes.io/affinity](#ingress_annotations_nginxingresskubernetesio/affinity )                             | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-connect-timeout](#ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout )   | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-read-timeout](#ingress_annotations_nginxingresskubernetesio/proxy-read-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-send-timeout](#ingress_annotations_nginxingresskubernetesio/proxy-send-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-max-age](#ingress_annotations_nginxingresskubernetesio/session-cookie-max-age ) | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-name](#ingress_annotations_nginxingresskubernetesio/session-cookie-name )       | No      | string | No         | -          | -                 |

#### <a name="ingress_annotations_nginxingresskubernetesio/affinity"></a>10.1.1. Property `prom2parquet > ingress > annotations > nginx.ingress.kubernetes.io/affinity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout"></a>10.1.2. Property `prom2parquet > ingress > annotations > nginx.ingress.kubernetes.io/proxy-connect-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/proxy-read-timeout"></a>10.1.3. Property `prom2parquet > ingress > annotations > nginx.ingress.kubernetes.io/proxy-read-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/proxy-send-timeout"></a>10.1.4. Property `prom2parquet > ingress > annotations > nginx.ingress.kubernetes.io/proxy-send-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/session-cookie-max-age"></a>10.1.5. Property `prom2parquet > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-max-age`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="ingress_annotations_nginxingresskubernetesio/session-cookie-name"></a>10.1.6. Property `prom2parquet > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="ingress_className"></a>10.2. Property `prom2parquet > ingress > className`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress class name

### <a name="ingress_enabled"></a>10.3. Property `prom2parquet > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress

### <a name="ingress_host"></a>10.4. Property `prom2parquet > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

### <a name="ingress_oidcProtected"></a>10.5. Property `prom2parquet > ingress > oidcProtected`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC protection

### <a name="ingress_paths"></a>10.6. Property `prom2parquet > ingress > paths`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** List of ingress paths

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be     | Description |
| ----------------------------------- | ----------- |
| [paths items](#ingress_paths_items) | -           |

#### <a name="ingress_paths_items"></a>10.6.1. prom2parquet > ingress > paths > paths items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#ingress_paths_items_path )         | No      | string | No         | -          | Ingress path      |
| - [pathType](#ingress_paths_items_pathType ) | No      | string | No         | -          | Ingress path type |

##### <a name="ingress_paths_items_path"></a>10.6.1.1. Property `prom2parquet > ingress > paths > paths items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path

##### <a name="ingress_paths_items_pathType"></a>10.6.1.2. Property `prom2parquet > ingress > paths > paths items > pathType`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path type

### <a name="ingress_rules"></a>10.7. Property `prom2parquet > ingress > rules`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of ingress rules

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="ingress_tls"></a>10.8. Property `prom2parquet > ingress > tls`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of ingress TLS configurations

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="nameOverride"></a>11. Property `prom2parquet > nameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Override the name of the chart

## <a name="nodeSelector"></a>12. Property `prom2parquet > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Node selector for pod assignment

## <a name="podAnnotations"></a>13. Property `prom2parquet > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the pod

## <a name="podLabels"></a>14. Property `prom2parquet > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Labels to add to the pod

## <a name="podSecurityContext"></a>15. Property `prom2parquet > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context for the pod

## <a name="replicaCount"></a>16. Property `prom2parquet > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas for the deployment

## <a name="resources"></a>17. Property `prom2parquet > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#resources_requests ) | No      | object | No         | -          | -                 |

### <a name="resources_limits"></a>17.1. Property `prom2parquet > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                              | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

#### <a name="resources_limits_cpu"></a>17.1.1. Property `prom2parquet > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                           |
| ---------------------------------------- |
| [item 0](#resources_limits_cpu_oneOf_i0) |
| [item 1](#resources_limits_cpu_oneOf_i1) |

##### <a name="resources_limits_cpu_oneOf_i0"></a>17.1.1.1. Property `prom2parquet > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="resources_limits_cpu_oneOf_i1"></a>17.1.1.2. Property `prom2parquet > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

#### <a name="resources_limits_memory"></a>17.1.2. Property `prom2parquet > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

### <a name="resources_requests"></a>17.2. Property `prom2parquet > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type        | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

#### <a name="resources_requests_cpu"></a>17.2.1. Property `prom2parquet > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                             |
| ------------------------------------------ |
| [item 0](#resources_requests_cpu_oneOf_i0) |
| [item 1](#resources_requests_cpu_oneOf_i1) |

##### <a name="resources_requests_cpu_oneOf_i0"></a>17.2.1.1. Property `prom2parquet > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="resources_requests_cpu_oneOf_i1"></a>17.2.1.2. Property `prom2parquet > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

#### <a name="resources_requests_memory"></a>17.2.2. Property `prom2parquet > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

## <a name="securityContext"></a>18. Property `prom2parquet > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context for the container

| Property                                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                  |
| ------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ---------------------------------- |
| - [allowPrivilegeEscalation](#securityContext_allowPrivilegeEscalation ) | No      | boolean | No         | -          | Prevent privilege escalation       |
| - [readOnlyRootFilesystem](#securityContext_readOnlyRootFilesystem )     | No      | boolean | No         | -          | Mount root filesystem as read-only |
| - [runAsNonRoot](#securityContext_runAsNonRoot )                         | No      | boolean | No         | -          | Run container as non-root user     |

### <a name="securityContext_allowPrivilegeEscalation"></a>18.1. Property `prom2parquet > securityContext > allowPrivilegeEscalation`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Prevent privilege escalation

### <a name="securityContext_readOnlyRootFilesystem"></a>18.2. Property `prom2parquet > securityContext > readOnlyRootFilesystem`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Mount root filesystem as read-only

### <a name="securityContext_runAsNonRoot"></a>18.3. Property `prom2parquet > securityContext > runAsNonRoot`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Run container as non-root user

## <a name="serverPort"></a>19. Property `prom2parquet > serverPort`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Port for the prom2parquet server

## <a name="service"></a>20. Property `prom2parquet > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                 | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [port](#service_port ) | No      | integer | No         | -          | Service port      |
| - [type](#service_type ) | No      | string  | No         | -          | Service type      |

### <a name="service_port"></a>20.1. Property `prom2parquet > service > port`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Service port

### <a name="service_type"></a>20.2. Property `prom2parquet > service > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service type

## <a name="serviceAccount"></a>21. Property `prom2parquet > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type    | Deprecated | Definition | Title/Description                                                                     |
| --------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [annotations](#serviceAccount_annotations ) | No      | object  | No         | -          | Annotations to add to the service account (e.g., eks.amazonaws.com/role-arn for IRSA) |
| - [automount](#serviceAccount_automount )     | No      | boolean | No         | -          | Automatically mount a ServiceAccount's API credentials                                |
| - [create](#serviceAccount_create )           | No      | boolean | No         | -          | Specifies whether a service account should be created                                 |
| - [name](#serviceAccount_name )               | No      | string  | No         | -          | The name of the service account to use                                                |

### <a name="serviceAccount_annotations"></a>21.1. Property `prom2parquet > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the service account (e.g., eks.amazonaws.com/role-arn for IRSA)

### <a name="serviceAccount_automount"></a>21.2. Property `prom2parquet > serviceAccount > automount`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Automatically mount a ServiceAccount's API credentials

### <a name="serviceAccount_create"></a>21.3. Property `prom2parquet > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether a service account should be created

### <a name="serviceAccount_name"></a>21.4. Property `prom2parquet > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** The name of the service account to use

## <a name="tolerations"></a>22. Property `prom2parquet > tolerations`

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

----------------------------------------------------------------------------------------------------------------------------
