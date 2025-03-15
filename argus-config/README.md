# argus-config

**Title:** argus-config

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property             | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [global](#global ) | No      | object | No         | -          | Global parameters |

## <a name="global"></a>1. Property `argus-config > global`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global parameters

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description                   |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------- |
| - [appContext](#global_appContext )           | No      | object | No         | -          | App context (provided by Argus API) |
| - [appSecrets](#global_appSecrets )           | No      | object | No         | -          | App secrets (provided by Argus API) |
| - [deploymentStage](#global_deploymentStage ) | No      | string | No         | -          | Deployment stage                    |
| - [ingress](#global_ingress )                 | No      | object | No         | -          | Ingress configuration               |

### <a name="global_appContext"></a>1.1. Property `argus-config > global > appContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** App context (provided by Argus API)

| Property                                                                     | Pattern | Type   | Deprecated | Definition | Title/Description                              |
| ---------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------- |
| - [envContextConfigMapName](#global_appContext_envContextConfigMapName )     | No      | string | No         | -          | Environment level configuration configmap name |
| - [stackContextConfigMapName](#global_appContext_stackContextConfigMapName ) | No      | string | No         | -          | Stack level configuration configmap name       |

#### <a name="global_appContext_envContextConfigMapName"></a>1.1.1. Property `argus-config > global > appContext > envContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment level configuration configmap name

#### <a name="global_appContext_stackContextConfigMapName"></a>1.1.2. Property `argus-config > global > appContext > stackContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack level configuration configmap name

### <a name="global_appSecrets"></a>1.2. Property `argus-config > global > appSecrets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** App secrets (provided by Argus API)

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterSecret](#global_appSecrets_clusterSecret ) | No      | object | No         | -          | -                 |
| - [envSecret](#global_appSecrets_envSecret )         | No      | object | No         | -          | -                 |
| - [stackSecret](#global_appSecrets_stackSecret )     | No      | object | No         | -          | -                 |

#### <a name="global_appSecrets_clusterSecret"></a>1.2.1. Property `argus-config > global > appSecrets > clusterSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Pattern | Type   | Deprecated | Definition | Title/Description                                           |
| ------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------- |
| - [secretKey](#global_appSecrets_clusterSecret_secretKey )   | No      | string | No         | -          | Cluster-level secret key to map External Secrets from       |
| - [secretName](#global_appSecrets_clusterSecret_secretName ) | No      | string | No         | -          | Cluster-level Kube secret name to write External Secrets to |

##### <a name="global_appSecrets_clusterSecret_secretKey"></a>1.2.1.1. Property `argus-config > global > appSecrets > clusterSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster-level secret key to map External Secrets from

##### <a name="global_appSecrets_clusterSecret_secretName"></a>1.2.1.2. Property `argus-config > global > appSecrets > clusterSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster-level Kube secret name to write External Secrets to

#### <a name="global_appSecrets_envSecret"></a>1.2.2. Property `argus-config > global > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description                                               |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------------- |
| - [secretKey](#global_appSecrets_envSecret_secretKey )   | No      | string | No         | -          | Environment-level secret key to map External Secrets from       |
| - [secretName](#global_appSecrets_envSecret_secretName ) | No      | string | No         | -          | Environment-level Kube secret name to write External Secrets to |

##### <a name="global_appSecrets_envSecret_secretKey"></a>1.2.2.1. Property `argus-config > global > appSecrets > envSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment-level secret key to map External Secrets from

##### <a name="global_appSecrets_envSecret_secretName"></a>1.2.2.2. Property `argus-config > global > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment-level Kube secret name to write External Secrets to

#### <a name="global_appSecrets_stackSecret"></a>1.2.3. Property `argus-config > global > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                                         |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------- |
| - [secretKey](#global_appSecrets_stackSecret_secretKey )   | No      | string | No         | -          | Stack-level secret key to map External Secrets from       |
| - [secretName](#global_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | Stack-level Kube secret name to write External Secrets to |

##### <a name="global_appSecrets_stackSecret_secretKey"></a>1.2.3.1. Property `argus-config > global > appSecrets > stackSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack-level secret key to map External Secrets from

##### <a name="global_appSecrets_stackSecret_secretName"></a>1.2.3.2. Property `argus-config > global > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack-level Kube secret name to write External Secrets to

### <a name="global_deploymentStage"></a>1.3. Property `argus-config > global > deploymentStage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Deployment stage

### <a name="global_ingress"></a>1.4. Property `argus-config > global > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [host](#global_ingress_host ) | No      | string | No         | -          | Ingress host      |

#### <a name="global_ingress_host"></a>1.4.1. Property `argus-config > global > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

----------------------------------------------------------------------------------------------------------------------------
