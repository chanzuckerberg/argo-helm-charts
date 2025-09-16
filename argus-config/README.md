# argus-config

**Title:** argus-config

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

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

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description                    |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------ |
| - [appContext](#global_appContext )           | No      | object | No         | -          | App context (provided by Argus API)  |
| - [appSecrets](#global_appSecrets )           | No      | object | No         | -          | App secrets (provided by Argus API)  |
| - [argoBuildEnv](#global_argoBuildEnv )       | No      | object | No         | -          | Argo built-in environment parameters |
| - [deploymentStage](#global_deploymentStage ) | No      | string | No         | -          | Deployment stage                     |
| - [ingress](#global_ingress )                 | No      | object | No         | -          | Ingress configuration                |

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

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterSecret](#global_appSecrets_clusterSecret )     | No      | object | No         | -          | -                 |
| - [clusterSecretTF](#global_appSecrets_clusterSecretTF ) | No      | object | No         | -          | -                 |
| - [envSecret](#global_appSecrets_envSecret )             | No      | object | No         | -          | -                 |
| - [stackSecret](#global_appSecrets_stackSecret )         | No      | object | No         | -          | -                 |

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

#### <a name="global_appSecrets_clusterSecretTF"></a>1.2.2. Property `argus-config > global > appSecrets > clusterSecretTF`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description                                                            |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------------------------------------- |
| - [secretKey](#global_appSecrets_clusterSecretTF_secretKey )   | No      | string | No         | -          | Cluster-level secret key to map External Secrets from                        |
| - [secretName](#global_appSecrets_clusterSecretTF_secretName ) | No      | string | No         | -          | Cluster-level Kube secret name set by terraform to write External Secrets to |

##### <a name="global_appSecrets_clusterSecretTF_secretKey"></a>1.2.2.1. Property `argus-config > global > appSecrets > clusterSecretTF > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster-level secret key to map External Secrets from

##### <a name="global_appSecrets_clusterSecretTF_secretName"></a>1.2.2.2. Property `argus-config > global > appSecrets > clusterSecretTF > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster-level Kube secret name set by terraform to write External Secrets to

#### <a name="global_appSecrets_envSecret"></a>1.2.3. Property `argus-config > global > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description                                               |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------------- |
| - [secretKey](#global_appSecrets_envSecret_secretKey )   | No      | string | No         | -          | Environment-level secret key to map External Secrets from       |
| - [secretName](#global_appSecrets_envSecret_secretName ) | No      | string | No         | -          | Environment-level Kube secret name to write External Secrets to |

##### <a name="global_appSecrets_envSecret_secretKey"></a>1.2.3.1. Property `argus-config > global > appSecrets > envSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment-level secret key to map External Secrets from

##### <a name="global_appSecrets_envSecret_secretName"></a>1.2.3.2. Property `argus-config > global > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment-level Kube secret name to write External Secrets to

#### <a name="global_appSecrets_stackSecret"></a>1.2.4. Property `argus-config > global > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                                         |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------- |
| - [secretKey](#global_appSecrets_stackSecret_secretKey )   | No      | string | No         | -          | Stack-level secret key to map External Secrets from       |
| - [secretName](#global_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | Stack-level Kube secret name to write External Secrets to |

##### <a name="global_appSecrets_stackSecret_secretKey"></a>1.2.4.1. Property `argus-config > global > appSecrets > stackSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack-level secret key to map External Secrets from

##### <a name="global_appSecrets_stackSecret_secretName"></a>1.2.4.2. Property `argus-config > global > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack-level Kube secret name to write External Secrets to

### <a name="global_argoBuildEnv"></a>1.3. Property `argus-config > global > argoBuildEnv`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argo built-in environment parameters

| Property                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                         |
| -------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------- |
| - [appName](#global_argoBuildEnv_appName )                                 | No      | string | No         | -          | equivalant to ARGOCD_APP_NAME             |
| - [appNamespace](#global_argoBuildEnv_appNamespace )                       | No      | string | No         | -          | equivalant to ARGOCD_APP_NAMESPACE        |
| - [appRevision](#global_argoBuildEnv_appRevision )                         | No      | string | No         | -          | equivalant to ARGOCD_APP_REVISION         |
| - [appRevisionShort](#global_argoBuildEnv_appRevisionShort )               | No      | string | No         | -          | equivalant to ARGOCD_APP_REVISION_SHORT   |
| - [appRevisionShort8](#global_argoBuildEnv_appRevisionShort8 )             | No      | string | No         | -          | equivalant to ARGOCD_APP_REVISION_SHORT_8 |
| - [appSourcePath](#global_argoBuildEnv_appSourcePath )                     | No      | string | No         | -          | equivalant to ARGOCD_APP_SOURCE_PATH      |
| - [appSourceRepoUrl](#global_argoBuildEnv_appSourceRepoUrl )               | No      | string | No         | -          | equivalant to ARGOCD_APP_SOURCE_REPO_URL  |
| - [appSourceTargetRevision](#global_argoBuildEnv_appSourceTargetRevision ) | No      | string | No         | -          | equivalant to ARGOCD_APP_SOURCE_REPO_URL  |

#### <a name="global_argoBuildEnv_appName"></a>1.3.1. Property `argus-config > global > argoBuildEnv > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_NAME

#### <a name="global_argoBuildEnv_appNamespace"></a>1.3.2. Property `argus-config > global > argoBuildEnv > appNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_NAMESPACE

#### <a name="global_argoBuildEnv_appRevision"></a>1.3.3. Property `argus-config > global > argoBuildEnv > appRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_REVISION

#### <a name="global_argoBuildEnv_appRevisionShort"></a>1.3.4. Property `argus-config > global > argoBuildEnv > appRevisionShort`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_REVISION_SHORT

#### <a name="global_argoBuildEnv_appRevisionShort8"></a>1.3.5. Property `argus-config > global > argoBuildEnv > appRevisionShort8`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_REVISION_SHORT_8

#### <a name="global_argoBuildEnv_appSourcePath"></a>1.3.6. Property `argus-config > global > argoBuildEnv > appSourcePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_SOURCE_PATH

#### <a name="global_argoBuildEnv_appSourceRepoUrl"></a>1.3.7. Property `argus-config > global > argoBuildEnv > appSourceRepoUrl`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_SOURCE_REPO_URL

#### <a name="global_argoBuildEnv_appSourceTargetRevision"></a>1.3.8. Property `argus-config > global > argoBuildEnv > appSourceTargetRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** equivalant to ARGOCD_APP_SOURCE_REPO_URL

### <a name="global_deploymentStage"></a>1.4. Property `argus-config > global > deploymentStage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Deployment stage

### <a name="global_ingress"></a>1.5. Property `argus-config > global > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [host](#global_ingress_host ) | No      | string | No         | -          | Ingress host      |

#### <a name="global_ingress_host"></a>1.5.1. Property `argus-config > global > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

----------------------------------------------------------------------------------------------------------------------------
