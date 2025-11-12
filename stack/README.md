# stack

**Title:** stack

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                               | Pattern | Type   | Deprecated | Definition | Title/Description                                                                                            |
| -------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------ |
| - [argus-config](#argus-config )       | No      | object | No         | -          | Allows values for the argus-config Helm chart                                                                |
| - [cronJobs](#cronJobs )               | No      | object | No         | -          | Cron jobs to deploy                                                                                          |
| - [global](#global )                   | No      | object | No         | -          | Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs |
| - [jobs](#jobs )                       | No      | object | No         | -          | Jobs to deploy                                                                                               |
| - [rollout](#rollout )                 | No      | object | No         | -          | -                                                                                                            |
| - [rolloutAnalysis](#rolloutAnalysis ) | No      | object | No         | -          | defines a template that is used to create a analysisRun                                                      |
| - [services](#services )               | No      | object | No         | -          | Services to deploy                                                                                           |

## <a name="argus-config"></a>1. Property `stack > argus-config`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Allows values for the argus-config Helm chart

## <a name="cronJobs"></a>2. Property `stack > cronJobs`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Cron jobs to deploy

| Property                      | Pattern | Type   | Deprecated | Definition             | Title/Description                                                                                            |
| ----------------------------- | ------- | ------ | ---------- | ---------------------- | ------------------------------------------------------------------------------------------------------------ |
| - [^.*$](#cronJobs_pattern1 ) | Yes     | object | No         | In #/properties/global | Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs |

### <a name="cronJobs_pattern1"></a>2.1. Pattern Property `stack > cronJobs > global`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | #/properties/global |

**Description:** Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs

| Property                                                                     | Pattern | Type             | Deprecated | Definition              | Title/Description                                                                                                                           |
| ---------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| - [affinity](#cronJobs_pattern1_affinity )                                   | No      | object           | No         | -                       | Affinity for the pod                                                                                                                        |
| - [annotations](#cronJobs_pattern1_annotations )                             | No      | object           | No         | -                       | Global annotations to add to all resources                                                                                                  |
| - [appContext](#cronJobs_pattern1_appContext )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [appSecrets](#cronJobs_pattern1_appSecrets )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [argoBuildEnv](#cronJobs_pattern1_argoBuildEnv )                           | No      | object           | No         | -                       | Argo built-in environment parameters (provided by Argus API)                                                                                |
| - [args](#cronJobs_pattern1_args )                                           | No      | array of string  | No         | -                       | Arguments to pass to the command in the primary container                                                                                   |
| - [argusMetadata](#cronJobs_pattern1_argusMetadata )                         | No      | object           | No         | -                       | Argus metadata (provided by Argus API)                                                                                                      |
| - [autoscaling](#cronJobs_pattern1_autoscaling )                             | No      | object           | No         | -                       | Autoscaling configuration                                                                                                                   |
| - [command](#cronJobs_pattern1_command )                                     | No      | array of string  | No         | -                       | Command to run in the primary container                                                                                                     |
| - [deploymentKind](#cronJobs_pattern1_deploymentKind )                       | No      | enum (of string) | No         | -                       | Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).                                         |
| - [deploymentStage](#cronJobs_pattern1_deploymentStage )                     | No      | string           | No         | -                       | Deployment stage                                                                                                                            |
| - [dnsPolicy](#cronJobs_pattern1_dnsPolicy )                                 | No      | enum (of string) | No         | -                       | DNS policy for the pod                                                                                                                      |
| - [env](#cronJobs_pattern1_env )                                             | No      | array of object  | No         | -                       | -                                                                                                                                           |
| - [envFrom](#cronJobs_pattern1_envFrom )                                     | No      | array of object  | No         | -                       | Environment variables from configmaps or secrets                                                                                            |
| - [fullnameOverride](#cronJobs_pattern1_fullnameOverride )                   | No      | string           | No         | -                       | Name to prefix the K8s resources with, replaces the stack name prefix                                                                       |
| - [image](#cronJobs_pattern1_image )                                         | No      | object           | No         | -                       | -                                                                                                                                           |
| - [imagePullSecrets](#cronJobs_pattern1_imagePullSecrets )                   | No      | array of string  | No         | -                       | -                                                                                                                                           |
| - [ingress](#cronJobs_pattern1_ingress )                                     | No      | object           | No         | -                       | Ingress configuration                                                                                                                       |
| - [initContainers](#cronJobs_pattern1_initContainers )                       | No      | array            | No         | -                       | List of init containers                                                                                                                     |
| - [livenessProbe](#cronJobs_pattern1_livenessProbe )                         | No      | object           | No         | -                       | Liveness probe configuration                                                                                                                |
| - [nameOverride](#cronJobs_pattern1_nameOverride )                           | No      | string           | No         | -                       | Name to prefix the K8s resources with, combined with the stack name prefix                                                                  |
| - [nodeSelector](#cronJobs_pattern1_nodeSelector )                           | No      | object           | No         | -                       | -                                                                                                                                           |
| - [oidcProxy](#cronJobs_pattern1_oidcProxy )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [persistence](#cronJobs_pattern1_persistence )                             | No      | object           | No         | -                       | -                                                                                                                                           |
| - [podAnnotations](#cronJobs_pattern1_podAnnotations )                       | No      | object           | No         | -                       | Annotations to add to pods                                                                                                                  |
| - [podLabels](#cronJobs_pattern1_podLabels )                                 | No      | object           | No         | -                       | Global labels to add to all pods                                                                                                            |
| - [podSecurityContext](#cronJobs_pattern1_podSecurityContext )               | No      | object           | No         | -                       | Pod security context                                                                                                                        |
| - [progressDeadlineSeconds](#cronJobs_pattern1_progressDeadlineSeconds )     | No      | integer          | No         | -                       | the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled |
| - [readinessProbe](#cronJobs_pattern1_readinessProbe )                       | No      | object           | No         | -                       | Readiness probe configuration                                                                                                               |
| - [replicaCount](#cronJobs_pattern1_replicaCount )                           | No      | integer          | No         | -                       | Number of replicas                                                                                                                          |
| - [resources](#cronJobs_pattern1_resources )                                 | No      | object           | No         | -                       | Resource requests and limits for the primary container                                                                                      |
| - [restartPolicy](#cronJobs_pattern1_restartPolicy )                         | No      | enum (of string) | No         | -                       | Restart policy for the pod                                                                                                                  |
| - [rollout](#cronJobs_pattern1_rollout )                                     | No      | object           | No         | In #/properties/rollout | -                                                                                                                                           |
| - [s3Storage](#cronJobs_pattern1_s3Storage )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [securityContext](#cronJobs_pattern1_securityContext )                     | No      | object           | No         | -                       | Security context                                                                                                                            |
| - [service](#cronJobs_pattern1_service )                                     | No      | object           | No         | -                       | Service configuration                                                                                                                       |
| - [serviceAccount](#cronJobs_pattern1_serviceAccount )                       | No      | object           | No         | -                       | Service account configuration                                                                                                               |
| - [shareProcessNamespace](#cronJobs_pattern1_shareProcessNamespace )         | No      | boolean          | No         | -                       | Share process namespace                                                                                                                     |
| - [sidecars](#cronJobs_pattern1_sidecars )                                   | No      | array            | No         | -                       | List of sidecars                                                                                                                            |
| - [startupProbe](#cronJobs_pattern1_startupProbe )                           | No      | object           | No         | -                       | Startup probe configuration                                                                                                                 |
| - [tolerations](#cronJobs_pattern1_tolerations )                             | No      | array            | No         | -                       | Tolerations for the pod                                                                                                                     |
| - [topologySpreadConstraints](#cronJobs_pattern1_topologySpreadConstraints ) | No      | array            | No         | -                       | Topology spread constraints for the pod                                                                                                     |
| - [volumeMounts](#cronJobs_pattern1_volumeMounts )                           | No      | array            | No         | -                       | Additional volume mounts on the output Deployment definition                                                                                |
| - [volumes](#cronJobs_pattern1_volumes )                                     | No      | array            | No         | -                       | Additional volumes on the output Deployment definition                                                                                      |

#### <a name="cronJobs_pattern1_affinity"></a>2.1.1. Property `stack > cronJobs > ^.*$ > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity for the pod

#### <a name="cronJobs_pattern1_annotations"></a>2.1.2. Property `stack > cronJobs > ^.*$ > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global annotations to add to all resources

#### <a name="cronJobs_pattern1_appContext"></a>2.1.3. Property `stack > cronJobs > ^.*$ > appContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [envContextConfigMapName](#cronJobs_pattern1_appContext_envContextConfigMapName )     | No      | string | No         | -          | -                 |
| - [stackContextConfigMapName](#cronJobs_pattern1_appContext_stackContextConfigMapName ) | No      | string | No         | -          | -                 |

##### <a name="cronJobs_pattern1_appContext_envContextConfigMapName"></a>2.1.3.1. Property `stack > cronJobs > ^.*$ > appContext > envContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appContext_stackContextConfigMapName"></a>2.1.3.2. Property `stack > cronJobs > ^.*$ > appContext > stackContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_appSecrets"></a>2.1.4. Property `stack > cronJobs > ^.*$ > appSecrets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterSecret](#cronJobs_pattern1_appSecrets_clusterSecret ) | No      | object | No         | -          | -                 |
| - [envSecret](#cronJobs_pattern1_appSecrets_envSecret )         | No      | object | No         | -          | -                 |
| - [stackSecret](#cronJobs_pattern1_appSecrets_stackSecret )     | No      | object | No         | -          | -                 |

##### <a name="cronJobs_pattern1_appSecrets_clusterSecret"></a>2.1.4.1. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_clusterSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_clusterSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_clusterSecret_secretKey"></a>2.1.4.1.1. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_clusterSecret_secretName"></a>2.1.4.1.2. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appSecrets_envSecret"></a>2.1.4.2. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_envSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_envSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_envSecret_secretKey"></a>2.1.4.2.1. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_envSecret_secretName"></a>2.1.4.2.2. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appSecrets_stackSecret"></a>2.1.4.3. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_stackSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_stackSecret_secretKey"></a>2.1.4.3.1. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_stackSecret_secretName"></a>2.1.4.3.2. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_argoBuildEnv"></a>2.1.5. Property `stack > cronJobs > ^.*$ > argoBuildEnv`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argo built-in environment parameters (provided by Argus API)

| Property                                                                              | Pattern | Type   | Deprecated | Definition | Title/Description                                                                         |
| ------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------------------------------------- |
| - [appName](#cronJobs_pattern1_argoBuildEnv_appName )                                 | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name) |
| - [appNamespace](#cronJobs_pattern1_argoBuildEnv_appNamespace )                       | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAMESPACE                                                  |
| - [appRevision](#cronJobs_pattern1_argoBuildEnv_appRevision )                         | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION                                                   |
| - [appRevisionShort](#cronJobs_pattern1_argoBuildEnv_appRevisionShort )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT                                             |
| - [appRevisionShort8](#cronJobs_pattern1_argoBuildEnv_appRevisionShort8 )             | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT_8                                           |
| - [appSourcePath](#cronJobs_pattern1_argoBuildEnv_appSourcePath )                     | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_PATH                                                |
| - [appSourceRepoUrl](#cronJobs_pattern1_argoBuildEnv_appSourceRepoUrl )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |
| - [appSourceTargetRevision](#cronJobs_pattern1_argoBuildEnv_appSourceTargetRevision ) | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |

##### <a name="cronJobs_pattern1_argoBuildEnv_appName"></a>2.1.5.1. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name)

##### <a name="cronJobs_pattern1_argoBuildEnv_appNamespace"></a>2.1.5.2. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAMESPACE

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevision"></a>2.1.5.3. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevisionShort"></a>2.1.5.4. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevisionShort`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevisionShort8"></a>2.1.5.5. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevisionShort8`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT_8

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourcePath"></a>2.1.5.6. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourcePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_PATH

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourceRepoUrl"></a>2.1.5.7. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourceRepoUrl`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourceTargetRevision"></a>2.1.5.8. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourceTargetRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

#### <a name="cronJobs_pattern1_args"></a>2.1.6. Property `stack > cronJobs > ^.*$ > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Arguments to pass to the command in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be             | Description |
| ------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_args_items) | -           |

##### <a name="cronJobs_pattern1_args_items"></a>2.1.6.1. stack > cronJobs > ^.*$ > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_argusMetadata"></a>2.1.7. Property `stack > cronJobs > ^.*$ > argusMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus metadata (provided by Argus API)

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                          |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------ |
| - [appName](#cronJobs_pattern1_argusMetadata_appName )     | No      | string | No         | -          | Set by Argus API to Argus app name         |
| - [envName](#cronJobs_pattern1_argusMetadata_envName )     | No      | string | No         | -          | Set by Argus API to Argus environment name |
| - [repoName](#cronJobs_pattern1_argusMetadata_repoName )   | No      | string | No         | -          | Set by Argus API to Argus repository name  |
| - [repoOwner](#cronJobs_pattern1_argusMetadata_repoOwner ) | No      | string | No         | -          | Set by Argus API to Argus repository owner |
| - [stackName](#cronJobs_pattern1_argusMetadata_stackName ) | No      | string | No         | -          | Set by Argus API to Argus stack name       |

##### <a name="cronJobs_pattern1_argusMetadata_appName"></a>2.1.7.1. Property `stack > cronJobs > ^.*$ > argusMetadata > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus app name

##### <a name="cronJobs_pattern1_argusMetadata_envName"></a>2.1.7.2. Property `stack > cronJobs > ^.*$ > argusMetadata > envName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus environment name

##### <a name="cronJobs_pattern1_argusMetadata_repoName"></a>2.1.7.3. Property `stack > cronJobs > ^.*$ > argusMetadata > repoName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository name

##### <a name="cronJobs_pattern1_argusMetadata_repoOwner"></a>2.1.7.4. Property `stack > cronJobs > ^.*$ > argusMetadata > repoOwner`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository owner

##### <a name="cronJobs_pattern1_argusMetadata_stackName"></a>2.1.7.5. Property `stack > cronJobs > ^.*$ > argusMetadata > stackName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus stack name

#### <a name="cronJobs_pattern1_autoscaling"></a>2.1.8. Property `stack > cronJobs > ^.*$ > autoscaling`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Autoscaling configuration

| Property                                                                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                    |
| -------------------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------ |
| - [enabled](#cronJobs_pattern1_autoscaling_enabled )                                                     | No      | boolean | No         | -          | Enable autoscaling                   |
| - [maxReplicas](#cronJobs_pattern1_autoscaling_maxReplicas )                                             | No      | integer | No         | -          | Maximum number of replicas           |
| - [minReplicas](#cronJobs_pattern1_autoscaling_minReplicas )                                             | No      | integer | No         | -          | Minimum number of replicas           |
| - [targetCPUUtilizationPercentage](#cronJobs_pattern1_autoscaling_targetCPUUtilizationPercentage )       | No      | integer | No         | -          | Target CPU utilization percentage    |
| - [targetMemoryUtilizationPercentage](#cronJobs_pattern1_autoscaling_targetMemoryUtilizationPercentage ) | No      | integer | No         | -          | Target memory utilization percentage |

##### <a name="cronJobs_pattern1_autoscaling_enabled"></a>2.1.8.1. Property `stack > cronJobs > ^.*$ > autoscaling > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable autoscaling

##### <a name="cronJobs_pattern1_autoscaling_maxReplicas"></a>2.1.8.2. Property `stack > cronJobs > ^.*$ > autoscaling > maxReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum number of replicas

##### <a name="cronJobs_pattern1_autoscaling_minReplicas"></a>2.1.8.3. Property `stack > cronJobs > ^.*$ > autoscaling > minReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Minimum number of replicas

##### <a name="cronJobs_pattern1_autoscaling_targetCPUUtilizationPercentage"></a>2.1.8.4. Property `stack > cronJobs > ^.*$ > autoscaling > targetCPUUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target CPU utilization percentage

##### <a name="cronJobs_pattern1_autoscaling_targetMemoryUtilizationPercentage"></a>2.1.8.5. Property `stack > cronJobs > ^.*$ > autoscaling > targetMemoryUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target memory utilization percentage

#### <a name="cronJobs_pattern1_command"></a>2.1.9. Property `stack > cronJobs > ^.*$ > command`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Command to run in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [command items](#cronJobs_pattern1_command_items) | -           |

##### <a name="cronJobs_pattern1_command_items"></a>2.1.9.1. stack > cronJobs > ^.*$ > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_deploymentKind"></a>2.1.10. Property `stack > cronJobs > ^.*$ > deploymentKind`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |
| **Default**  | `"Deployment"`     |

**Description:** Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).

Must be one of:
* "Deployment"
* "Rollout"

#### <a name="cronJobs_pattern1_deploymentStage"></a>2.1.11. Property `stack > cronJobs > ^.*$ > deploymentStage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Deployment stage

#### <a name="cronJobs_pattern1_dnsPolicy"></a>2.1.12. Property `stack > cronJobs > ^.*$ > dnsPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** DNS policy for the pod

Must be one of:
* "ClusterFirst"
* "Default"
* "None"

#### <a name="cronJobs_pattern1_env"></a>2.1.13. Property `stack > cronJobs > ^.*$ > env`

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

| Each item of this array must be           | Description |
| ----------------------------------------- | ----------- |
| [env items](#cronJobs_pattern1_env_items) | -           |

##### <a name="cronJobs_pattern1_env_items"></a>2.1.13.1. stack > cronJobs > ^.*$ > env > env items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_env_items_name )   | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_env_items_value ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_env_items_name"></a>2.1.13.1.1. Property `stack > cronJobs > ^.*$ > env > env items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_env_items_value"></a>2.1.13.1.2. Property `stack > cronJobs > ^.*$ > env > env items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_envFrom"></a>2.1.14. Property `stack > cronJobs > ^.*$ > envFrom`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Environment variables from configmaps or secrets

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [envFrom items](#cronJobs_pattern1_envFrom_items) | -           |

##### <a name="cronJobs_pattern1_envFrom_items"></a>2.1.14.1. stack > cronJobs > ^.*$ > envFrom > envFrom items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [configMapRef](#cronJobs_pattern1_envFrom_items_configMapRef ) | No      | object | No         | -          | -                 |
| - [prefix](#cronJobs_pattern1_envFrom_items_prefix )             | No      | string | No         | -          | -                 |
| - [secretRef](#cronJobs_pattern1_envFrom_items_secretRef )       | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_envFrom_items_configMapRef"></a>2.1.14.1.1. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > configMapRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="cronJobs_pattern1_envFrom_items_prefix"></a>2.1.14.1.2. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > prefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_envFrom_items_secretRef"></a>2.1.14.1.3. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > secretRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

#### <a name="cronJobs_pattern1_fullnameOverride"></a>2.1.15. Property `stack > cronJobs > ^.*$ > fullnameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, replaces the stack name prefix

#### <a name="cronJobs_pattern1_image"></a>2.1.16. Property `stack > cronJobs > ^.*$ > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type             | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [pullPolicy](#cronJobs_pattern1_image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy |
| - [repository](#cronJobs_pattern1_image_repository ) | No      | string           | No         | -          | Image repository  |
| - [tag](#cronJobs_pattern1_image_tag )               | No      | string           | No         | -          | Image tag         |

##### <a name="cronJobs_pattern1_image_pullPolicy"></a>2.1.16.1. Property `stack > cronJobs > ^.*$ > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

##### <a name="cronJobs_pattern1_image_repository"></a>2.1.16.2. Property `stack > cronJobs > ^.*$ > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

##### <a name="cronJobs_pattern1_image_tag"></a>2.1.16.3. Property `stack > cronJobs > ^.*$ > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

#### <a name="cronJobs_pattern1_imagePullSecrets"></a>2.1.17. Property `stack > cronJobs > ^.*$ > imagePullSecrets`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [imagePullSecrets items](#cronJobs_pattern1_imagePullSecrets_items) | -           |

##### <a name="cronJobs_pattern1_imagePullSecrets_items"></a>2.1.17.1. stack > cronJobs > ^.*$ > imagePullSecrets > imagePullSecrets items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_ingress"></a>2.1.18. Property `stack > cronJobs > ^.*$ > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                                                     | Pattern | Type            | Deprecated | Definition | Title/Description                  |
| ------------------------------------------------------------ | ------- | --------------- | ---------- | ---------- | ---------------------------------- |
| - [annotations](#cronJobs_pattern1_ingress_annotations )     | No      | object          | No         | -          | -                                  |
| - [className](#cronJobs_pattern1_ingress_className )         | No      | string          | No         | -          | Ingress class name                 |
| - [enabled](#cronJobs_pattern1_ingress_enabled )             | No      | boolean         | No         | -          | Enable ingress                     |
| - [host](#cronJobs_pattern1_ingress_host )                   | No      | string          | No         | -          | Ingress host                       |
| - [oidcProtected](#cronJobs_pattern1_ingress_oidcProtected ) | No      | boolean         | No         | -          | Enable OIDC protection             |
| - [paths](#cronJobs_pattern1_ingress_paths )                 | No      | array of object | No         | -          | List of ingress paths              |
| - [rules](#cronJobs_pattern1_ingress_rules )                 | No      | array           | No         | -          | List of ingress rules              |
| - [tls](#cronJobs_pattern1_ingress_tls )                     | No      | array           | No         | -          | List of ingress TLS configurations |

##### <a name="cronJobs_pattern1_ingress_annotations"></a>2.1.18.1. Property `stack > cronJobs > ^.*$ > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [nginx.ingress.kubernetes.io/affinity](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/affinity )                             | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-connect-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout )   | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-read-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-send-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-max-age](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age ) | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-name](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-name )       | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/affinity"></a>2.1.18.1.1. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/affinity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout"></a>2.1.18.1.2. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-connect-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout"></a>2.1.18.1.3. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-read-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout"></a>2.1.18.1.4. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-send-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age"></a>2.1.18.1.5. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-max-age`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-name"></a>2.1.18.1.6. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_ingress_className"></a>2.1.18.2. Property `stack > cronJobs > ^.*$ > ingress > className`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress class name

##### <a name="cronJobs_pattern1_ingress_enabled"></a>2.1.18.3. Property `stack > cronJobs > ^.*$ > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress

##### <a name="cronJobs_pattern1_ingress_host"></a>2.1.18.4. Property `stack > cronJobs > ^.*$ > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

##### <a name="cronJobs_pattern1_ingress_oidcProtected"></a>2.1.18.5. Property `stack > cronJobs > ^.*$ > ingress > oidcProtected`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC protection

##### <a name="cronJobs_pattern1_ingress_paths"></a>2.1.18.6. Property `stack > cronJobs > ^.*$ > ingress > paths`

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

| Each item of this array must be                       | Description |
| ----------------------------------------------------- | ----------- |
| [paths items](#cronJobs_pattern1_ingress_paths_items) | -           |

###### <a name="cronJobs_pattern1_ingress_paths_items"></a>2.1.18.6.1. stack > cronJobs > ^.*$ > ingress > paths > paths items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_ingress_paths_items_path )         | No      | string | No         | -          | Ingress path      |
| - [pathType](#cronJobs_pattern1_ingress_paths_items_pathType ) | No      | string | No         | -          | Ingress path type |

###### <a name="cronJobs_pattern1_ingress_paths_items_path"></a>2.1.18.6.1.1. Property `stack > cronJobs > ^.*$ > ingress > paths > paths items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path

###### <a name="cronJobs_pattern1_ingress_paths_items_pathType"></a>2.1.18.6.1.2. Property `stack > cronJobs > ^.*$ > ingress > paths > paths items > pathType`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path type

##### <a name="cronJobs_pattern1_ingress_rules"></a>2.1.18.7. Property `stack > cronJobs > ^.*$ > ingress > rules`

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

##### <a name="cronJobs_pattern1_ingress_tls"></a>2.1.18.8. Property `stack > cronJobs > ^.*$ > ingress > tls`

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

#### <a name="cronJobs_pattern1_initContainers"></a>2.1.19. Property `stack > cronJobs > ^.*$ > initContainers`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of init containers

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_livenessProbe"></a>2.1.20. Property `stack > cronJobs > ^.*$ > livenessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Liveness probe configuration

| Property                                                                       | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#cronJobs_pattern1_livenessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#cronJobs_pattern1_livenessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#cronJobs_pattern1_livenessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_livenessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_livenessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_livenessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_livenessProbe_failureThreshold"></a>2.1.20.1. Property `stack > cronJobs > ^.*$ > livenessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_livenessProbe_httpGet"></a>2.1.20.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                                     | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------ | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_livenessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#cronJobs_pattern1_livenessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#cronJobs_pattern1_livenessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_path"></a>2.1.20.2.1. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port"></a>2.1.20.2.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                                   |
| ---------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i0) |
| [item 1](#cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i1) |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i0"></a>2.1.20.2.2.1. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i1"></a>2.1.20.2.2.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_scheme"></a>2.1.20.2.3. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

##### <a name="cronJobs_pattern1_livenessProbe_initialDelaySeconds"></a>2.1.20.3. Property `stack > cronJobs > ^.*$ > livenessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_livenessProbe_periodSeconds"></a>2.1.20.4. Property `stack > cronJobs > ^.*$ > livenessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_livenessProbe_successThreshold"></a>2.1.20.5. Property `stack > cronJobs > ^.*$ > livenessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_livenessProbe_timeoutSeconds"></a>2.1.20.6. Property `stack > cronJobs > ^.*$ > livenessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_nameOverride"></a>2.1.21. Property `stack > cronJobs > ^.*$ > nameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, combined with the stack name prefix

#### <a name="cronJobs_pattern1_nodeSelector"></a>2.1.22. Property `stack > cronJobs > ^.*$ > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description              |
| -------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------ |
| - [kubernetes.io/arch](#cronJobs_pattern1_nodeSelector_kubernetesio/arch ) | No      | string | No         | -          | Node selector for architecture |

##### <a name="cronJobs_pattern1_nodeSelector_kubernetesio/arch"></a>2.1.22.1. Property `stack > cronJobs > ^.*$ > nodeSelector > kubernetes.io/arch`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Node selector for architecture

#### <a name="cronJobs_pattern1_oidcProxy"></a>2.1.23. Property `stack > cronJobs > ^.*$ > oidcProxy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                               | Pattern | Type            | Deprecated | Definition | Title/Description                            |
| ---------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | -------------------------------------------- |
| - [additionalHeaders](#cronJobs_pattern1_oidcProxy_additionalHeaders ) | No      | array           | No         | -          | Additional headers to add                    |
| - [additionalSecrets](#cronJobs_pattern1_oidcProxy_additionalSecrets ) | No      | array           | No         | -          | Additional secrets to mount                  |
| - [annotations](#cronJobs_pattern1_oidcProxy_annotations )             | No      | object          | No         | -          | Annotations to add to the OIDC proxy         |
| - [cookieRefresh](#cronJobs_pattern1_oidcProxy_cookieRefresh )         | No      | string          | No         | -          | Refresh tokens and cookies after this period |
| - [enabled](#cronJobs_pattern1_oidcProxy_enabled )                     | No      | boolean         | No         | -          | Enable OIDC proxy                            |
| - [extraArgs](#cronJobs_pattern1_oidcProxy_extraArgs )                 | No      | array of string | No         | -          | Extra arguments to pass to the OIDC proxy    |
| - [image](#cronJobs_pattern1_oidcProxy_image )                         | No      | object          | No         | -          | -                                            |
| - [replicaCount](#cronJobs_pattern1_oidcProxy_replicaCount )           | No      | integer         | No         | -          | Number of replicas                           |
| - [resources](#cronJobs_pattern1_oidcProxy_resources )                 | No      | object          | No         | -          | -                                            |
| - [skipAuth](#cronJobs_pattern1_oidcProxy_skipAuth )                   | No      | array of object | No         | -          | Paths to skip authentication                 |
| - [volumeMounts](#cronJobs_pattern1_oidcProxy_volumeMounts )           | No      | array           | No         | -          | Volume mounts for the OIDC proxy             |

##### <a name="cronJobs_pattern1_oidcProxy_additionalHeaders"></a>2.1.23.1. Property `stack > cronJobs > ^.*$ > oidcProxy > additionalHeaders`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional headers to add

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

##### <a name="cronJobs_pattern1_oidcProxy_additionalSecrets"></a>2.1.23.2. Property `stack > cronJobs > ^.*$ > oidcProxy > additionalSecrets`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional secrets to mount

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

##### <a name="cronJobs_pattern1_oidcProxy_annotations"></a>2.1.23.3. Property `stack > cronJobs > ^.*$ > oidcProxy > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the OIDC proxy

##### <a name="cronJobs_pattern1_oidcProxy_cookieRefresh"></a>2.1.23.4. Property `stack > cronJobs > ^.*$ > oidcProxy > cookieRefresh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Refresh tokens and cookies after this period

##### <a name="cronJobs_pattern1_oidcProxy_enabled"></a>2.1.23.5. Property `stack > cronJobs > ^.*$ > oidcProxy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC proxy

##### <a name="cronJobs_pattern1_oidcProxy_extraArgs"></a>2.1.23.6. Property `stack > cronJobs > ^.*$ > oidcProxy > extraArgs`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Extra arguments to pass to the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                 | Description |
| --------------------------------------------------------------- | ----------- |
| [extraArgs items](#cronJobs_pattern1_oidcProxy_extraArgs_items) | -           |

###### <a name="cronJobs_pattern1_oidcProxy_extraArgs_items"></a>2.1.23.6.1. stack > cronJobs > ^.*$ > oidcProxy > extraArgs > extraArgs items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_oidcProxy_image"></a>2.1.23.7. Property `stack > cronJobs > ^.*$ > oidcProxy > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [repository](#cronJobs_pattern1_oidcProxy_image_repository ) | No      | string | No         | -          | Image repository  |
| - [tag](#cronJobs_pattern1_oidcProxy_image_tag )               | No      | string | No         | -          | Image tag         |

###### <a name="cronJobs_pattern1_oidcProxy_image_repository"></a>2.1.23.7.1. Property `stack > cronJobs > ^.*$ > oidcProxy > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

###### <a name="cronJobs_pattern1_oidcProxy_image_tag"></a>2.1.23.7.2. Property `stack > cronJobs > ^.*$ > oidcProxy > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

##### <a name="cronJobs_pattern1_oidcProxy_replicaCount"></a>2.1.23.8. Property `stack > cronJobs > ^.*$ > oidcProxy > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

##### <a name="cronJobs_pattern1_oidcProxy_resources"></a>2.1.23.9. Property `stack > cronJobs > ^.*$ > oidcProxy > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#cronJobs_pattern1_oidcProxy_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#cronJobs_pattern1_oidcProxy_resources_requests ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits"></a>2.1.23.9.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type        | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_oidcProxy_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#cronJobs_pattern1_oidcProxy_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu"></a>2.1.23.9.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                                       |
| -------------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i0"></a>2.1.23.9.1.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i1"></a>2.1.23.9.1.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_memory"></a>2.1.23.9.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests"></a>2.1.23.9.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_oidcProxy_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#cronJobs_pattern1_oidcProxy_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu"></a>2.1.23.9.2.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                                         |
| ---------------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i0"></a>2.1.23.9.2.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i1"></a>2.1.23.9.2.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_memory"></a>2.1.23.9.2.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

##### <a name="cronJobs_pattern1_oidcProxy_skipAuth"></a>2.1.23.10. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Paths to skip authentication

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                               | Description |
| ------------------------------------------------------------- | ----------- |
| [skipAuth items](#cronJobs_pattern1_oidcProxy_skipAuth_items) | -           |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items"></a>2.1.23.10.1. stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [method](#cronJobs_pattern1_oidcProxy_skipAuth_items_method ) | No      | string | No         | -          | -                 |
| - [path](#cronJobs_pattern1_oidcProxy_skipAuth_items_path )     | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items_method"></a>2.1.23.10.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items_path"></a>2.1.23.10.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_oidcProxy_volumeMounts"></a>2.1.23.11. Property `stack > cronJobs > ^.*$ > oidcProxy > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Volume mounts for the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_persistence"></a>2.1.24. Property `stack > cronJobs > ^.*$ > persistence`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type    | Deprecated | Definition | Title/Description      |
| ---------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#cronJobs_pattern1_persistence_enabled )             | No      | boolean | No         | -          | Enable persistence     |
| - [existingClaim](#cronJobs_pattern1_persistence_existingClaim ) | No      | string  | No         | -          | Existing PVC name      |
| - [mountPath](#cronJobs_pattern1_persistence_mountPath )         | No      | string  | No         | -          | Mount path for the PVC |
| - [pvc](#cronJobs_pattern1_persistence_pvc )                     | No      | object  | No         | -          | -                      |

##### <a name="cronJobs_pattern1_persistence_enabled"></a>2.1.24.1. Property `stack > cronJobs > ^.*$ > persistence > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable persistence

##### <a name="cronJobs_pattern1_persistence_existingClaim"></a>2.1.24.2. Property `stack > cronJobs > ^.*$ > persistence > existingClaim`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Existing PVC name

##### <a name="cronJobs_pattern1_persistence_mountPath"></a>2.1.24.3. Property `stack > cronJobs > ^.*$ > persistence > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Mount path for the PVC

##### <a name="cronJobs_pattern1_persistence_pvc"></a>2.1.24.4. Property `stack > cronJobs > ^.*$ > persistence > pvc`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type                      | Deprecated | Definition | Title/Description        |
| -------------------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------ |
| - [accessModes](#cronJobs_pattern1_persistence_pvc_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the PVC |
| - [dataSource](#cronJobs_pattern1_persistence_pvc_dataSource )             | No      | object                    | No         | -          | -                        |
| - [resources](#cronJobs_pattern1_persistence_pvc_resources )               | No      | object                    | No         | -          | -                        |
| - [storageClassName](#cronJobs_pattern1_persistence_pvc_storageClassName ) | No      | string                    | No         | -          | Storage class name       |

###### <a name="cronJobs_pattern1_persistence_pvc_accessModes"></a>2.1.24.4.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the PVC

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                           | Description |
| ------------------------------------------------------------------------- | ----------- |
| [accessModes items](#cronJobs_pattern1_persistence_pvc_accessModes_items) | -           |

###### <a name="cronJobs_pattern1_persistence_pvc_accessModes_items"></a>2.1.24.4.1.1. stack > cronJobs > ^.*$ > persistence > pvc > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource"></a>2.1.24.4.2. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type   | Deprecated | Definition | Title/Description                                               |
| --------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------------- |
| - [apiGroup](#cronJobs_pattern1_persistence_pvc_dataSource_apiGroup ) | No      | string | No         | -          | API version of the data source                                  |
| - [kind](#cronJobs_pattern1_persistence_pvc_dataSource_kind )         | No      | string | No         | -          | Kind of the data source [VolumeSnapshot, PersistentVolumeClaim] |
| - [name](#cronJobs_pattern1_persistence_pvc_dataSource_name )         | No      | string | No         | -          | Name of the data source                                         |

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_apiGroup"></a>2.1.24.4.2.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > apiGroup`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** API version of the data source

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_kind"></a>2.1.24.4.2.2. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kind of the data source [VolumeSnapshot, PersistentVolumeClaim]

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_name"></a>2.1.24.4.2.3. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the data source

###### <a name="cronJobs_pattern1_persistence_pvc_resources"></a>2.1.24.4.3. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type   | Deprecated | Definition | Title/Description     |
| -------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------- |
| - [requests](#cronJobs_pattern1_persistence_pvc_resources_requests ) | No      | object | No         | -          | PVC resource requests |

###### <a name="cronJobs_pattern1_persistence_pvc_resources_requests"></a>2.1.24.4.3.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** PVC resource requests

| Property                                                                    | Pattern | Type   | Deprecated | Definition | Title/Description        |
| --------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------ |
| - [storage](#cronJobs_pattern1_persistence_pvc_resources_requests_storage ) | No      | string | No         | -          | Storage resource request |

###### <a name="cronJobs_pattern1_persistence_pvc_resources_requests_storage"></a>2.1.24.4.3.1.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources > requests > storage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage resource request

###### <a name="cronJobs_pattern1_persistence_pvc_storageClassName"></a>2.1.24.4.4. Property `stack > cronJobs > ^.*$ > persistence > pvc > storageClassName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage class name

#### <a name="cronJobs_pattern1_podAnnotations"></a>2.1.25. Property `stack > cronJobs > ^.*$ > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to pods

| Property                                                                                                          | Pattern | Type   | Deprecated | Definition | Title/Description                      |
| ----------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------- |
| - [config.linkerd.io/skip-outbound-ports](#cronJobs_pattern1_podAnnotations_configlinkerdio/skip-outbound-ports ) | No      | string | No         | -          | Linkerd skip outbound ports annotation |
| - [linkerd.io/inject](#cronJobs_pattern1_podAnnotations_linkerdio/inject )                                        | No      | string | No         | -          | Linkerd injection annotation           |

##### <a name="cronJobs_pattern1_podAnnotations_configlinkerdio/skip-outbound-ports"></a>2.1.25.1. Property `stack > cronJobs > ^.*$ > podAnnotations > config.linkerd.io/skip-outbound-ports`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd skip outbound ports annotation

##### <a name="cronJobs_pattern1_podAnnotations_linkerdio/inject"></a>2.1.25.2. Property `stack > cronJobs > ^.*$ > podAnnotations > linkerd.io/inject`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd injection annotation

#### <a name="cronJobs_pattern1_podLabels"></a>2.1.26. Property `stack > cronJobs > ^.*$ > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global labels to add to all pods

#### <a name="cronJobs_pattern1_podSecurityContext"></a>2.1.27. Property `stack > cronJobs > ^.*$ > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod security context

#### <a name="cronJobs_pattern1_progressDeadlineSeconds"></a>2.1.28. Property `stack > cronJobs > ^.*$ > progressDeadlineSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled

#### <a name="cronJobs_pattern1_readinessProbe"></a>2.1.29. Property `stack > cronJobs > ^.*$ > readinessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Readiness probe configuration

| Property                                                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#cronJobs_pattern1_readinessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#cronJobs_pattern1_readinessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#cronJobs_pattern1_readinessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_readinessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_readinessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_readinessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_readinessProbe_failureThreshold"></a>2.1.29.1. Property `stack > cronJobs > ^.*$ > readinessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_readinessProbe_httpGet"></a>2.1.29.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                                      | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_readinessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#cronJobs_pattern1_readinessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#cronJobs_pattern1_readinessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_path"></a>2.1.29.2.1. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port"></a>2.1.29.2.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                                    |
| ----------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i0) |
| [item 1](#cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i1) |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i0"></a>2.1.29.2.2.1. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i1"></a>2.1.29.2.2.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_scheme"></a>2.1.29.2.3. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

##### <a name="cronJobs_pattern1_readinessProbe_initialDelaySeconds"></a>2.1.29.3. Property `stack > cronJobs > ^.*$ > readinessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_readinessProbe_periodSeconds"></a>2.1.29.4. Property `stack > cronJobs > ^.*$ > readinessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_readinessProbe_successThreshold"></a>2.1.29.5. Property `stack > cronJobs > ^.*$ > readinessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_readinessProbe_timeoutSeconds"></a>2.1.29.6. Property `stack > cronJobs > ^.*$ > readinessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_replicaCount"></a>2.1.30. Property `stack > cronJobs > ^.*$ > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

#### <a name="cronJobs_pattern1_resources"></a>2.1.31. Property `stack > cronJobs > ^.*$ > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests and limits for the primary container

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#cronJobs_pattern1_resources_limits )     | No      | object | No         | -          | Resource limits   |
| - [requests](#cronJobs_pattern1_resources_requests ) | No      | object | No         | -          | Resource requests |

##### <a name="cronJobs_pattern1_resources_limits"></a>2.1.31.1. Property `stack > cronJobs > ^.*$ > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource limits

| Property                                                | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#cronJobs_pattern1_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="cronJobs_pattern1_resources_limits_cpu"></a>2.1.31.1.1. Property `stack > cronJobs > ^.*$ > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                             |
| ---------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_resources_limits_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_resources_limits_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_resources_limits_cpu_oneOf_i0"></a>2.1.31.1.1.1. Property `stack > cronJobs > ^.*$ > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_limits_cpu_oneOf_i1"></a>2.1.31.1.1.2. Property `stack > cronJobs > ^.*$ > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_limits_memory"></a>2.1.31.1.2. Property `stack > cronJobs > ^.*$ > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

##### <a name="cronJobs_pattern1_resources_requests"></a>2.1.31.2. Property `stack > cronJobs > ^.*$ > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests

| Property                                                  | Pattern | Type        | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#cronJobs_pattern1_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="cronJobs_pattern1_resources_requests_cpu"></a>2.1.31.2.1. Property `stack > cronJobs > ^.*$ > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                               |
| ------------------------------------------------------------ |
| [item 0](#cronJobs_pattern1_resources_requests_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_resources_requests_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_resources_requests_cpu_oneOf_i0"></a>2.1.31.2.1.1. Property `stack > cronJobs > ^.*$ > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_requests_cpu_oneOf_i1"></a>2.1.31.2.1.2. Property `stack > cronJobs > ^.*$ > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_requests_memory"></a>2.1.31.2.2. Property `stack > cronJobs > ^.*$ > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

#### <a name="cronJobs_pattern1_restartPolicy"></a>2.1.32. Property `stack > cronJobs > ^.*$ > restartPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Restart policy for the pod

Must be one of:
* "Always"
* "OnFailure"
* "Never"

#### <a name="cronJobs_pattern1_rollout"></a>2.1.33. Property `stack > cronJobs > ^.*$ > rollout`

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | No                   |
| **Additional properties** | Any type allowed     |
| **Defined in**            | #/properties/rollout |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#cronJobs_pattern1_rollout_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#cronJobs_pattern1_rollout_additionalProperties ) | No      | object | No         | -          | -                                                   |

##### <a name="cronJobs_pattern1_rollout_strategy"></a>2.1.33.1. Property `stack > cronJobs > ^.*$ > rollout > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [blueGreen](#cronJobs_pattern1_rollout_strategy_blueGreen ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen"></a>2.1.33.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

| Property                                                                                      | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#cronJobs_pattern1_rollout_strategy_blueGreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#cronJobs_pattern1_rollout_strategy_blueGreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_activeService"></a>2.1.33.1.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled"></a>2.1.33.1.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis"></a>2.1.33.1.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                                         | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| ---------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata"></a>2.1.33.1.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>2.1.33.1.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>2.1.33.1.1.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args"></a>2.1.33.1.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                             | Description |
| ------------------------------------------------------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items"></a>2.1.33.1.1.3.2.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name"></a>2.1.33.1.1.3.2.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value"></a>2.1.33.1.1.3.2.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom"></a>2.1.33.1.1.3.2.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                | Pattern | Type             | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>2.1.33.1.1.3.2.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>2.1.33.1.1.3.2.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>2.1.33.1.1.3.2.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates"></a>2.1.33.1.1.3.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                       | Description |
| ----------------------------------------------------------------------------------------------------- | ----------- |
| [templates items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items"></a>2.1.33.1.1.3.3.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ------------------------------------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope"></a>2.1.33.1.1.3.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName"></a>2.1.33.1.1.3.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_previewService"></a>2.1.33.1.1.4. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

#### <a name="cronJobs_pattern1_s3Storage"></a>2.1.34. Property `stack > cronJobs > ^.*$ > s3Storage`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type                      | Deprecated | Definition | Title/Description                           |
| -------------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------------------------- |
| - [accessModes](#cronJobs_pattern1_s3Storage_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the S3 storage             |
| - [annotations](#cronJobs_pattern1_s3Storage_annotations )           | No      | object                    | No         | -          | Additional annotations for PV/PVC           |
| - [bucketName](#cronJobs_pattern1_s3Storage_bucketName )             | No      | string                    | No         | -          | S3 bucket name                              |
| - [capacity](#cronJobs_pattern1_s3Storage_capacity )                 | No      | string                    | No         | -          | Storage capacity                            |
| - [enabled](#cronJobs_pattern1_s3Storage_enabled )                   | No      | boolean                   | No         | -          | Enable S3 CSI storage                       |
| - [labels](#cronJobs_pattern1_s3Storage_labels )                     | No      | object                    | No         | -          | Additional labels for PV/PVC                |
| - [pvName](#cronJobs_pattern1_s3Storage_pvName )                     | No      | string                    | No         | -          | Custom PV name (auto-generated if empty)    |
| - [pvcName](#cronJobs_pattern1_s3Storage_pvcName )                   | No      | string                    | No         | -          | Custom PVC name (auto-generated if empty)   |
| - [reclaimPolicy](#cronJobs_pattern1_s3Storage_reclaimPolicy )       | No      | string                    | No         | -          | Reclaim policy for the PV                   |
| - [region](#cronJobs_pattern1_s3Storage_region )                     | No      | string                    | No         | -          | AWS region                                  |
| - [volumeAttributes](#cronJobs_pattern1_s3Storage_volumeAttributes ) | No      | object                    | No         | -          | Additional CSI volume attributes            |
| - [volumeHandle](#cronJobs_pattern1_s3Storage_volumeHandle )         | No      | string                    | No         | -          | CSI volume handle (auto-generated if empty) |

##### <a name="cronJobs_pattern1_s3Storage_accessModes"></a>2.1.34.1. Property `stack > cronJobs > ^.*$ > s3Storage > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the S3 storage

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [accessModes items](#cronJobs_pattern1_s3Storage_accessModes_items) | -           |

###### <a name="cronJobs_pattern1_s3Storage_accessModes_items"></a>2.1.34.1.1. stack > cronJobs > ^.*$ > s3Storage > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

##### <a name="cronJobs_pattern1_s3Storage_annotations"></a>2.1.34.2. Property `stack > cronJobs > ^.*$ > s3Storage > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional annotations for PV/PVC

##### <a name="cronJobs_pattern1_s3Storage_bucketName"></a>2.1.34.3. Property `stack > cronJobs > ^.*$ > s3Storage > bucketName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** S3 bucket name

##### <a name="cronJobs_pattern1_s3Storage_capacity"></a>2.1.34.4. Property `stack > cronJobs > ^.*$ > s3Storage > capacity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage capacity

##### <a name="cronJobs_pattern1_s3Storage_enabled"></a>2.1.34.5. Property `stack > cronJobs > ^.*$ > s3Storage > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable S3 CSI storage

##### <a name="cronJobs_pattern1_s3Storage_labels"></a>2.1.34.6. Property `stack > cronJobs > ^.*$ > s3Storage > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional labels for PV/PVC

##### <a name="cronJobs_pattern1_s3Storage_pvName"></a>2.1.34.7. Property `stack > cronJobs > ^.*$ > s3Storage > pvName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PV name (auto-generated if empty)

##### <a name="cronJobs_pattern1_s3Storage_pvcName"></a>2.1.34.8. Property `stack > cronJobs > ^.*$ > s3Storage > pvcName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PVC name (auto-generated if empty)

##### <a name="cronJobs_pattern1_s3Storage_reclaimPolicy"></a>2.1.34.9. Property `stack > cronJobs > ^.*$ > s3Storage > reclaimPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Reclaim policy for the PV

##### <a name="cronJobs_pattern1_s3Storage_region"></a>2.1.34.10. Property `stack > cronJobs > ^.*$ > s3Storage > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** AWS region

##### <a name="cronJobs_pattern1_s3Storage_volumeAttributes"></a>2.1.34.11. Property `stack > cronJobs > ^.*$ > s3Storage > volumeAttributes`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional CSI volume attributes

##### <a name="cronJobs_pattern1_s3Storage_volumeHandle"></a>2.1.34.12. Property `stack > cronJobs > ^.*$ > s3Storage > volumeHandle`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CSI volume handle (auto-generated if empty)

#### <a name="cronJobs_pattern1_securityContext"></a>2.1.35. Property `stack > cronJobs > ^.*$ > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context

#### <a name="cronJobs_pattern1_service"></a>2.1.36. Property `stack > cronJobs > ^.*$ > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service configuration

| Property                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [port](#cronJobs_pattern1_service_port ) | No      | number | No         | -          | Service port      |
| - [type](#cronJobs_pattern1_service_type ) | No      | string | No         | -          | Service type      |

##### <a name="cronJobs_pattern1_service_port"></a>2.1.36.1. Property `stack > cronJobs > ^.*$ > service > port`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Service port

##### <a name="cronJobs_pattern1_service_type"></a>2.1.36.2. Property `stack > cronJobs > ^.*$ > service > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service type

#### <a name="cronJobs_pattern1_serviceAccount"></a>2.1.37. Property `stack > cronJobs > ^.*$ > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service account configuration

| Property                                                        | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                   |
| --------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| - [annotations](#cronJobs_pattern1_serviceAccount_annotations ) | No      | object  | No         | -          | Annotations to add to the service account                                                                           |
| - [automount](#cronJobs_pattern1_serviceAccount_automount )     | No      | boolean | No         | -          | Specifies whether to automatically mount a ServiceAccount's API credentials                                         |
| - [create](#cronJobs_pattern1_serviceAccount_create )           | No      | boolean | No         | -          | Specifies whether a service account should be created                                                               |
| - [name](#cronJobs_pattern1_serviceAccount_name )               | No      | string  | No         | -          | Name of the service account to use (if not set and create is true, a name is generated using the fullname template) |

##### <a name="cronJobs_pattern1_serviceAccount_annotations"></a>2.1.37.1. Property `stack > cronJobs > ^.*$ > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the service account

##### <a name="cronJobs_pattern1_serviceAccount_automount"></a>2.1.37.2. Property `stack > cronJobs > ^.*$ > serviceAccount > automount`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether to automatically mount a ServiceAccount's API credentials

##### <a name="cronJobs_pattern1_serviceAccount_create"></a>2.1.37.3. Property `stack > cronJobs > ^.*$ > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether a service account should be created

##### <a name="cronJobs_pattern1_serviceAccount_name"></a>2.1.37.4. Property `stack > cronJobs > ^.*$ > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service account to use (if not set and create is true, a name is generated using the fullname template)

#### <a name="cronJobs_pattern1_shareProcessNamespace"></a>2.1.38. Property `stack > cronJobs > ^.*$ > shareProcessNamespace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Share process namespace

#### <a name="cronJobs_pattern1_sidecars"></a>2.1.39. Property `stack > cronJobs > ^.*$ > sidecars`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of sidecars

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_startupProbe"></a>2.1.40. Property `stack > cronJobs > ^.*$ > startupProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Startup probe configuration

| Property                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description                                                                     |
| ----------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [enabled](#cronJobs_pattern1_startupProbe_enabled )                         | No      | boolean | No         | -          | Enable the startup probe                                                              |
| - [exec](#cronJobs_pattern1_startupProbe_exec )                               | No      | object  | No         | -          | Exec probe configuration                                                              |
| - [failureThreshold](#cronJobs_pattern1_startupProbe_failureThreshold )       | No      | integer | No         | -          | Number of failures before the probe is considered failed                              |
| - [initialDelaySeconds](#cronJobs_pattern1_startupProbe_initialDelaySeconds ) | No      | integer | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_startupProbe_periodSeconds )             | No      | integer | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_startupProbe_successThreshold )       | No      | integer | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_startupProbe_timeoutSeconds )           | No      | integer | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_startupProbe_enabled"></a>2.1.40.1. Property `stack > cronJobs > ^.*$ > startupProbe > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the startup probe

##### <a name="cronJobs_pattern1_startupProbe_exec"></a>2.1.40.2. Property `stack > cronJobs > ^.*$ > startupProbe > exec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exec probe configuration

| Property                                                   | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [command](#cronJobs_pattern1_startupProbe_exec_command ) | No      | array of string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_startupProbe_exec_command"></a>2.1.40.2.1. Property `stack > cronJobs > ^.*$ > startupProbe > exec > command`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [command items](#cronJobs_pattern1_startupProbe_exec_command_items) | -           |

###### <a name="cronJobs_pattern1_startupProbe_exec_command_items"></a>2.1.40.2.1.1. stack > cronJobs > ^.*$ > startupProbe > exec > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_startupProbe_failureThreshold"></a>2.1.40.3. Property `stack > cronJobs > ^.*$ > startupProbe > failureThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_startupProbe_initialDelaySeconds"></a>2.1.40.4. Property `stack > cronJobs > ^.*$ > startupProbe > initialDelaySeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_startupProbe_periodSeconds"></a>2.1.40.5. Property `stack > cronJobs > ^.*$ > startupProbe > periodSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_startupProbe_successThreshold"></a>2.1.40.6. Property `stack > cronJobs > ^.*$ > startupProbe > successThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_startupProbe_timeoutSeconds"></a>2.1.40.7. Property `stack > cronJobs > ^.*$ > startupProbe > timeoutSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_tolerations"></a>2.1.41. Property `stack > cronJobs > ^.*$ > tolerations`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Tolerations for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_topologySpreadConstraints"></a>2.1.42. Property `stack > cronJobs > ^.*$ > topologySpreadConstraints`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Topology spread constraints for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_volumeMounts"></a>2.1.43. Property `stack > cronJobs > ^.*$ > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volume mounts on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_volumes"></a>2.1.44. Property `stack > cronJobs > ^.*$ > volumes`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volumes on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="global"></a>3. Property `stack > global`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs

| Property                                                          | Pattern | Type             | Deprecated | Definition              | Title/Description                                                                                                                           |
| ----------------------------------------------------------------- | ------- | ---------------- | ---------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| - [affinity](#global_affinity )                                   | No      | object           | No         | -                       | Affinity for the pod                                                                                                                        |
| - [annotations](#global_annotations )                             | No      | object           | No         | -                       | Global annotations to add to all resources                                                                                                  |
| - [appContext](#global_appContext )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [appSecrets](#global_appSecrets )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [argoBuildEnv](#global_argoBuildEnv )                           | No      | object           | No         | -                       | Argo built-in environment parameters (provided by Argus API)                                                                                |
| - [args](#global_args )                                           | No      | array of string  | No         | -                       | Arguments to pass to the command in the primary container                                                                                   |
| - [argusMetadata](#global_argusMetadata )                         | No      | object           | No         | -                       | Argus metadata (provided by Argus API)                                                                                                      |
| - [autoscaling](#global_autoscaling )                             | No      | object           | No         | -                       | Autoscaling configuration                                                                                                                   |
| - [command](#global_command )                                     | No      | array of string  | No         | -                       | Command to run in the primary container                                                                                                     |
| - [deploymentKind](#global_deploymentKind )                       | No      | enum (of string) | No         | -                       | Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).                                         |
| - [deploymentStage](#global_deploymentStage )                     | No      | string           | No         | -                       | Deployment stage                                                                                                                            |
| - [dnsPolicy](#global_dnsPolicy )                                 | No      | enum (of string) | No         | -                       | DNS policy for the pod                                                                                                                      |
| - [env](#global_env )                                             | No      | array of object  | No         | -                       | -                                                                                                                                           |
| - [envFrom](#global_envFrom )                                     | No      | array of object  | No         | -                       | Environment variables from configmaps or secrets                                                                                            |
| - [fullnameOverride](#global_fullnameOverride )                   | No      | string           | No         | -                       | Name to prefix the K8s resources with, replaces the stack name prefix                                                                       |
| - [image](#global_image )                                         | No      | object           | No         | -                       | -                                                                                                                                           |
| - [imagePullSecrets](#global_imagePullSecrets )                   | No      | array of string  | No         | -                       | -                                                                                                                                           |
| - [ingress](#global_ingress )                                     | No      | object           | No         | -                       | Ingress configuration                                                                                                                       |
| - [initContainers](#global_initContainers )                       | No      | array            | No         | -                       | List of init containers                                                                                                                     |
| - [livenessProbe](#global_livenessProbe )                         | No      | object           | No         | -                       | Liveness probe configuration                                                                                                                |
| - [nameOverride](#global_nameOverride )                           | No      | string           | No         | -                       | Name to prefix the K8s resources with, combined with the stack name prefix                                                                  |
| - [nodeSelector](#global_nodeSelector )                           | No      | object           | No         | -                       | -                                                                                                                                           |
| - [oidcProxy](#global_oidcProxy )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [persistence](#global_persistence )                             | No      | object           | No         | -                       | -                                                                                                                                           |
| - [podAnnotations](#global_podAnnotations )                       | No      | object           | No         | -                       | Annotations to add to pods                                                                                                                  |
| - [podLabels](#global_podLabels )                                 | No      | object           | No         | -                       | Global labels to add to all pods                                                                                                            |
| - [podSecurityContext](#global_podSecurityContext )               | No      | object           | No         | -                       | Pod security context                                                                                                                        |
| - [progressDeadlineSeconds](#global_progressDeadlineSeconds )     | No      | integer          | No         | -                       | the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled |
| - [readinessProbe](#global_readinessProbe )                       | No      | object           | No         | -                       | Readiness probe configuration                                                                                                               |
| - [replicaCount](#global_replicaCount )                           | No      | integer          | No         | -                       | Number of replicas                                                                                                                          |
| - [resources](#global_resources )                                 | No      | object           | No         | -                       | Resource requests and limits for the primary container                                                                                      |
| - [restartPolicy](#global_restartPolicy )                         | No      | enum (of string) | No         | -                       | Restart policy for the pod                                                                                                                  |
| - [rollout](#global_rollout )                                     | No      | object           | No         | In #/properties/rollout | -                                                                                                                                           |
| - [s3Storage](#global_s3Storage )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [securityContext](#global_securityContext )                     | No      | object           | No         | -                       | Security context                                                                                                                            |
| - [service](#global_service )                                     | No      | object           | No         | -                       | Service configuration                                                                                                                       |
| - [serviceAccount](#global_serviceAccount )                       | No      | object           | No         | -                       | Service account configuration                                                                                                               |
| - [shareProcessNamespace](#global_shareProcessNamespace )         | No      | boolean          | No         | -                       | Share process namespace                                                                                                                     |
| - [sidecars](#global_sidecars )                                   | No      | array            | No         | -                       | List of sidecars                                                                                                                            |
| - [startupProbe](#global_startupProbe )                           | No      | object           | No         | -                       | Startup probe configuration                                                                                                                 |
| - [tolerations](#global_tolerations )                             | No      | array            | No         | -                       | Tolerations for the pod                                                                                                                     |
| - [topologySpreadConstraints](#global_topologySpreadConstraints ) | No      | array            | No         | -                       | Topology spread constraints for the pod                                                                                                     |
| - [volumeMounts](#global_volumeMounts )                           | No      | array            | No         | -                       | Additional volume mounts on the output Deployment definition                                                                                |
| - [volumes](#global_volumes )                                     | No      | array            | No         | -                       | Additional volumes on the output Deployment definition                                                                                      |

### <a name="global_affinity"></a>3.1. Property `stack > global > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity for the pod

### <a name="global_annotations"></a>3.2. Property `stack > global > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global annotations to add to all resources

### <a name="global_appContext"></a>3.3. Property `stack > global > appContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [envContextConfigMapName](#global_appContext_envContextConfigMapName )     | No      | string | No         | -          | -                 |
| - [stackContextConfigMapName](#global_appContext_stackContextConfigMapName ) | No      | string | No         | -          | -                 |

#### <a name="global_appContext_envContextConfigMapName"></a>3.3.1. Property `stack > global > appContext > envContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_appContext_stackContextConfigMapName"></a>3.3.2. Property `stack > global > appContext > stackContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="global_appSecrets"></a>3.4. Property `stack > global > appSecrets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterSecret](#global_appSecrets_clusterSecret ) | No      | object | No         | -          | -                 |
| - [envSecret](#global_appSecrets_envSecret )         | No      | object | No         | -          | -                 |
| - [stackSecret](#global_appSecrets_stackSecret )     | No      | object | No         | -          | -                 |

#### <a name="global_appSecrets_clusterSecret"></a>3.4.1. Property `stack > global > appSecrets > clusterSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#global_appSecrets_clusterSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#global_appSecrets_clusterSecret_secretName ) | No      | string | No         | -          | -                 |

##### <a name="global_appSecrets_clusterSecret_secretKey"></a>3.4.1.1. Property `stack > global > appSecrets > clusterSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_appSecrets_clusterSecret_secretName"></a>3.4.1.2. Property `stack > global > appSecrets > clusterSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_appSecrets_envSecret"></a>3.4.2. Property `stack > global > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#global_appSecrets_envSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#global_appSecrets_envSecret_secretName ) | No      | string | No         | -          | -                 |

##### <a name="global_appSecrets_envSecret_secretKey"></a>3.4.2.1. Property `stack > global > appSecrets > envSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_appSecrets_envSecret_secretName"></a>3.4.2.2. Property `stack > global > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_appSecrets_stackSecret"></a>3.4.3. Property `stack > global > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#global_appSecrets_stackSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#global_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | -                 |

##### <a name="global_appSecrets_stackSecret_secretKey"></a>3.4.3.1. Property `stack > global > appSecrets > stackSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_appSecrets_stackSecret_secretName"></a>3.4.3.2. Property `stack > global > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="global_argoBuildEnv"></a>3.5. Property `stack > global > argoBuildEnv`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argo built-in environment parameters (provided by Argus API)

| Property                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                                                                         |
| -------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------------------------------------- |
| - [appName](#global_argoBuildEnv_appName )                                 | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name) |
| - [appNamespace](#global_argoBuildEnv_appNamespace )                       | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAMESPACE                                                  |
| - [appRevision](#global_argoBuildEnv_appRevision )                         | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION                                                   |
| - [appRevisionShort](#global_argoBuildEnv_appRevisionShort )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT                                             |
| - [appRevisionShort8](#global_argoBuildEnv_appRevisionShort8 )             | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT_8                                           |
| - [appSourcePath](#global_argoBuildEnv_appSourcePath )                     | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_PATH                                                |
| - [appSourceRepoUrl](#global_argoBuildEnv_appSourceRepoUrl )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |
| - [appSourceTargetRevision](#global_argoBuildEnv_appSourceTargetRevision ) | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |

#### <a name="global_argoBuildEnv_appName"></a>3.5.1. Property `stack > global > argoBuildEnv > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name)

#### <a name="global_argoBuildEnv_appNamespace"></a>3.5.2. Property `stack > global > argoBuildEnv > appNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAMESPACE

#### <a name="global_argoBuildEnv_appRevision"></a>3.5.3. Property `stack > global > argoBuildEnv > appRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION

#### <a name="global_argoBuildEnv_appRevisionShort"></a>3.5.4. Property `stack > global > argoBuildEnv > appRevisionShort`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT

#### <a name="global_argoBuildEnv_appRevisionShort8"></a>3.5.5. Property `stack > global > argoBuildEnv > appRevisionShort8`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT_8

#### <a name="global_argoBuildEnv_appSourcePath"></a>3.5.6. Property `stack > global > argoBuildEnv > appSourcePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_PATH

#### <a name="global_argoBuildEnv_appSourceRepoUrl"></a>3.5.7. Property `stack > global > argoBuildEnv > appSourceRepoUrl`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

#### <a name="global_argoBuildEnv_appSourceTargetRevision"></a>3.5.8. Property `stack > global > argoBuildEnv > appSourceTargetRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

### <a name="global_args"></a>3.6. Property `stack > global > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Arguments to pass to the command in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be  | Description |
| -------------------------------- | ----------- |
| [args items](#global_args_items) | -           |

#### <a name="global_args_items"></a>3.6.1. stack > global > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="global_argusMetadata"></a>3.7. Property `stack > global > argusMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus metadata (provided by Argus API)

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description                          |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------ |
| - [appName](#global_argusMetadata_appName )     | No      | string | No         | -          | Set by Argus API to Argus app name         |
| - [envName](#global_argusMetadata_envName )     | No      | string | No         | -          | Set by Argus API to Argus environment name |
| - [repoName](#global_argusMetadata_repoName )   | No      | string | No         | -          | Set by Argus API to Argus repository name  |
| - [repoOwner](#global_argusMetadata_repoOwner ) | No      | string | No         | -          | Set by Argus API to Argus repository owner |
| - [stackName](#global_argusMetadata_stackName ) | No      | string | No         | -          | Set by Argus API to Argus stack name       |

#### <a name="global_argusMetadata_appName"></a>3.7.1. Property `stack > global > argusMetadata > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus app name

#### <a name="global_argusMetadata_envName"></a>3.7.2. Property `stack > global > argusMetadata > envName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus environment name

#### <a name="global_argusMetadata_repoName"></a>3.7.3. Property `stack > global > argusMetadata > repoName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository name

#### <a name="global_argusMetadata_repoOwner"></a>3.7.4. Property `stack > global > argusMetadata > repoOwner`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository owner

#### <a name="global_argusMetadata_stackName"></a>3.7.5. Property `stack > global > argusMetadata > stackName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus stack name

### <a name="global_autoscaling"></a>3.8. Property `stack > global > autoscaling`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Autoscaling configuration

| Property                                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description                    |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------ |
| - [enabled](#global_autoscaling_enabled )                                                     | No      | boolean | No         | -          | Enable autoscaling                   |
| - [maxReplicas](#global_autoscaling_maxReplicas )                                             | No      | integer | No         | -          | Maximum number of replicas           |
| - [minReplicas](#global_autoscaling_minReplicas )                                             | No      | integer | No         | -          | Minimum number of replicas           |
| - [targetCPUUtilizationPercentage](#global_autoscaling_targetCPUUtilizationPercentage )       | No      | integer | No         | -          | Target CPU utilization percentage    |
| - [targetMemoryUtilizationPercentage](#global_autoscaling_targetMemoryUtilizationPercentage ) | No      | integer | No         | -          | Target memory utilization percentage |

#### <a name="global_autoscaling_enabled"></a>3.8.1. Property `stack > global > autoscaling > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable autoscaling

#### <a name="global_autoscaling_maxReplicas"></a>3.8.2. Property `stack > global > autoscaling > maxReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum number of replicas

#### <a name="global_autoscaling_minReplicas"></a>3.8.3. Property `stack > global > autoscaling > minReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Minimum number of replicas

#### <a name="global_autoscaling_targetCPUUtilizationPercentage"></a>3.8.4. Property `stack > global > autoscaling > targetCPUUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target CPU utilization percentage

#### <a name="global_autoscaling_targetMemoryUtilizationPercentage"></a>3.8.5. Property `stack > global > autoscaling > targetMemoryUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target memory utilization percentage

### <a name="global_command"></a>3.9. Property `stack > global > command`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Command to run in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be        | Description |
| -------------------------------------- | ----------- |
| [command items](#global_command_items) | -           |

#### <a name="global_command_items"></a>3.9.1. stack > global > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="global_deploymentKind"></a>3.10. Property `stack > global > deploymentKind`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |
| **Default**  | `"Deployment"`     |

**Description:** Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).

Must be one of:
* "Deployment"
* "Rollout"

### <a name="global_deploymentStage"></a>3.11. Property `stack > global > deploymentStage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Deployment stage

### <a name="global_dnsPolicy"></a>3.12. Property `stack > global > dnsPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** DNS policy for the pod

Must be one of:
* "ClusterFirst"
* "Default"
* "None"

### <a name="global_env"></a>3.13. Property `stack > global > env`

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

| Each item of this array must be | Description |
| ------------------------------- | ----------- |
| [env items](#global_env_items)  | -           |

#### <a name="global_env_items"></a>3.13.1. stack > global > env > env items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#global_env_items_name )   | No      | string | No         | -          | -                 |
| - [value](#global_env_items_value ) | No      | string | No         | -          | -                 |

##### <a name="global_env_items_name"></a>3.13.1.1. Property `stack > global > env > env items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_env_items_value"></a>3.13.1.2. Property `stack > global > env > env items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="global_envFrom"></a>3.14. Property `stack > global > envFrom`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Environment variables from configmaps or secrets

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be        | Description |
| -------------------------------------- | ----------- |
| [envFrom items](#global_envFrom_items) | -           |

#### <a name="global_envFrom_items"></a>3.14.1. stack > global > envFrom > envFrom items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [configMapRef](#global_envFrom_items_configMapRef ) | No      | object | No         | -          | -                 |
| - [prefix](#global_envFrom_items_prefix )             | No      | string | No         | -          | -                 |
| - [secretRef](#global_envFrom_items_secretRef )       | No      | object | No         | -          | -                 |

##### <a name="global_envFrom_items_configMapRef"></a>3.14.1.1. Property `stack > global > envFrom > envFrom items > configMapRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

##### <a name="global_envFrom_items_prefix"></a>3.14.1.2. Property `stack > global > envFrom > envFrom items > prefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_envFrom_items_secretRef"></a>3.14.1.3. Property `stack > global > envFrom > envFrom items > secretRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="global_fullnameOverride"></a>3.15. Property `stack > global > fullnameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, replaces the stack name prefix

### <a name="global_image"></a>3.16. Property `stack > global > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                  | Pattern | Type             | Deprecated | Definition | Title/Description |
| ----------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [pullPolicy](#global_image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy |
| - [repository](#global_image_repository ) | No      | string           | No         | -          | Image repository  |
| - [tag](#global_image_tag )               | No      | string           | No         | -          | Image tag         |

#### <a name="global_image_pullPolicy"></a>3.16.1. Property `stack > global > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

#### <a name="global_image_repository"></a>3.16.2. Property `stack > global > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

#### <a name="global_image_tag"></a>3.16.3. Property `stack > global > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

### <a name="global_imagePullSecrets"></a>3.17. Property `stack > global > imagePullSecrets`

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

| Each item of this array must be                          | Description |
| -------------------------------------------------------- | ----------- |
| [imagePullSecrets items](#global_imagePullSecrets_items) | -           |

#### <a name="global_imagePullSecrets_items"></a>3.17.1. stack > global > imagePullSecrets > imagePullSecrets items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="global_ingress"></a>3.18. Property `stack > global > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                                          | Pattern | Type            | Deprecated | Definition | Title/Description                  |
| ------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ---------------------------------- |
| - [annotations](#global_ingress_annotations )     | No      | object          | No         | -          | -                                  |
| - [className](#global_ingress_className )         | No      | string          | No         | -          | Ingress class name                 |
| - [enabled](#global_ingress_enabled )             | No      | boolean         | No         | -          | Enable ingress                     |
| - [host](#global_ingress_host )                   | No      | string          | No         | -          | Ingress host                       |
| - [oidcProtected](#global_ingress_oidcProtected ) | No      | boolean         | No         | -          | Enable OIDC protection             |
| - [paths](#global_ingress_paths )                 | No      | array of object | No         | -          | List of ingress paths              |
| - [rules](#global_ingress_rules )                 | No      | array           | No         | -          | List of ingress rules              |
| - [tls](#global_ingress_tls )                     | No      | array           | No         | -          | List of ingress TLS configurations |

#### <a name="global_ingress_annotations"></a>3.18.1. Property `stack > global > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [nginx.ingress.kubernetes.io/affinity](#global_ingress_annotations_nginxingresskubernetesio/affinity )                             | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-connect-timeout](#global_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout )   | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-read-timeout](#global_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-send-timeout](#global_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-max-age](#global_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age ) | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-name](#global_ingress_annotations_nginxingresskubernetesio/session-cookie-name )       | No      | string | No         | -          | -                 |

##### <a name="global_ingress_annotations_nginxingresskubernetesio/affinity"></a>3.18.1.1. Property `stack > global > ingress > annotations > nginx.ingress.kubernetes.io/affinity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout"></a>3.18.1.2. Property `stack > global > ingress > annotations > nginx.ingress.kubernetes.io/proxy-connect-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout"></a>3.18.1.3. Property `stack > global > ingress > annotations > nginx.ingress.kubernetes.io/proxy-read-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout"></a>3.18.1.4. Property `stack > global > ingress > annotations > nginx.ingress.kubernetes.io/proxy-send-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age"></a>3.18.1.5. Property `stack > global > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-max-age`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_ingress_annotations_nginxingresskubernetesio/session-cookie-name"></a>3.18.1.6. Property `stack > global > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_ingress_className"></a>3.18.2. Property `stack > global > ingress > className`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress class name

#### <a name="global_ingress_enabled"></a>3.18.3. Property `stack > global > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress

#### <a name="global_ingress_host"></a>3.18.4. Property `stack > global > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

#### <a name="global_ingress_oidcProtected"></a>3.18.5. Property `stack > global > ingress > oidcProtected`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC protection

#### <a name="global_ingress_paths"></a>3.18.6. Property `stack > global > ingress > paths`

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

| Each item of this array must be            | Description |
| ------------------------------------------ | ----------- |
| [paths items](#global_ingress_paths_items) | -           |

##### <a name="global_ingress_paths_items"></a>3.18.6.1. stack > global > ingress > paths > paths items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#global_ingress_paths_items_path )         | No      | string | No         | -          | Ingress path      |
| - [pathType](#global_ingress_paths_items_pathType ) | No      | string | No         | -          | Ingress path type |

###### <a name="global_ingress_paths_items_path"></a>3.18.6.1.1. Property `stack > global > ingress > paths > paths items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path

###### <a name="global_ingress_paths_items_pathType"></a>3.18.6.1.2. Property `stack > global > ingress > paths > paths items > pathType`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path type

#### <a name="global_ingress_rules"></a>3.18.7. Property `stack > global > ingress > rules`

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

#### <a name="global_ingress_tls"></a>3.18.8. Property `stack > global > ingress > tls`

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

### <a name="global_initContainers"></a>3.19. Property `stack > global > initContainers`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of init containers

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="global_livenessProbe"></a>3.20. Property `stack > global > livenessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Liveness probe configuration

| Property                                                            | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#global_livenessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#global_livenessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#global_livenessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#global_livenessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#global_livenessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#global_livenessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

#### <a name="global_livenessProbe_failureThreshold"></a>3.20.1. Property `stack > global > livenessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

#### <a name="global_livenessProbe_httpGet"></a>3.20.2. Property `stack > global > livenessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                          | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#global_livenessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#global_livenessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#global_livenessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

##### <a name="global_livenessProbe_httpGet_path"></a>3.20.2.1. Property `stack > global > livenessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

##### <a name="global_livenessProbe_httpGet_port"></a>3.20.2.2. Property `stack > global > livenessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                        |
| ----------------------------------------------------- |
| [item 0](#global_livenessProbe_httpGet_port_oneOf_i0) |
| [item 1](#global_livenessProbe_httpGet_port_oneOf_i1) |

###### <a name="global_livenessProbe_httpGet_port_oneOf_i0"></a>3.20.2.2.1. Property `stack > global > livenessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_livenessProbe_httpGet_port_oneOf_i1"></a>3.20.2.2.2. Property `stack > global > livenessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

##### <a name="global_livenessProbe_httpGet_scheme"></a>3.20.2.3. Property `stack > global > livenessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

#### <a name="global_livenessProbe_initialDelaySeconds"></a>3.20.3. Property `stack > global > livenessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

#### <a name="global_livenessProbe_periodSeconds"></a>3.20.4. Property `stack > global > livenessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

#### <a name="global_livenessProbe_successThreshold"></a>3.20.5. Property `stack > global > livenessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

#### <a name="global_livenessProbe_timeoutSeconds"></a>3.20.6. Property `stack > global > livenessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

### <a name="global_nameOverride"></a>3.21. Property `stack > global > nameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, combined with the stack name prefix

### <a name="global_nodeSelector"></a>3.22. Property `stack > global > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description              |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------ |
| - [kubernetes.io/arch](#global_nodeSelector_kubernetesio/arch ) | No      | string | No         | -          | Node selector for architecture |

#### <a name="global_nodeSelector_kubernetesio/arch"></a>3.22.1. Property `stack > global > nodeSelector > kubernetes.io/arch`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Node selector for architecture

### <a name="global_oidcProxy"></a>3.23. Property `stack > global > oidcProxy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                    | Pattern | Type            | Deprecated | Definition | Title/Description                            |
| ----------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | -------------------------------------------- |
| - [additionalHeaders](#global_oidcProxy_additionalHeaders ) | No      | array           | No         | -          | Additional headers to add                    |
| - [additionalSecrets](#global_oidcProxy_additionalSecrets ) | No      | array           | No         | -          | Additional secrets to mount                  |
| - [annotations](#global_oidcProxy_annotations )             | No      | object          | No         | -          | Annotations to add to the OIDC proxy         |
| - [cookieRefresh](#global_oidcProxy_cookieRefresh )         | No      | string          | No         | -          | Refresh tokens and cookies after this period |
| - [enabled](#global_oidcProxy_enabled )                     | No      | boolean         | No         | -          | Enable OIDC proxy                            |
| - [extraArgs](#global_oidcProxy_extraArgs )                 | No      | array of string | No         | -          | Extra arguments to pass to the OIDC proxy    |
| - [image](#global_oidcProxy_image )                         | No      | object          | No         | -          | -                                            |
| - [replicaCount](#global_oidcProxy_replicaCount )           | No      | integer         | No         | -          | Number of replicas                           |
| - [resources](#global_oidcProxy_resources )                 | No      | object          | No         | -          | -                                            |
| - [skipAuth](#global_oidcProxy_skipAuth )                   | No      | array of object | No         | -          | Paths to skip authentication                 |
| - [volumeMounts](#global_oidcProxy_volumeMounts )           | No      | array           | No         | -          | Volume mounts for the OIDC proxy             |

#### <a name="global_oidcProxy_additionalHeaders"></a>3.23.1. Property `stack > global > oidcProxy > additionalHeaders`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional headers to add

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="global_oidcProxy_additionalSecrets"></a>3.23.2. Property `stack > global > oidcProxy > additionalSecrets`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional secrets to mount

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="global_oidcProxy_annotations"></a>3.23.3. Property `stack > global > oidcProxy > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the OIDC proxy

#### <a name="global_oidcProxy_cookieRefresh"></a>3.23.4. Property `stack > global > oidcProxy > cookieRefresh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Refresh tokens and cookies after this period

#### <a name="global_oidcProxy_enabled"></a>3.23.5. Property `stack > global > oidcProxy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC proxy

#### <a name="global_oidcProxy_extraArgs"></a>3.23.6. Property `stack > global > oidcProxy > extraArgs`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Extra arguments to pass to the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                      | Description |
| ---------------------------------------------------- | ----------- |
| [extraArgs items](#global_oidcProxy_extraArgs_items) | -           |

##### <a name="global_oidcProxy_extraArgs_items"></a>3.23.6.1. stack > global > oidcProxy > extraArgs > extraArgs items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_oidcProxy_image"></a>3.23.7. Property `stack > global > oidcProxy > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [repository](#global_oidcProxy_image_repository ) | No      | string | No         | -          | Image repository  |
| - [tag](#global_oidcProxy_image_tag )               | No      | string | No         | -          | Image tag         |

##### <a name="global_oidcProxy_image_repository"></a>3.23.7.1. Property `stack > global > oidcProxy > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

##### <a name="global_oidcProxy_image_tag"></a>3.23.7.2. Property `stack > global > oidcProxy > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

#### <a name="global_oidcProxy_replicaCount"></a>3.23.8. Property `stack > global > oidcProxy > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

#### <a name="global_oidcProxy_resources"></a>3.23.9. Property `stack > global > oidcProxy > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#global_oidcProxy_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#global_oidcProxy_resources_requests ) | No      | object | No         | -          | -                 |

##### <a name="global_oidcProxy_resources_limits"></a>3.23.9.1. Property `stack > global > oidcProxy > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------ | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#global_oidcProxy_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#global_oidcProxy_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="global_oidcProxy_resources_limits_cpu"></a>3.23.9.1.1. Property `stack > global > oidcProxy > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                            |
| --------------------------------------------------------- |
| [item 0](#global_oidcProxy_resources_limits_cpu_oneOf_i0) |
| [item 1](#global_oidcProxy_resources_limits_cpu_oneOf_i1) |

###### <a name="global_oidcProxy_resources_limits_cpu_oneOf_i0"></a>3.23.9.1.1.1. Property `stack > global > oidcProxy > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_oidcProxy_resources_limits_cpu_oneOf_i1"></a>3.23.9.1.1.2. Property `stack > global > oidcProxy > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="global_oidcProxy_resources_limits_memory"></a>3.23.9.1.2. Property `stack > global > oidcProxy > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

##### <a name="global_oidcProxy_resources_requests"></a>3.23.9.2. Property `stack > global > oidcProxy > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type        | Deprecated | Definition | Title/Description |
| -------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#global_oidcProxy_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#global_oidcProxy_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="global_oidcProxy_resources_requests_cpu"></a>3.23.9.2.1. Property `stack > global > oidcProxy > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                              |
| ----------------------------------------------------------- |
| [item 0](#global_oidcProxy_resources_requests_cpu_oneOf_i0) |
| [item 1](#global_oidcProxy_resources_requests_cpu_oneOf_i1) |

###### <a name="global_oidcProxy_resources_requests_cpu_oneOf_i0"></a>3.23.9.2.1.1. Property `stack > global > oidcProxy > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_oidcProxy_resources_requests_cpu_oneOf_i1"></a>3.23.9.2.1.2. Property `stack > global > oidcProxy > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="global_oidcProxy_resources_requests_memory"></a>3.23.9.2.2. Property `stack > global > oidcProxy > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

#### <a name="global_oidcProxy_skipAuth"></a>3.23.10. Property `stack > global > oidcProxy > skipAuth`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Paths to skip authentication

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                    | Description |
| -------------------------------------------------- | ----------- |
| [skipAuth items](#global_oidcProxy_skipAuth_items) | -           |

##### <a name="global_oidcProxy_skipAuth_items"></a>3.23.10.1. stack > global > oidcProxy > skipAuth > skipAuth items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [method](#global_oidcProxy_skipAuth_items_method ) | No      | string | No         | -          | -                 |
| - [path](#global_oidcProxy_skipAuth_items_path )     | No      | string | No         | -          | -                 |

###### <a name="global_oidcProxy_skipAuth_items_method"></a>3.23.10.1.1. Property `stack > global > oidcProxy > skipAuth > skipAuth items > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_oidcProxy_skipAuth_items_path"></a>3.23.10.1.2. Property `stack > global > oidcProxy > skipAuth > skipAuth items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_oidcProxy_volumeMounts"></a>3.23.11. Property `stack > global > oidcProxy > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Volume mounts for the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="global_persistence"></a>3.24. Property `stack > global > persistence`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type    | Deprecated | Definition | Title/Description      |
| ----------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#global_persistence_enabled )             | No      | boolean | No         | -          | Enable persistence     |
| - [existingClaim](#global_persistence_existingClaim ) | No      | string  | No         | -          | Existing PVC name      |
| - [mountPath](#global_persistence_mountPath )         | No      | string  | No         | -          | Mount path for the PVC |
| - [pvc](#global_persistence_pvc )                     | No      | object  | No         | -          | -                      |

#### <a name="global_persistence_enabled"></a>3.24.1. Property `stack > global > persistence > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable persistence

#### <a name="global_persistence_existingClaim"></a>3.24.2. Property `stack > global > persistence > existingClaim`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Existing PVC name

#### <a name="global_persistence_mountPath"></a>3.24.3. Property `stack > global > persistence > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Mount path for the PVC

#### <a name="global_persistence_pvc"></a>3.24.4. Property `stack > global > persistence > pvc`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type                      | Deprecated | Definition | Title/Description        |
| --------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------ |
| - [accessModes](#global_persistence_pvc_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the PVC |
| - [dataSource](#global_persistence_pvc_dataSource )             | No      | object                    | No         | -          | -                        |
| - [resources](#global_persistence_pvc_resources )               | No      | object                    | No         | -          | -                        |
| - [storageClassName](#global_persistence_pvc_storageClassName ) | No      | string                    | No         | -          | Storage class name       |

##### <a name="global_persistence_pvc_accessModes"></a>3.24.4.1. Property `stack > global > persistence > pvc > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the PVC

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                | Description |
| -------------------------------------------------------------- | ----------- |
| [accessModes items](#global_persistence_pvc_accessModes_items) | -           |

###### <a name="global_persistence_pvc_accessModes_items"></a>3.24.4.1.1. stack > global > persistence > pvc > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

##### <a name="global_persistence_pvc_dataSource"></a>3.24.4.2. Property `stack > global > persistence > pvc > dataSource`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                                               |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------------- |
| - [apiGroup](#global_persistence_pvc_dataSource_apiGroup ) | No      | string | No         | -          | API version of the data source                                  |
| - [kind](#global_persistence_pvc_dataSource_kind )         | No      | string | No         | -          | Kind of the data source [VolumeSnapshot, PersistentVolumeClaim] |
| - [name](#global_persistence_pvc_dataSource_name )         | No      | string | No         | -          | Name of the data source                                         |

###### <a name="global_persistence_pvc_dataSource_apiGroup"></a>3.24.4.2.1. Property `stack > global > persistence > pvc > dataSource > apiGroup`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** API version of the data source

###### <a name="global_persistence_pvc_dataSource_kind"></a>3.24.4.2.2. Property `stack > global > persistence > pvc > dataSource > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kind of the data source [VolumeSnapshot, PersistentVolumeClaim]

###### <a name="global_persistence_pvc_dataSource_name"></a>3.24.4.2.3. Property `stack > global > persistence > pvc > dataSource > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the data source

##### <a name="global_persistence_pvc_resources"></a>3.24.4.3. Property `stack > global > persistence > pvc > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type   | Deprecated | Definition | Title/Description     |
| --------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------- |
| - [requests](#global_persistence_pvc_resources_requests ) | No      | object | No         | -          | PVC resource requests |

###### <a name="global_persistence_pvc_resources_requests"></a>3.24.4.3.1. Property `stack > global > persistence > pvc > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** PVC resource requests

| Property                                                         | Pattern | Type   | Deprecated | Definition | Title/Description        |
| ---------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------ |
| - [storage](#global_persistence_pvc_resources_requests_storage ) | No      | string | No         | -          | Storage resource request |

###### <a name="global_persistence_pvc_resources_requests_storage"></a>3.24.4.3.1.1. Property `stack > global > persistence > pvc > resources > requests > storage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage resource request

##### <a name="global_persistence_pvc_storageClassName"></a>3.24.4.4. Property `stack > global > persistence > pvc > storageClassName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage class name

### <a name="global_podAnnotations"></a>3.25. Property `stack > global > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to pods

| Property                                                                                               | Pattern | Type   | Deprecated | Definition | Title/Description                      |
| ------------------------------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | -------------------------------------- |
| - [config.linkerd.io/skip-outbound-ports](#global_podAnnotations_configlinkerdio/skip-outbound-ports ) | No      | string | No         | -          | Linkerd skip outbound ports annotation |
| - [linkerd.io/inject](#global_podAnnotations_linkerdio/inject )                                        | No      | string | No         | -          | Linkerd injection annotation           |

#### <a name="global_podAnnotations_configlinkerdio/skip-outbound-ports"></a>3.25.1. Property `stack > global > podAnnotations > config.linkerd.io/skip-outbound-ports`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd skip outbound ports annotation

#### <a name="global_podAnnotations_linkerdio/inject"></a>3.25.2. Property `stack > global > podAnnotations > linkerd.io/inject`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd injection annotation

### <a name="global_podLabels"></a>3.26. Property `stack > global > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global labels to add to all pods

### <a name="global_podSecurityContext"></a>3.27. Property `stack > global > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod security context

### <a name="global_progressDeadlineSeconds"></a>3.28. Property `stack > global > progressDeadlineSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled

### <a name="global_readinessProbe"></a>3.29. Property `stack > global > readinessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Readiness probe configuration

| Property                                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| -------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#global_readinessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#global_readinessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#global_readinessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#global_readinessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#global_readinessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#global_readinessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

#### <a name="global_readinessProbe_failureThreshold"></a>3.29.1. Property `stack > global > readinessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

#### <a name="global_readinessProbe_httpGet"></a>3.29.2. Property `stack > global > readinessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                           | Pattern | Type        | Deprecated | Definition | Title/Description |
| -------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#global_readinessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#global_readinessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#global_readinessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

##### <a name="global_readinessProbe_httpGet_path"></a>3.29.2.1. Property `stack > global > readinessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

##### <a name="global_readinessProbe_httpGet_port"></a>3.29.2.2. Property `stack > global > readinessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                         |
| ------------------------------------------------------ |
| [item 0](#global_readinessProbe_httpGet_port_oneOf_i0) |
| [item 1](#global_readinessProbe_httpGet_port_oneOf_i1) |

###### <a name="global_readinessProbe_httpGet_port_oneOf_i0"></a>3.29.2.2.1. Property `stack > global > readinessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_readinessProbe_httpGet_port_oneOf_i1"></a>3.29.2.2.2. Property `stack > global > readinessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

##### <a name="global_readinessProbe_httpGet_scheme"></a>3.29.2.3. Property `stack > global > readinessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

#### <a name="global_readinessProbe_initialDelaySeconds"></a>3.29.3. Property `stack > global > readinessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

#### <a name="global_readinessProbe_periodSeconds"></a>3.29.4. Property `stack > global > readinessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

#### <a name="global_readinessProbe_successThreshold"></a>3.29.5. Property `stack > global > readinessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

#### <a name="global_readinessProbe_timeoutSeconds"></a>3.29.6. Property `stack > global > readinessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

### <a name="global_replicaCount"></a>3.30. Property `stack > global > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

### <a name="global_resources"></a>3.31. Property `stack > global > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests and limits for the primary container

| Property                                  | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#global_resources_limits )     | No      | object | No         | -          | Resource limits   |
| - [requests](#global_resources_requests ) | No      | object | No         | -          | Resource requests |

#### <a name="global_resources_limits"></a>3.31.1. Property `stack > global > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource limits

| Property                                     | Pattern | Type        | Deprecated | Definition | Title/Description |
| -------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#global_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#global_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

##### <a name="global_resources_limits_cpu"></a>3.31.1.1. Property `stack > global > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                  |
| ----------------------------------------------- |
| [item 0](#global_resources_limits_cpu_oneOf_i0) |
| [item 1](#global_resources_limits_cpu_oneOf_i1) |

###### <a name="global_resources_limits_cpu_oneOf_i0"></a>3.31.1.1.1. Property `stack > global > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_resources_limits_cpu_oneOf_i1"></a>3.31.1.1.2. Property `stack > global > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

##### <a name="global_resources_limits_memory"></a>3.31.1.2. Property `stack > global > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

#### <a name="global_resources_requests"></a>3.31.2. Property `stack > global > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests

| Property                                       | Pattern | Type        | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#global_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#global_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

##### <a name="global_resources_requests_cpu"></a>3.31.2.1. Property `stack > global > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                    |
| ------------------------------------------------- |
| [item 0](#global_resources_requests_cpu_oneOf_i0) |
| [item 1](#global_resources_requests_cpu_oneOf_i1) |

###### <a name="global_resources_requests_cpu_oneOf_i0"></a>3.31.2.1.1. Property `stack > global > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_resources_requests_cpu_oneOf_i1"></a>3.31.2.1.2. Property `stack > global > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

##### <a name="global_resources_requests_memory"></a>3.31.2.2. Property `stack > global > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

### <a name="global_restartPolicy"></a>3.32. Property `stack > global > restartPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Restart policy for the pod

Must be one of:
* "Always"
* "OnFailure"
* "Never"

### <a name="global_rollout"></a>3.33. Property `stack > global > rollout`

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | No                   |
| **Additional properties** | Any type allowed     |
| **Defined in**            | #/properties/rollout |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#cronJobs_pattern1_rollout_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#cronJobs_pattern1_rollout_additionalProperties ) | No      | object | No         | -          | -                                                   |

#### <a name="cronJobs_pattern1_rollout_strategy"></a>3.33.1. Property `stack > cronJobs > ^.*$ > rollout > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [blueGreen](#cronJobs_pattern1_rollout_strategy_blueGreen ) | No      | object | No         | -          | -                 |

##### <a name="cronJobs_pattern1_rollout_strategy_blueGreen"></a>3.33.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

| Property                                                                                      | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#cronJobs_pattern1_rollout_strategy_blueGreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#cronJobs_pattern1_rollout_strategy_blueGreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_activeService"></a>3.33.1.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled"></a>3.33.1.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis"></a>3.33.1.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                                         | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| ---------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata"></a>3.33.1.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>3.33.1.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>3.33.1.1.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args"></a>3.33.1.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                             | Description |
| ------------------------------------------------------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items"></a>3.33.1.1.3.2.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name"></a>3.33.1.1.3.2.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value"></a>3.33.1.1.3.2.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom"></a>3.33.1.1.3.2.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                | Pattern | Type             | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>3.33.1.1.3.2.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>3.33.1.1.3.2.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>3.33.1.1.3.2.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates"></a>3.33.1.1.3.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                       | Description |
| ----------------------------------------------------------------------------------------------------- | ----------- |
| [templates items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items"></a>3.33.1.1.3.3.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ------------------------------------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope"></a>3.33.1.1.3.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName"></a>3.33.1.1.3.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_previewService"></a>3.33.1.1.4. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

### <a name="global_s3Storage"></a>3.34. Property `stack > global > s3Storage`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type                      | Deprecated | Definition | Title/Description                           |
| --------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------------------------- |
| - [accessModes](#global_s3Storage_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the S3 storage             |
| - [annotations](#global_s3Storage_annotations )           | No      | object                    | No         | -          | Additional annotations for PV/PVC           |
| - [bucketName](#global_s3Storage_bucketName )             | No      | string                    | No         | -          | S3 bucket name                              |
| - [capacity](#global_s3Storage_capacity )                 | No      | string                    | No         | -          | Storage capacity                            |
| - [enabled](#global_s3Storage_enabled )                   | No      | boolean                   | No         | -          | Enable S3 CSI storage                       |
| - [labels](#global_s3Storage_labels )                     | No      | object                    | No         | -          | Additional labels for PV/PVC                |
| - [pvName](#global_s3Storage_pvName )                     | No      | string                    | No         | -          | Custom PV name (auto-generated if empty)    |
| - [pvcName](#global_s3Storage_pvcName )                   | No      | string                    | No         | -          | Custom PVC name (auto-generated if empty)   |
| - [reclaimPolicy](#global_s3Storage_reclaimPolicy )       | No      | string                    | No         | -          | Reclaim policy for the PV                   |
| - [region](#global_s3Storage_region )                     | No      | string                    | No         | -          | AWS region                                  |
| - [volumeAttributes](#global_s3Storage_volumeAttributes ) | No      | object                    | No         | -          | Additional CSI volume attributes            |
| - [volumeHandle](#global_s3Storage_volumeHandle )         | No      | string                    | No         | -          | CSI volume handle (auto-generated if empty) |

#### <a name="global_s3Storage_accessModes"></a>3.34.1. Property `stack > global > s3Storage > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the S3 storage

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                          | Description |
| -------------------------------------------------------- | ----------- |
| [accessModes items](#global_s3Storage_accessModes_items) | -           |

##### <a name="global_s3Storage_accessModes_items"></a>3.34.1.1. stack > global > s3Storage > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

#### <a name="global_s3Storage_annotations"></a>3.34.2. Property `stack > global > s3Storage > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional annotations for PV/PVC

#### <a name="global_s3Storage_bucketName"></a>3.34.3. Property `stack > global > s3Storage > bucketName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** S3 bucket name

#### <a name="global_s3Storage_capacity"></a>3.34.4. Property `stack > global > s3Storage > capacity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage capacity

#### <a name="global_s3Storage_enabled"></a>3.34.5. Property `stack > global > s3Storage > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable S3 CSI storage

#### <a name="global_s3Storage_labels"></a>3.34.6. Property `stack > global > s3Storage > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional labels for PV/PVC

#### <a name="global_s3Storage_pvName"></a>3.34.7. Property `stack > global > s3Storage > pvName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PV name (auto-generated if empty)

#### <a name="global_s3Storage_pvcName"></a>3.34.8. Property `stack > global > s3Storage > pvcName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PVC name (auto-generated if empty)

#### <a name="global_s3Storage_reclaimPolicy"></a>3.34.9. Property `stack > global > s3Storage > reclaimPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Reclaim policy for the PV

#### <a name="global_s3Storage_region"></a>3.34.10. Property `stack > global > s3Storage > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** AWS region

#### <a name="global_s3Storage_volumeAttributes"></a>3.34.11. Property `stack > global > s3Storage > volumeAttributes`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional CSI volume attributes

#### <a name="global_s3Storage_volumeHandle"></a>3.34.12. Property `stack > global > s3Storage > volumeHandle`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CSI volume handle (auto-generated if empty)

### <a name="global_securityContext"></a>3.35. Property `stack > global > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context

### <a name="global_service"></a>3.36. Property `stack > global > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service configuration

| Property                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [port](#global_service_port ) | No      | number | No         | -          | Service port      |
| - [type](#global_service_type ) | No      | string | No         | -          | Service type      |

#### <a name="global_service_port"></a>3.36.1. Property `stack > global > service > port`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Service port

#### <a name="global_service_type"></a>3.36.2. Property `stack > global > service > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service type

### <a name="global_serviceAccount"></a>3.37. Property `stack > global > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service account configuration

| Property                                             | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                   |
| ---------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| - [annotations](#global_serviceAccount_annotations ) | No      | object  | No         | -          | Annotations to add to the service account                                                                           |
| - [automount](#global_serviceAccount_automount )     | No      | boolean | No         | -          | Specifies whether to automatically mount a ServiceAccount's API credentials                                         |
| - [create](#global_serviceAccount_create )           | No      | boolean | No         | -          | Specifies whether a service account should be created                                                               |
| - [name](#global_serviceAccount_name )               | No      | string  | No         | -          | Name of the service account to use (if not set and create is true, a name is generated using the fullname template) |

#### <a name="global_serviceAccount_annotations"></a>3.37.1. Property `stack > global > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the service account

#### <a name="global_serviceAccount_automount"></a>3.37.2. Property `stack > global > serviceAccount > automount`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether to automatically mount a ServiceAccount's API credentials

#### <a name="global_serviceAccount_create"></a>3.37.3. Property `stack > global > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether a service account should be created

#### <a name="global_serviceAccount_name"></a>3.37.4. Property `stack > global > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service account to use (if not set and create is true, a name is generated using the fullname template)

### <a name="global_shareProcessNamespace"></a>3.38. Property `stack > global > shareProcessNamespace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Share process namespace

### <a name="global_sidecars"></a>3.39. Property `stack > global > sidecars`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of sidecars

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="global_startupProbe"></a>3.40. Property `stack > global > startupProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Startup probe configuration

| Property                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [enabled](#global_startupProbe_enabled )                         | No      | boolean | No         | -          | Enable the startup probe                                                              |
| - [exec](#global_startupProbe_exec )                               | No      | object  | No         | -          | Exec probe configuration                                                              |
| - [failureThreshold](#global_startupProbe_failureThreshold )       | No      | integer | No         | -          | Number of failures before the probe is considered failed                              |
| - [initialDelaySeconds](#global_startupProbe_initialDelaySeconds ) | No      | integer | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#global_startupProbe_periodSeconds )             | No      | integer | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#global_startupProbe_successThreshold )       | No      | integer | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#global_startupProbe_timeoutSeconds )           | No      | integer | No         | -          | Timeout for the probe                                                                 |

#### <a name="global_startupProbe_enabled"></a>3.40.1. Property `stack > global > startupProbe > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the startup probe

#### <a name="global_startupProbe_exec"></a>3.40.2. Property `stack > global > startupProbe > exec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exec probe configuration

| Property                                        | Pattern | Type            | Deprecated | Definition | Title/Description |
| ----------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [command](#global_startupProbe_exec_command ) | No      | array of string | No         | -          | -                 |

##### <a name="global_startupProbe_exec_command"></a>3.40.2.1. Property `stack > global > startupProbe > exec > command`

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

| Each item of this array must be                          | Description |
| -------------------------------------------------------- | ----------- |
| [command items](#global_startupProbe_exec_command_items) | -           |

###### <a name="global_startupProbe_exec_command_items"></a>3.40.2.1.1. stack > global > startupProbe > exec > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="global_startupProbe_failureThreshold"></a>3.40.3. Property `stack > global > startupProbe > failureThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of failures before the probe is considered failed

#### <a name="global_startupProbe_initialDelaySeconds"></a>3.40.4. Property `stack > global > startupProbe > initialDelaySeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of seconds after the container has started before the probe is first initiated

#### <a name="global_startupProbe_periodSeconds"></a>3.40.5. Property `stack > global > startupProbe > periodSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** How often to perform the probe

#### <a name="global_startupProbe_successThreshold"></a>3.40.6. Property `stack > global > startupProbe > successThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of successes before the probe is considered successful

#### <a name="global_startupProbe_timeoutSeconds"></a>3.40.7. Property `stack > global > startupProbe > timeoutSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Timeout for the probe

### <a name="global_tolerations"></a>3.41. Property `stack > global > tolerations`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Tolerations for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="global_topologySpreadConstraints"></a>3.42. Property `stack > global > topologySpreadConstraints`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Topology spread constraints for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="global_volumeMounts"></a>3.43. Property `stack > global > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volume mounts on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="global_volumes"></a>3.44. Property `stack > global > volumes`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volumes on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="jobs"></a>4. Property `stack > jobs`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Jobs to deploy

| Property                  | Pattern | Type   | Deprecated | Definition             | Title/Description                                                                                            |
| ------------------------- | ------- | ------ | ---------- | ---------------------- | ------------------------------------------------------------------------------------------------------------ |
| - [^.*$](#jobs_pattern1 ) | Yes     | object | No         | In #/properties/global | Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs |

### <a name="jobs_pattern1"></a>4.1. Pattern Property `stack > jobs > global`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | #/properties/global |

**Description:** Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs

| Property                                                                     | Pattern | Type             | Deprecated | Definition              | Title/Description                                                                                                                           |
| ---------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| - [affinity](#cronJobs_pattern1_affinity )                                   | No      | object           | No         | -                       | Affinity for the pod                                                                                                                        |
| - [annotations](#cronJobs_pattern1_annotations )                             | No      | object           | No         | -                       | Global annotations to add to all resources                                                                                                  |
| - [appContext](#cronJobs_pattern1_appContext )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [appSecrets](#cronJobs_pattern1_appSecrets )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [argoBuildEnv](#cronJobs_pattern1_argoBuildEnv )                           | No      | object           | No         | -                       | Argo built-in environment parameters (provided by Argus API)                                                                                |
| - [args](#cronJobs_pattern1_args )                                           | No      | array of string  | No         | -                       | Arguments to pass to the command in the primary container                                                                                   |
| - [argusMetadata](#cronJobs_pattern1_argusMetadata )                         | No      | object           | No         | -                       | Argus metadata (provided by Argus API)                                                                                                      |
| - [autoscaling](#cronJobs_pattern1_autoscaling )                             | No      | object           | No         | -                       | Autoscaling configuration                                                                                                                   |
| - [command](#cronJobs_pattern1_command )                                     | No      | array of string  | No         | -                       | Command to run in the primary container                                                                                                     |
| - [deploymentKind](#cronJobs_pattern1_deploymentKind )                       | No      | enum (of string) | No         | -                       | Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).                                         |
| - [deploymentStage](#cronJobs_pattern1_deploymentStage )                     | No      | string           | No         | -                       | Deployment stage                                                                                                                            |
| - [dnsPolicy](#cronJobs_pattern1_dnsPolicy )                                 | No      | enum (of string) | No         | -                       | DNS policy for the pod                                                                                                                      |
| - [env](#cronJobs_pattern1_env )                                             | No      | array of object  | No         | -                       | -                                                                                                                                           |
| - [envFrom](#cronJobs_pattern1_envFrom )                                     | No      | array of object  | No         | -                       | Environment variables from configmaps or secrets                                                                                            |
| - [fullnameOverride](#cronJobs_pattern1_fullnameOverride )                   | No      | string           | No         | -                       | Name to prefix the K8s resources with, replaces the stack name prefix                                                                       |
| - [image](#cronJobs_pattern1_image )                                         | No      | object           | No         | -                       | -                                                                                                                                           |
| - [imagePullSecrets](#cronJobs_pattern1_imagePullSecrets )                   | No      | array of string  | No         | -                       | -                                                                                                                                           |
| - [ingress](#cronJobs_pattern1_ingress )                                     | No      | object           | No         | -                       | Ingress configuration                                                                                                                       |
| - [initContainers](#cronJobs_pattern1_initContainers )                       | No      | array            | No         | -                       | List of init containers                                                                                                                     |
| - [livenessProbe](#cronJobs_pattern1_livenessProbe )                         | No      | object           | No         | -                       | Liveness probe configuration                                                                                                                |
| - [nameOverride](#cronJobs_pattern1_nameOverride )                           | No      | string           | No         | -                       | Name to prefix the K8s resources with, combined with the stack name prefix                                                                  |
| - [nodeSelector](#cronJobs_pattern1_nodeSelector )                           | No      | object           | No         | -                       | -                                                                                                                                           |
| - [oidcProxy](#cronJobs_pattern1_oidcProxy )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [persistence](#cronJobs_pattern1_persistence )                             | No      | object           | No         | -                       | -                                                                                                                                           |
| - [podAnnotations](#cronJobs_pattern1_podAnnotations )                       | No      | object           | No         | -                       | Annotations to add to pods                                                                                                                  |
| - [podLabels](#cronJobs_pattern1_podLabels )                                 | No      | object           | No         | -                       | Global labels to add to all pods                                                                                                            |
| - [podSecurityContext](#cronJobs_pattern1_podSecurityContext )               | No      | object           | No         | -                       | Pod security context                                                                                                                        |
| - [progressDeadlineSeconds](#cronJobs_pattern1_progressDeadlineSeconds )     | No      | integer          | No         | -                       | the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled |
| - [readinessProbe](#cronJobs_pattern1_readinessProbe )                       | No      | object           | No         | -                       | Readiness probe configuration                                                                                                               |
| - [replicaCount](#cronJobs_pattern1_replicaCount )                           | No      | integer          | No         | -                       | Number of replicas                                                                                                                          |
| - [resources](#cronJobs_pattern1_resources )                                 | No      | object           | No         | -                       | Resource requests and limits for the primary container                                                                                      |
| - [restartPolicy](#cronJobs_pattern1_restartPolicy )                         | No      | enum (of string) | No         | -                       | Restart policy for the pod                                                                                                                  |
| - [rollout](#cronJobs_pattern1_rollout )                                     | No      | object           | No         | In #/properties/rollout | -                                                                                                                                           |
| - [s3Storage](#cronJobs_pattern1_s3Storage )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [securityContext](#cronJobs_pattern1_securityContext )                     | No      | object           | No         | -                       | Security context                                                                                                                            |
| - [service](#cronJobs_pattern1_service )                                     | No      | object           | No         | -                       | Service configuration                                                                                                                       |
| - [serviceAccount](#cronJobs_pattern1_serviceAccount )                       | No      | object           | No         | -                       | Service account configuration                                                                                                               |
| - [shareProcessNamespace](#cronJobs_pattern1_shareProcessNamespace )         | No      | boolean          | No         | -                       | Share process namespace                                                                                                                     |
| - [sidecars](#cronJobs_pattern1_sidecars )                                   | No      | array            | No         | -                       | List of sidecars                                                                                                                            |
| - [startupProbe](#cronJobs_pattern1_startupProbe )                           | No      | object           | No         | -                       | Startup probe configuration                                                                                                                 |
| - [tolerations](#cronJobs_pattern1_tolerations )                             | No      | array            | No         | -                       | Tolerations for the pod                                                                                                                     |
| - [topologySpreadConstraints](#cronJobs_pattern1_topologySpreadConstraints ) | No      | array            | No         | -                       | Topology spread constraints for the pod                                                                                                     |
| - [volumeMounts](#cronJobs_pattern1_volumeMounts )                           | No      | array            | No         | -                       | Additional volume mounts on the output Deployment definition                                                                                |
| - [volumes](#cronJobs_pattern1_volumes )                                     | No      | array            | No         | -                       | Additional volumes on the output Deployment definition                                                                                      |

#### <a name="cronJobs_pattern1_affinity"></a>4.1.1. Property `stack > cronJobs > ^.*$ > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity for the pod

#### <a name="cronJobs_pattern1_annotations"></a>4.1.2. Property `stack > cronJobs > ^.*$ > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global annotations to add to all resources

#### <a name="cronJobs_pattern1_appContext"></a>4.1.3. Property `stack > cronJobs > ^.*$ > appContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [envContextConfigMapName](#cronJobs_pattern1_appContext_envContextConfigMapName )     | No      | string | No         | -          | -                 |
| - [stackContextConfigMapName](#cronJobs_pattern1_appContext_stackContextConfigMapName ) | No      | string | No         | -          | -                 |

##### <a name="cronJobs_pattern1_appContext_envContextConfigMapName"></a>4.1.3.1. Property `stack > cronJobs > ^.*$ > appContext > envContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appContext_stackContextConfigMapName"></a>4.1.3.2. Property `stack > cronJobs > ^.*$ > appContext > stackContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_appSecrets"></a>4.1.4. Property `stack > cronJobs > ^.*$ > appSecrets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterSecret](#cronJobs_pattern1_appSecrets_clusterSecret ) | No      | object | No         | -          | -                 |
| - [envSecret](#cronJobs_pattern1_appSecrets_envSecret )         | No      | object | No         | -          | -                 |
| - [stackSecret](#cronJobs_pattern1_appSecrets_stackSecret )     | No      | object | No         | -          | -                 |

##### <a name="cronJobs_pattern1_appSecrets_clusterSecret"></a>4.1.4.1. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_clusterSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_clusterSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_clusterSecret_secretKey"></a>4.1.4.1.1. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_clusterSecret_secretName"></a>4.1.4.1.2. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appSecrets_envSecret"></a>4.1.4.2. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_envSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_envSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_envSecret_secretKey"></a>4.1.4.2.1. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_envSecret_secretName"></a>4.1.4.2.2. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appSecrets_stackSecret"></a>4.1.4.3. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_stackSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_stackSecret_secretKey"></a>4.1.4.3.1. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_stackSecret_secretName"></a>4.1.4.3.2. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_argoBuildEnv"></a>4.1.5. Property `stack > cronJobs > ^.*$ > argoBuildEnv`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argo built-in environment parameters (provided by Argus API)

| Property                                                                              | Pattern | Type   | Deprecated | Definition | Title/Description                                                                         |
| ------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------------------------------------- |
| - [appName](#cronJobs_pattern1_argoBuildEnv_appName )                                 | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name) |
| - [appNamespace](#cronJobs_pattern1_argoBuildEnv_appNamespace )                       | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAMESPACE                                                  |
| - [appRevision](#cronJobs_pattern1_argoBuildEnv_appRevision )                         | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION                                                   |
| - [appRevisionShort](#cronJobs_pattern1_argoBuildEnv_appRevisionShort )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT                                             |
| - [appRevisionShort8](#cronJobs_pattern1_argoBuildEnv_appRevisionShort8 )             | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT_8                                           |
| - [appSourcePath](#cronJobs_pattern1_argoBuildEnv_appSourcePath )                     | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_PATH                                                |
| - [appSourceRepoUrl](#cronJobs_pattern1_argoBuildEnv_appSourceRepoUrl )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |
| - [appSourceTargetRevision](#cronJobs_pattern1_argoBuildEnv_appSourceTargetRevision ) | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |

##### <a name="cronJobs_pattern1_argoBuildEnv_appName"></a>4.1.5.1. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name)

##### <a name="cronJobs_pattern1_argoBuildEnv_appNamespace"></a>4.1.5.2. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAMESPACE

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevision"></a>4.1.5.3. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevisionShort"></a>4.1.5.4. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevisionShort`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevisionShort8"></a>4.1.5.5. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevisionShort8`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT_8

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourcePath"></a>4.1.5.6. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourcePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_PATH

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourceRepoUrl"></a>4.1.5.7. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourceRepoUrl`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourceTargetRevision"></a>4.1.5.8. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourceTargetRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

#### <a name="cronJobs_pattern1_args"></a>4.1.6. Property `stack > cronJobs > ^.*$ > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Arguments to pass to the command in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be             | Description |
| ------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_args_items) | -           |

##### <a name="cronJobs_pattern1_args_items"></a>4.1.6.1. stack > cronJobs > ^.*$ > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_argusMetadata"></a>4.1.7. Property `stack > cronJobs > ^.*$ > argusMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus metadata (provided by Argus API)

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                          |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------ |
| - [appName](#cronJobs_pattern1_argusMetadata_appName )     | No      | string | No         | -          | Set by Argus API to Argus app name         |
| - [envName](#cronJobs_pattern1_argusMetadata_envName )     | No      | string | No         | -          | Set by Argus API to Argus environment name |
| - [repoName](#cronJobs_pattern1_argusMetadata_repoName )   | No      | string | No         | -          | Set by Argus API to Argus repository name  |
| - [repoOwner](#cronJobs_pattern1_argusMetadata_repoOwner ) | No      | string | No         | -          | Set by Argus API to Argus repository owner |
| - [stackName](#cronJobs_pattern1_argusMetadata_stackName ) | No      | string | No         | -          | Set by Argus API to Argus stack name       |

##### <a name="cronJobs_pattern1_argusMetadata_appName"></a>4.1.7.1. Property `stack > cronJobs > ^.*$ > argusMetadata > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus app name

##### <a name="cronJobs_pattern1_argusMetadata_envName"></a>4.1.7.2. Property `stack > cronJobs > ^.*$ > argusMetadata > envName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus environment name

##### <a name="cronJobs_pattern1_argusMetadata_repoName"></a>4.1.7.3. Property `stack > cronJobs > ^.*$ > argusMetadata > repoName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository name

##### <a name="cronJobs_pattern1_argusMetadata_repoOwner"></a>4.1.7.4. Property `stack > cronJobs > ^.*$ > argusMetadata > repoOwner`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository owner

##### <a name="cronJobs_pattern1_argusMetadata_stackName"></a>4.1.7.5. Property `stack > cronJobs > ^.*$ > argusMetadata > stackName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus stack name

#### <a name="cronJobs_pattern1_autoscaling"></a>4.1.8. Property `stack > cronJobs > ^.*$ > autoscaling`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Autoscaling configuration

| Property                                                                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                    |
| -------------------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------ |
| - [enabled](#cronJobs_pattern1_autoscaling_enabled )                                                     | No      | boolean | No         | -          | Enable autoscaling                   |
| - [maxReplicas](#cronJobs_pattern1_autoscaling_maxReplicas )                                             | No      | integer | No         | -          | Maximum number of replicas           |
| - [minReplicas](#cronJobs_pattern1_autoscaling_minReplicas )                                             | No      | integer | No         | -          | Minimum number of replicas           |
| - [targetCPUUtilizationPercentage](#cronJobs_pattern1_autoscaling_targetCPUUtilizationPercentage )       | No      | integer | No         | -          | Target CPU utilization percentage    |
| - [targetMemoryUtilizationPercentage](#cronJobs_pattern1_autoscaling_targetMemoryUtilizationPercentage ) | No      | integer | No         | -          | Target memory utilization percentage |

##### <a name="cronJobs_pattern1_autoscaling_enabled"></a>4.1.8.1. Property `stack > cronJobs > ^.*$ > autoscaling > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable autoscaling

##### <a name="cronJobs_pattern1_autoscaling_maxReplicas"></a>4.1.8.2. Property `stack > cronJobs > ^.*$ > autoscaling > maxReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum number of replicas

##### <a name="cronJobs_pattern1_autoscaling_minReplicas"></a>4.1.8.3. Property `stack > cronJobs > ^.*$ > autoscaling > minReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Minimum number of replicas

##### <a name="cronJobs_pattern1_autoscaling_targetCPUUtilizationPercentage"></a>4.1.8.4. Property `stack > cronJobs > ^.*$ > autoscaling > targetCPUUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target CPU utilization percentage

##### <a name="cronJobs_pattern1_autoscaling_targetMemoryUtilizationPercentage"></a>4.1.8.5. Property `stack > cronJobs > ^.*$ > autoscaling > targetMemoryUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target memory utilization percentage

#### <a name="cronJobs_pattern1_command"></a>4.1.9. Property `stack > cronJobs > ^.*$ > command`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Command to run in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [command items](#cronJobs_pattern1_command_items) | -           |

##### <a name="cronJobs_pattern1_command_items"></a>4.1.9.1. stack > cronJobs > ^.*$ > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_deploymentKind"></a>4.1.10. Property `stack > cronJobs > ^.*$ > deploymentKind`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |
| **Default**  | `"Deployment"`     |

**Description:** Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).

Must be one of:
* "Deployment"
* "Rollout"

#### <a name="cronJobs_pattern1_deploymentStage"></a>4.1.11. Property `stack > cronJobs > ^.*$ > deploymentStage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Deployment stage

#### <a name="cronJobs_pattern1_dnsPolicy"></a>4.1.12. Property `stack > cronJobs > ^.*$ > dnsPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** DNS policy for the pod

Must be one of:
* "ClusterFirst"
* "Default"
* "None"

#### <a name="cronJobs_pattern1_env"></a>4.1.13. Property `stack > cronJobs > ^.*$ > env`

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

| Each item of this array must be           | Description |
| ----------------------------------------- | ----------- |
| [env items](#cronJobs_pattern1_env_items) | -           |

##### <a name="cronJobs_pattern1_env_items"></a>4.1.13.1. stack > cronJobs > ^.*$ > env > env items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_env_items_name )   | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_env_items_value ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_env_items_name"></a>4.1.13.1.1. Property `stack > cronJobs > ^.*$ > env > env items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_env_items_value"></a>4.1.13.1.2. Property `stack > cronJobs > ^.*$ > env > env items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_envFrom"></a>4.1.14. Property `stack > cronJobs > ^.*$ > envFrom`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Environment variables from configmaps or secrets

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [envFrom items](#cronJobs_pattern1_envFrom_items) | -           |

##### <a name="cronJobs_pattern1_envFrom_items"></a>4.1.14.1. stack > cronJobs > ^.*$ > envFrom > envFrom items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [configMapRef](#cronJobs_pattern1_envFrom_items_configMapRef ) | No      | object | No         | -          | -                 |
| - [prefix](#cronJobs_pattern1_envFrom_items_prefix )             | No      | string | No         | -          | -                 |
| - [secretRef](#cronJobs_pattern1_envFrom_items_secretRef )       | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_envFrom_items_configMapRef"></a>4.1.14.1.1. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > configMapRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="cronJobs_pattern1_envFrom_items_prefix"></a>4.1.14.1.2. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > prefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_envFrom_items_secretRef"></a>4.1.14.1.3. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > secretRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

#### <a name="cronJobs_pattern1_fullnameOverride"></a>4.1.15. Property `stack > cronJobs > ^.*$ > fullnameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, replaces the stack name prefix

#### <a name="cronJobs_pattern1_image"></a>4.1.16. Property `stack > cronJobs > ^.*$ > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type             | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [pullPolicy](#cronJobs_pattern1_image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy |
| - [repository](#cronJobs_pattern1_image_repository ) | No      | string           | No         | -          | Image repository  |
| - [tag](#cronJobs_pattern1_image_tag )               | No      | string           | No         | -          | Image tag         |

##### <a name="cronJobs_pattern1_image_pullPolicy"></a>4.1.16.1. Property `stack > cronJobs > ^.*$ > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

##### <a name="cronJobs_pattern1_image_repository"></a>4.1.16.2. Property `stack > cronJobs > ^.*$ > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

##### <a name="cronJobs_pattern1_image_tag"></a>4.1.16.3. Property `stack > cronJobs > ^.*$ > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

#### <a name="cronJobs_pattern1_imagePullSecrets"></a>4.1.17. Property `stack > cronJobs > ^.*$ > imagePullSecrets`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [imagePullSecrets items](#cronJobs_pattern1_imagePullSecrets_items) | -           |

##### <a name="cronJobs_pattern1_imagePullSecrets_items"></a>4.1.17.1. stack > cronJobs > ^.*$ > imagePullSecrets > imagePullSecrets items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_ingress"></a>4.1.18. Property `stack > cronJobs > ^.*$ > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                                                     | Pattern | Type            | Deprecated | Definition | Title/Description                  |
| ------------------------------------------------------------ | ------- | --------------- | ---------- | ---------- | ---------------------------------- |
| - [annotations](#cronJobs_pattern1_ingress_annotations )     | No      | object          | No         | -          | -                                  |
| - [className](#cronJobs_pattern1_ingress_className )         | No      | string          | No         | -          | Ingress class name                 |
| - [enabled](#cronJobs_pattern1_ingress_enabled )             | No      | boolean         | No         | -          | Enable ingress                     |
| - [host](#cronJobs_pattern1_ingress_host )                   | No      | string          | No         | -          | Ingress host                       |
| - [oidcProtected](#cronJobs_pattern1_ingress_oidcProtected ) | No      | boolean         | No         | -          | Enable OIDC protection             |
| - [paths](#cronJobs_pattern1_ingress_paths )                 | No      | array of object | No         | -          | List of ingress paths              |
| - [rules](#cronJobs_pattern1_ingress_rules )                 | No      | array           | No         | -          | List of ingress rules              |
| - [tls](#cronJobs_pattern1_ingress_tls )                     | No      | array           | No         | -          | List of ingress TLS configurations |

##### <a name="cronJobs_pattern1_ingress_annotations"></a>4.1.18.1. Property `stack > cronJobs > ^.*$ > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [nginx.ingress.kubernetes.io/affinity](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/affinity )                             | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-connect-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout )   | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-read-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-send-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-max-age](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age ) | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-name](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-name )       | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/affinity"></a>4.1.18.1.1. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/affinity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout"></a>4.1.18.1.2. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-connect-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout"></a>4.1.18.1.3. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-read-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout"></a>4.1.18.1.4. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-send-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age"></a>4.1.18.1.5. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-max-age`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-name"></a>4.1.18.1.6. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_ingress_className"></a>4.1.18.2. Property `stack > cronJobs > ^.*$ > ingress > className`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress class name

##### <a name="cronJobs_pattern1_ingress_enabled"></a>4.1.18.3. Property `stack > cronJobs > ^.*$ > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress

##### <a name="cronJobs_pattern1_ingress_host"></a>4.1.18.4. Property `stack > cronJobs > ^.*$ > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

##### <a name="cronJobs_pattern1_ingress_oidcProtected"></a>4.1.18.5. Property `stack > cronJobs > ^.*$ > ingress > oidcProtected`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC protection

##### <a name="cronJobs_pattern1_ingress_paths"></a>4.1.18.6. Property `stack > cronJobs > ^.*$ > ingress > paths`

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

| Each item of this array must be                       | Description |
| ----------------------------------------------------- | ----------- |
| [paths items](#cronJobs_pattern1_ingress_paths_items) | -           |

###### <a name="cronJobs_pattern1_ingress_paths_items"></a>4.1.18.6.1. stack > cronJobs > ^.*$ > ingress > paths > paths items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_ingress_paths_items_path )         | No      | string | No         | -          | Ingress path      |
| - [pathType](#cronJobs_pattern1_ingress_paths_items_pathType ) | No      | string | No         | -          | Ingress path type |

###### <a name="cronJobs_pattern1_ingress_paths_items_path"></a>4.1.18.6.1.1. Property `stack > cronJobs > ^.*$ > ingress > paths > paths items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path

###### <a name="cronJobs_pattern1_ingress_paths_items_pathType"></a>4.1.18.6.1.2. Property `stack > cronJobs > ^.*$ > ingress > paths > paths items > pathType`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path type

##### <a name="cronJobs_pattern1_ingress_rules"></a>4.1.18.7. Property `stack > cronJobs > ^.*$ > ingress > rules`

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

##### <a name="cronJobs_pattern1_ingress_tls"></a>4.1.18.8. Property `stack > cronJobs > ^.*$ > ingress > tls`

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

#### <a name="cronJobs_pattern1_initContainers"></a>4.1.19. Property `stack > cronJobs > ^.*$ > initContainers`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of init containers

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_livenessProbe"></a>4.1.20. Property `stack > cronJobs > ^.*$ > livenessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Liveness probe configuration

| Property                                                                       | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#cronJobs_pattern1_livenessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#cronJobs_pattern1_livenessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#cronJobs_pattern1_livenessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_livenessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_livenessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_livenessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_livenessProbe_failureThreshold"></a>4.1.20.1. Property `stack > cronJobs > ^.*$ > livenessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_livenessProbe_httpGet"></a>4.1.20.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                                     | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------ | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_livenessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#cronJobs_pattern1_livenessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#cronJobs_pattern1_livenessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_path"></a>4.1.20.2.1. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port"></a>4.1.20.2.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                                   |
| ---------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i0) |
| [item 1](#cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i1) |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i0"></a>4.1.20.2.2.1. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i1"></a>4.1.20.2.2.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_scheme"></a>4.1.20.2.3. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

##### <a name="cronJobs_pattern1_livenessProbe_initialDelaySeconds"></a>4.1.20.3. Property `stack > cronJobs > ^.*$ > livenessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_livenessProbe_periodSeconds"></a>4.1.20.4. Property `stack > cronJobs > ^.*$ > livenessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_livenessProbe_successThreshold"></a>4.1.20.5. Property `stack > cronJobs > ^.*$ > livenessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_livenessProbe_timeoutSeconds"></a>4.1.20.6. Property `stack > cronJobs > ^.*$ > livenessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_nameOverride"></a>4.1.21. Property `stack > cronJobs > ^.*$ > nameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, combined with the stack name prefix

#### <a name="cronJobs_pattern1_nodeSelector"></a>4.1.22. Property `stack > cronJobs > ^.*$ > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description              |
| -------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------ |
| - [kubernetes.io/arch](#cronJobs_pattern1_nodeSelector_kubernetesio/arch ) | No      | string | No         | -          | Node selector for architecture |

##### <a name="cronJobs_pattern1_nodeSelector_kubernetesio/arch"></a>4.1.22.1. Property `stack > cronJobs > ^.*$ > nodeSelector > kubernetes.io/arch`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Node selector for architecture

#### <a name="cronJobs_pattern1_oidcProxy"></a>4.1.23. Property `stack > cronJobs > ^.*$ > oidcProxy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                               | Pattern | Type            | Deprecated | Definition | Title/Description                            |
| ---------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | -------------------------------------------- |
| - [additionalHeaders](#cronJobs_pattern1_oidcProxy_additionalHeaders ) | No      | array           | No         | -          | Additional headers to add                    |
| - [additionalSecrets](#cronJobs_pattern1_oidcProxy_additionalSecrets ) | No      | array           | No         | -          | Additional secrets to mount                  |
| - [annotations](#cronJobs_pattern1_oidcProxy_annotations )             | No      | object          | No         | -          | Annotations to add to the OIDC proxy         |
| - [cookieRefresh](#cronJobs_pattern1_oidcProxy_cookieRefresh )         | No      | string          | No         | -          | Refresh tokens and cookies after this period |
| - [enabled](#cronJobs_pattern1_oidcProxy_enabled )                     | No      | boolean         | No         | -          | Enable OIDC proxy                            |
| - [extraArgs](#cronJobs_pattern1_oidcProxy_extraArgs )                 | No      | array of string | No         | -          | Extra arguments to pass to the OIDC proxy    |
| - [image](#cronJobs_pattern1_oidcProxy_image )                         | No      | object          | No         | -          | -                                            |
| - [replicaCount](#cronJobs_pattern1_oidcProxy_replicaCount )           | No      | integer         | No         | -          | Number of replicas                           |
| - [resources](#cronJobs_pattern1_oidcProxy_resources )                 | No      | object          | No         | -          | -                                            |
| - [skipAuth](#cronJobs_pattern1_oidcProxy_skipAuth )                   | No      | array of object | No         | -          | Paths to skip authentication                 |
| - [volumeMounts](#cronJobs_pattern1_oidcProxy_volumeMounts )           | No      | array           | No         | -          | Volume mounts for the OIDC proxy             |

##### <a name="cronJobs_pattern1_oidcProxy_additionalHeaders"></a>4.1.23.1. Property `stack > cronJobs > ^.*$ > oidcProxy > additionalHeaders`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional headers to add

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

##### <a name="cronJobs_pattern1_oidcProxy_additionalSecrets"></a>4.1.23.2. Property `stack > cronJobs > ^.*$ > oidcProxy > additionalSecrets`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional secrets to mount

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

##### <a name="cronJobs_pattern1_oidcProxy_annotations"></a>4.1.23.3. Property `stack > cronJobs > ^.*$ > oidcProxy > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the OIDC proxy

##### <a name="cronJobs_pattern1_oidcProxy_cookieRefresh"></a>4.1.23.4. Property `stack > cronJobs > ^.*$ > oidcProxy > cookieRefresh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Refresh tokens and cookies after this period

##### <a name="cronJobs_pattern1_oidcProxy_enabled"></a>4.1.23.5. Property `stack > cronJobs > ^.*$ > oidcProxy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC proxy

##### <a name="cronJobs_pattern1_oidcProxy_extraArgs"></a>4.1.23.6. Property `stack > cronJobs > ^.*$ > oidcProxy > extraArgs`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Extra arguments to pass to the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                 | Description |
| --------------------------------------------------------------- | ----------- |
| [extraArgs items](#cronJobs_pattern1_oidcProxy_extraArgs_items) | -           |

###### <a name="cronJobs_pattern1_oidcProxy_extraArgs_items"></a>4.1.23.6.1. stack > cronJobs > ^.*$ > oidcProxy > extraArgs > extraArgs items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_oidcProxy_image"></a>4.1.23.7. Property `stack > cronJobs > ^.*$ > oidcProxy > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [repository](#cronJobs_pattern1_oidcProxy_image_repository ) | No      | string | No         | -          | Image repository  |
| - [tag](#cronJobs_pattern1_oidcProxy_image_tag )               | No      | string | No         | -          | Image tag         |

###### <a name="cronJobs_pattern1_oidcProxy_image_repository"></a>4.1.23.7.1. Property `stack > cronJobs > ^.*$ > oidcProxy > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

###### <a name="cronJobs_pattern1_oidcProxy_image_tag"></a>4.1.23.7.2. Property `stack > cronJobs > ^.*$ > oidcProxy > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

##### <a name="cronJobs_pattern1_oidcProxy_replicaCount"></a>4.1.23.8. Property `stack > cronJobs > ^.*$ > oidcProxy > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

##### <a name="cronJobs_pattern1_oidcProxy_resources"></a>4.1.23.9. Property `stack > cronJobs > ^.*$ > oidcProxy > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#cronJobs_pattern1_oidcProxy_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#cronJobs_pattern1_oidcProxy_resources_requests ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits"></a>4.1.23.9.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type        | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_oidcProxy_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#cronJobs_pattern1_oidcProxy_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu"></a>4.1.23.9.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                                       |
| -------------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i0"></a>4.1.23.9.1.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i1"></a>4.1.23.9.1.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_memory"></a>4.1.23.9.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests"></a>4.1.23.9.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_oidcProxy_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#cronJobs_pattern1_oidcProxy_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu"></a>4.1.23.9.2.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                                         |
| ---------------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i0"></a>4.1.23.9.2.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i1"></a>4.1.23.9.2.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_memory"></a>4.1.23.9.2.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

##### <a name="cronJobs_pattern1_oidcProxy_skipAuth"></a>4.1.23.10. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Paths to skip authentication

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                               | Description |
| ------------------------------------------------------------- | ----------- |
| [skipAuth items](#cronJobs_pattern1_oidcProxy_skipAuth_items) | -           |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items"></a>4.1.23.10.1. stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [method](#cronJobs_pattern1_oidcProxy_skipAuth_items_method ) | No      | string | No         | -          | -                 |
| - [path](#cronJobs_pattern1_oidcProxy_skipAuth_items_path )     | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items_method"></a>4.1.23.10.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items_path"></a>4.1.23.10.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_oidcProxy_volumeMounts"></a>4.1.23.11. Property `stack > cronJobs > ^.*$ > oidcProxy > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Volume mounts for the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_persistence"></a>4.1.24. Property `stack > cronJobs > ^.*$ > persistence`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type    | Deprecated | Definition | Title/Description      |
| ---------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#cronJobs_pattern1_persistence_enabled )             | No      | boolean | No         | -          | Enable persistence     |
| - [existingClaim](#cronJobs_pattern1_persistence_existingClaim ) | No      | string  | No         | -          | Existing PVC name      |
| - [mountPath](#cronJobs_pattern1_persistence_mountPath )         | No      | string  | No         | -          | Mount path for the PVC |
| - [pvc](#cronJobs_pattern1_persistence_pvc )                     | No      | object  | No         | -          | -                      |

##### <a name="cronJobs_pattern1_persistence_enabled"></a>4.1.24.1. Property `stack > cronJobs > ^.*$ > persistence > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable persistence

##### <a name="cronJobs_pattern1_persistence_existingClaim"></a>4.1.24.2. Property `stack > cronJobs > ^.*$ > persistence > existingClaim`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Existing PVC name

##### <a name="cronJobs_pattern1_persistence_mountPath"></a>4.1.24.3. Property `stack > cronJobs > ^.*$ > persistence > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Mount path for the PVC

##### <a name="cronJobs_pattern1_persistence_pvc"></a>4.1.24.4. Property `stack > cronJobs > ^.*$ > persistence > pvc`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type                      | Deprecated | Definition | Title/Description        |
| -------------------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------ |
| - [accessModes](#cronJobs_pattern1_persistence_pvc_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the PVC |
| - [dataSource](#cronJobs_pattern1_persistence_pvc_dataSource )             | No      | object                    | No         | -          | -                        |
| - [resources](#cronJobs_pattern1_persistence_pvc_resources )               | No      | object                    | No         | -          | -                        |
| - [storageClassName](#cronJobs_pattern1_persistence_pvc_storageClassName ) | No      | string                    | No         | -          | Storage class name       |

###### <a name="cronJobs_pattern1_persistence_pvc_accessModes"></a>4.1.24.4.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the PVC

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                           | Description |
| ------------------------------------------------------------------------- | ----------- |
| [accessModes items](#cronJobs_pattern1_persistence_pvc_accessModes_items) | -           |

###### <a name="cronJobs_pattern1_persistence_pvc_accessModes_items"></a>4.1.24.4.1.1. stack > cronJobs > ^.*$ > persistence > pvc > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource"></a>4.1.24.4.2. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type   | Deprecated | Definition | Title/Description                                               |
| --------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------------- |
| - [apiGroup](#cronJobs_pattern1_persistence_pvc_dataSource_apiGroup ) | No      | string | No         | -          | API version of the data source                                  |
| - [kind](#cronJobs_pattern1_persistence_pvc_dataSource_kind )         | No      | string | No         | -          | Kind of the data source [VolumeSnapshot, PersistentVolumeClaim] |
| - [name](#cronJobs_pattern1_persistence_pvc_dataSource_name )         | No      | string | No         | -          | Name of the data source                                         |

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_apiGroup"></a>4.1.24.4.2.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > apiGroup`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** API version of the data source

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_kind"></a>4.1.24.4.2.2. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kind of the data source [VolumeSnapshot, PersistentVolumeClaim]

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_name"></a>4.1.24.4.2.3. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the data source

###### <a name="cronJobs_pattern1_persistence_pvc_resources"></a>4.1.24.4.3. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type   | Deprecated | Definition | Title/Description     |
| -------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------- |
| - [requests](#cronJobs_pattern1_persistence_pvc_resources_requests ) | No      | object | No         | -          | PVC resource requests |

###### <a name="cronJobs_pattern1_persistence_pvc_resources_requests"></a>4.1.24.4.3.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** PVC resource requests

| Property                                                                    | Pattern | Type   | Deprecated | Definition | Title/Description        |
| --------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------ |
| - [storage](#cronJobs_pattern1_persistence_pvc_resources_requests_storage ) | No      | string | No         | -          | Storage resource request |

###### <a name="cronJobs_pattern1_persistence_pvc_resources_requests_storage"></a>4.1.24.4.3.1.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources > requests > storage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage resource request

###### <a name="cronJobs_pattern1_persistence_pvc_storageClassName"></a>4.1.24.4.4. Property `stack > cronJobs > ^.*$ > persistence > pvc > storageClassName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage class name

#### <a name="cronJobs_pattern1_podAnnotations"></a>4.1.25. Property `stack > cronJobs > ^.*$ > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to pods

| Property                                                                                                          | Pattern | Type   | Deprecated | Definition | Title/Description                      |
| ----------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------- |
| - [config.linkerd.io/skip-outbound-ports](#cronJobs_pattern1_podAnnotations_configlinkerdio/skip-outbound-ports ) | No      | string | No         | -          | Linkerd skip outbound ports annotation |
| - [linkerd.io/inject](#cronJobs_pattern1_podAnnotations_linkerdio/inject )                                        | No      | string | No         | -          | Linkerd injection annotation           |

##### <a name="cronJobs_pattern1_podAnnotations_configlinkerdio/skip-outbound-ports"></a>4.1.25.1. Property `stack > cronJobs > ^.*$ > podAnnotations > config.linkerd.io/skip-outbound-ports`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd skip outbound ports annotation

##### <a name="cronJobs_pattern1_podAnnotations_linkerdio/inject"></a>4.1.25.2. Property `stack > cronJobs > ^.*$ > podAnnotations > linkerd.io/inject`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd injection annotation

#### <a name="cronJobs_pattern1_podLabels"></a>4.1.26. Property `stack > cronJobs > ^.*$ > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global labels to add to all pods

#### <a name="cronJobs_pattern1_podSecurityContext"></a>4.1.27. Property `stack > cronJobs > ^.*$ > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod security context

#### <a name="cronJobs_pattern1_progressDeadlineSeconds"></a>4.1.28. Property `stack > cronJobs > ^.*$ > progressDeadlineSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled

#### <a name="cronJobs_pattern1_readinessProbe"></a>4.1.29. Property `stack > cronJobs > ^.*$ > readinessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Readiness probe configuration

| Property                                                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#cronJobs_pattern1_readinessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#cronJobs_pattern1_readinessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#cronJobs_pattern1_readinessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_readinessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_readinessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_readinessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_readinessProbe_failureThreshold"></a>4.1.29.1. Property `stack > cronJobs > ^.*$ > readinessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_readinessProbe_httpGet"></a>4.1.29.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                                      | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_readinessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#cronJobs_pattern1_readinessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#cronJobs_pattern1_readinessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_path"></a>4.1.29.2.1. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port"></a>4.1.29.2.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                                    |
| ----------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i0) |
| [item 1](#cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i1) |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i0"></a>4.1.29.2.2.1. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i1"></a>4.1.29.2.2.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_scheme"></a>4.1.29.2.3. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

##### <a name="cronJobs_pattern1_readinessProbe_initialDelaySeconds"></a>4.1.29.3. Property `stack > cronJobs > ^.*$ > readinessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_readinessProbe_periodSeconds"></a>4.1.29.4. Property `stack > cronJobs > ^.*$ > readinessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_readinessProbe_successThreshold"></a>4.1.29.5. Property `stack > cronJobs > ^.*$ > readinessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_readinessProbe_timeoutSeconds"></a>4.1.29.6. Property `stack > cronJobs > ^.*$ > readinessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_replicaCount"></a>4.1.30. Property `stack > cronJobs > ^.*$ > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

#### <a name="cronJobs_pattern1_resources"></a>4.1.31. Property `stack > cronJobs > ^.*$ > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests and limits for the primary container

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#cronJobs_pattern1_resources_limits )     | No      | object | No         | -          | Resource limits   |
| - [requests](#cronJobs_pattern1_resources_requests ) | No      | object | No         | -          | Resource requests |

##### <a name="cronJobs_pattern1_resources_limits"></a>4.1.31.1. Property `stack > cronJobs > ^.*$ > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource limits

| Property                                                | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#cronJobs_pattern1_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="cronJobs_pattern1_resources_limits_cpu"></a>4.1.31.1.1. Property `stack > cronJobs > ^.*$ > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                             |
| ---------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_resources_limits_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_resources_limits_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_resources_limits_cpu_oneOf_i0"></a>4.1.31.1.1.1. Property `stack > cronJobs > ^.*$ > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_limits_cpu_oneOf_i1"></a>4.1.31.1.1.2. Property `stack > cronJobs > ^.*$ > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_limits_memory"></a>4.1.31.1.2. Property `stack > cronJobs > ^.*$ > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

##### <a name="cronJobs_pattern1_resources_requests"></a>4.1.31.2. Property `stack > cronJobs > ^.*$ > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests

| Property                                                  | Pattern | Type        | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#cronJobs_pattern1_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="cronJobs_pattern1_resources_requests_cpu"></a>4.1.31.2.1. Property `stack > cronJobs > ^.*$ > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                               |
| ------------------------------------------------------------ |
| [item 0](#cronJobs_pattern1_resources_requests_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_resources_requests_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_resources_requests_cpu_oneOf_i0"></a>4.1.31.2.1.1. Property `stack > cronJobs > ^.*$ > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_requests_cpu_oneOf_i1"></a>4.1.31.2.1.2. Property `stack > cronJobs > ^.*$ > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_requests_memory"></a>4.1.31.2.2. Property `stack > cronJobs > ^.*$ > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

#### <a name="cronJobs_pattern1_restartPolicy"></a>4.1.32. Property `stack > cronJobs > ^.*$ > restartPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Restart policy for the pod

Must be one of:
* "Always"
* "OnFailure"
* "Never"

#### <a name="cronJobs_pattern1_rollout"></a>4.1.33. Property `stack > cronJobs > ^.*$ > rollout`

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | No                   |
| **Additional properties** | Any type allowed     |
| **Defined in**            | #/properties/rollout |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#cronJobs_pattern1_rollout_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#cronJobs_pattern1_rollout_additionalProperties ) | No      | object | No         | -          | -                                                   |

##### <a name="cronJobs_pattern1_rollout_strategy"></a>4.1.33.1. Property `stack > cronJobs > ^.*$ > rollout > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [blueGreen](#cronJobs_pattern1_rollout_strategy_blueGreen ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen"></a>4.1.33.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

| Property                                                                                      | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#cronJobs_pattern1_rollout_strategy_blueGreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#cronJobs_pattern1_rollout_strategy_blueGreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_activeService"></a>4.1.33.1.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled"></a>4.1.33.1.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis"></a>4.1.33.1.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                                         | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| ---------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata"></a>4.1.33.1.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>4.1.33.1.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>4.1.33.1.1.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args"></a>4.1.33.1.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                             | Description |
| ------------------------------------------------------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items"></a>4.1.33.1.1.3.2.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name"></a>4.1.33.1.1.3.2.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value"></a>4.1.33.1.1.3.2.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom"></a>4.1.33.1.1.3.2.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                | Pattern | Type             | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>4.1.33.1.1.3.2.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>4.1.33.1.1.3.2.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>4.1.33.1.1.3.2.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates"></a>4.1.33.1.1.3.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                       | Description |
| ----------------------------------------------------------------------------------------------------- | ----------- |
| [templates items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items"></a>4.1.33.1.1.3.3.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ------------------------------------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope"></a>4.1.33.1.1.3.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName"></a>4.1.33.1.1.3.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_previewService"></a>4.1.33.1.1.4. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

#### <a name="cronJobs_pattern1_s3Storage"></a>4.1.34. Property `stack > cronJobs > ^.*$ > s3Storage`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type                      | Deprecated | Definition | Title/Description                           |
| -------------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------------------------- |
| - [accessModes](#cronJobs_pattern1_s3Storage_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the S3 storage             |
| - [annotations](#cronJobs_pattern1_s3Storage_annotations )           | No      | object                    | No         | -          | Additional annotations for PV/PVC           |
| - [bucketName](#cronJobs_pattern1_s3Storage_bucketName )             | No      | string                    | No         | -          | S3 bucket name                              |
| - [capacity](#cronJobs_pattern1_s3Storage_capacity )                 | No      | string                    | No         | -          | Storage capacity                            |
| - [enabled](#cronJobs_pattern1_s3Storage_enabled )                   | No      | boolean                   | No         | -          | Enable S3 CSI storage                       |
| - [labels](#cronJobs_pattern1_s3Storage_labels )                     | No      | object                    | No         | -          | Additional labels for PV/PVC                |
| - [pvName](#cronJobs_pattern1_s3Storage_pvName )                     | No      | string                    | No         | -          | Custom PV name (auto-generated if empty)    |
| - [pvcName](#cronJobs_pattern1_s3Storage_pvcName )                   | No      | string                    | No         | -          | Custom PVC name (auto-generated if empty)   |
| - [reclaimPolicy](#cronJobs_pattern1_s3Storage_reclaimPolicy )       | No      | string                    | No         | -          | Reclaim policy for the PV                   |
| - [region](#cronJobs_pattern1_s3Storage_region )                     | No      | string                    | No         | -          | AWS region                                  |
| - [volumeAttributes](#cronJobs_pattern1_s3Storage_volumeAttributes ) | No      | object                    | No         | -          | Additional CSI volume attributes            |
| - [volumeHandle](#cronJobs_pattern1_s3Storage_volumeHandle )         | No      | string                    | No         | -          | CSI volume handle (auto-generated if empty) |

##### <a name="cronJobs_pattern1_s3Storage_accessModes"></a>4.1.34.1. Property `stack > cronJobs > ^.*$ > s3Storage > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the S3 storage

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [accessModes items](#cronJobs_pattern1_s3Storage_accessModes_items) | -           |

###### <a name="cronJobs_pattern1_s3Storage_accessModes_items"></a>4.1.34.1.1. stack > cronJobs > ^.*$ > s3Storage > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

##### <a name="cronJobs_pattern1_s3Storage_annotations"></a>4.1.34.2. Property `stack > cronJobs > ^.*$ > s3Storage > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional annotations for PV/PVC

##### <a name="cronJobs_pattern1_s3Storage_bucketName"></a>4.1.34.3. Property `stack > cronJobs > ^.*$ > s3Storage > bucketName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** S3 bucket name

##### <a name="cronJobs_pattern1_s3Storage_capacity"></a>4.1.34.4. Property `stack > cronJobs > ^.*$ > s3Storage > capacity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage capacity

##### <a name="cronJobs_pattern1_s3Storage_enabled"></a>4.1.34.5. Property `stack > cronJobs > ^.*$ > s3Storage > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable S3 CSI storage

##### <a name="cronJobs_pattern1_s3Storage_labels"></a>4.1.34.6. Property `stack > cronJobs > ^.*$ > s3Storage > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional labels for PV/PVC

##### <a name="cronJobs_pattern1_s3Storage_pvName"></a>4.1.34.7. Property `stack > cronJobs > ^.*$ > s3Storage > pvName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PV name (auto-generated if empty)

##### <a name="cronJobs_pattern1_s3Storage_pvcName"></a>4.1.34.8. Property `stack > cronJobs > ^.*$ > s3Storage > pvcName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PVC name (auto-generated if empty)

##### <a name="cronJobs_pattern1_s3Storage_reclaimPolicy"></a>4.1.34.9. Property `stack > cronJobs > ^.*$ > s3Storage > reclaimPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Reclaim policy for the PV

##### <a name="cronJobs_pattern1_s3Storage_region"></a>4.1.34.10. Property `stack > cronJobs > ^.*$ > s3Storage > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** AWS region

##### <a name="cronJobs_pattern1_s3Storage_volumeAttributes"></a>4.1.34.11. Property `stack > cronJobs > ^.*$ > s3Storage > volumeAttributes`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional CSI volume attributes

##### <a name="cronJobs_pattern1_s3Storage_volumeHandle"></a>4.1.34.12. Property `stack > cronJobs > ^.*$ > s3Storage > volumeHandle`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CSI volume handle (auto-generated if empty)

#### <a name="cronJobs_pattern1_securityContext"></a>4.1.35. Property `stack > cronJobs > ^.*$ > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context

#### <a name="cronJobs_pattern1_service"></a>4.1.36. Property `stack > cronJobs > ^.*$ > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service configuration

| Property                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [port](#cronJobs_pattern1_service_port ) | No      | number | No         | -          | Service port      |
| - [type](#cronJobs_pattern1_service_type ) | No      | string | No         | -          | Service type      |

##### <a name="cronJobs_pattern1_service_port"></a>4.1.36.1. Property `stack > cronJobs > ^.*$ > service > port`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Service port

##### <a name="cronJobs_pattern1_service_type"></a>4.1.36.2. Property `stack > cronJobs > ^.*$ > service > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service type

#### <a name="cronJobs_pattern1_serviceAccount"></a>4.1.37. Property `stack > cronJobs > ^.*$ > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service account configuration

| Property                                                        | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                   |
| --------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| - [annotations](#cronJobs_pattern1_serviceAccount_annotations ) | No      | object  | No         | -          | Annotations to add to the service account                                                                           |
| - [automount](#cronJobs_pattern1_serviceAccount_automount )     | No      | boolean | No         | -          | Specifies whether to automatically mount a ServiceAccount's API credentials                                         |
| - [create](#cronJobs_pattern1_serviceAccount_create )           | No      | boolean | No         | -          | Specifies whether a service account should be created                                                               |
| - [name](#cronJobs_pattern1_serviceAccount_name )               | No      | string  | No         | -          | Name of the service account to use (if not set and create is true, a name is generated using the fullname template) |

##### <a name="cronJobs_pattern1_serviceAccount_annotations"></a>4.1.37.1. Property `stack > cronJobs > ^.*$ > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the service account

##### <a name="cronJobs_pattern1_serviceAccount_automount"></a>4.1.37.2. Property `stack > cronJobs > ^.*$ > serviceAccount > automount`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether to automatically mount a ServiceAccount's API credentials

##### <a name="cronJobs_pattern1_serviceAccount_create"></a>4.1.37.3. Property `stack > cronJobs > ^.*$ > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether a service account should be created

##### <a name="cronJobs_pattern1_serviceAccount_name"></a>4.1.37.4. Property `stack > cronJobs > ^.*$ > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service account to use (if not set and create is true, a name is generated using the fullname template)

#### <a name="cronJobs_pattern1_shareProcessNamespace"></a>4.1.38. Property `stack > cronJobs > ^.*$ > shareProcessNamespace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Share process namespace

#### <a name="cronJobs_pattern1_sidecars"></a>4.1.39. Property `stack > cronJobs > ^.*$ > sidecars`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of sidecars

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_startupProbe"></a>4.1.40. Property `stack > cronJobs > ^.*$ > startupProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Startup probe configuration

| Property                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description                                                                     |
| ----------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [enabled](#cronJobs_pattern1_startupProbe_enabled )                         | No      | boolean | No         | -          | Enable the startup probe                                                              |
| - [exec](#cronJobs_pattern1_startupProbe_exec )                               | No      | object  | No         | -          | Exec probe configuration                                                              |
| - [failureThreshold](#cronJobs_pattern1_startupProbe_failureThreshold )       | No      | integer | No         | -          | Number of failures before the probe is considered failed                              |
| - [initialDelaySeconds](#cronJobs_pattern1_startupProbe_initialDelaySeconds ) | No      | integer | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_startupProbe_periodSeconds )             | No      | integer | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_startupProbe_successThreshold )       | No      | integer | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_startupProbe_timeoutSeconds )           | No      | integer | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_startupProbe_enabled"></a>4.1.40.1. Property `stack > cronJobs > ^.*$ > startupProbe > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the startup probe

##### <a name="cronJobs_pattern1_startupProbe_exec"></a>4.1.40.2. Property `stack > cronJobs > ^.*$ > startupProbe > exec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exec probe configuration

| Property                                                   | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [command](#cronJobs_pattern1_startupProbe_exec_command ) | No      | array of string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_startupProbe_exec_command"></a>4.1.40.2.1. Property `stack > cronJobs > ^.*$ > startupProbe > exec > command`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [command items](#cronJobs_pattern1_startupProbe_exec_command_items) | -           |

###### <a name="cronJobs_pattern1_startupProbe_exec_command_items"></a>4.1.40.2.1.1. stack > cronJobs > ^.*$ > startupProbe > exec > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_startupProbe_failureThreshold"></a>4.1.40.3. Property `stack > cronJobs > ^.*$ > startupProbe > failureThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_startupProbe_initialDelaySeconds"></a>4.1.40.4. Property `stack > cronJobs > ^.*$ > startupProbe > initialDelaySeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_startupProbe_periodSeconds"></a>4.1.40.5. Property `stack > cronJobs > ^.*$ > startupProbe > periodSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_startupProbe_successThreshold"></a>4.1.40.6. Property `stack > cronJobs > ^.*$ > startupProbe > successThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_startupProbe_timeoutSeconds"></a>4.1.40.7. Property `stack > cronJobs > ^.*$ > startupProbe > timeoutSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_tolerations"></a>4.1.41. Property `stack > cronJobs > ^.*$ > tolerations`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Tolerations for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_topologySpreadConstraints"></a>4.1.42. Property `stack > cronJobs > ^.*$ > topologySpreadConstraints`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Topology spread constraints for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_volumeMounts"></a>4.1.43. Property `stack > cronJobs > ^.*$ > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volume mounts on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_volumes"></a>4.1.44. Property `stack > cronJobs > ^.*$ > volumes`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volumes on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="rollout"></a>5. Property `stack > rollout`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                             | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ------------------------------------ | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#rollout_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#rollout_additionalProperties ) | No      | object | No         | -          | -                                                   |

### <a name="rollout_strategy"></a>5.1. Property `stack > rollout > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [blueGreen](#rollout_strategy_blueGreen ) | No      | object | No         | -          | -                 |

#### <a name="rollout_strategy_blueGreen"></a>5.1.1. Property `stack > rollout > strategy > blueGreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

| Property                                                                    | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| --------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#rollout_strategy_blueGreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#rollout_strategy_blueGreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#rollout_strategy_blueGreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#rollout_strategy_blueGreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |

##### <a name="rollout_strategy_blueGreen_activeService"></a>5.1.1.1. Property `stack > rollout > strategy > blueGreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

##### <a name="rollout_strategy_blueGreen_autoPromotionEnabled"></a>5.1.1.2. Property `stack > rollout > strategy > blueGreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

##### <a name="rollout_strategy_blueGreen_prePromotionAnalysis"></a>5.1.1.3. Property `stack > rollout > strategy > blueGreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                                         | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| ---------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata"></a>5.1.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>5.1.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>5.1.1.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args"></a>5.1.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                             | Description |
| ------------------------------------------------------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items"></a>5.1.1.3.2.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name"></a>5.1.1.3.2.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value"></a>5.1.1.3.2.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom"></a>5.1.1.3.2.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                | Pattern | Type             | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>5.1.1.3.2.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>5.1.1.3.2.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>5.1.1.3.2.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates"></a>5.1.1.3.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                       | Description |
| ----------------------------------------------------------------------------------------------------- | ----------- |
| [templates items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items"></a>5.1.1.3.3.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ------------------------------------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope"></a>5.1.1.3.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName"></a>5.1.1.3.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

##### <a name="rollout_strategy_blueGreen_previewService"></a>5.1.1.4. Property `stack > rollout > strategy > blueGreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

## <a name="rolloutAnalysis"></a>6. Property `stack > rolloutAnalysis`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** defines a template that is used to create a analysisRun

| Property                                                       | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| -------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#rolloutAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#rolloutAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#rolloutAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#rolloutAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

### <a name="rolloutAnalysis_analysisRunMetadata"></a>6.1. Property `stack > rolloutAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                           | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| ------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#rolloutAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#rolloutAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

#### <a name="rolloutAnalysis_analysisRunMetadata_annotations"></a>6.1.1. Property `stack > rolloutAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

#### <a name="rolloutAnalysis_analysisRunMetadata_labels"></a>6.1.2. Property `stack > rolloutAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

### <a name="rolloutAnalysis_args"></a>6.2. Property `stack > rolloutAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be           | Description |
| ----------------------------------------- | ----------- |
| [args items](#rolloutAnalysis_args_items) | -           |

#### <a name="rolloutAnalysis_args_items"></a>6.2.1. stack > rolloutAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#rolloutAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#rolloutAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#rolloutAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

##### <a name="rolloutAnalysis_args_items_name"></a>6.2.1.1. Property `stack > rolloutAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="rolloutAnalysis_args_items_value"></a>6.2.1.2. Property `stack > rolloutAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="rolloutAnalysis_args_items_valueFrom"></a>6.2.1.3. Property `stack > rolloutAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                              | Pattern | Type             | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#rolloutAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#rolloutAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="rolloutAnalysis_args_items_valueFrom_fieldRef"></a>6.2.1.3.1. Property `stack > rolloutAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#rolloutAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="rolloutAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>6.2.1.3.1.1. Property `stack > rolloutAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="rolloutAnalysis_args_items_valueFrom_podTemplateHashValue"></a>6.2.1.3.2. Property `stack > rolloutAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

### <a name="rolloutAnalysis_templates"></a>6.3. Property `stack > rolloutAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                     | Description |
| --------------------------------------------------- | ----------- |
| [templates items](#rolloutAnalysis_templates_items) | -           |

#### <a name="rolloutAnalysis_templates_items"></a>6.3.1. stack > rolloutAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ---------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#rolloutAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#rolloutAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

##### <a name="rolloutAnalysis_templates_items_clusterScope"></a>6.3.1.1. Property `stack > rolloutAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

##### <a name="rolloutAnalysis_templates_items_templateName"></a>6.3.1.2. Property `stack > rolloutAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

## <a name="services"></a>7. Property `stack > services`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Services to deploy

| Property                      | Pattern | Type   | Deprecated | Definition             | Title/Description                                                                                            |
| ----------------------------- | ------- | ------ | ---------- | ---------------------- | ------------------------------------------------------------------------------------------------------------ |
| - [^.*$](#services_pattern1 ) | Yes     | object | No         | In #/properties/global | Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs |

### <a name="services_pattern1"></a>7.1. Pattern Property `stack > services > global`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | #/properties/global |

**Description:** Global configuration for the stack - this serves as the default configuration for all services/jobs/cronjobs

| Property                                                                     | Pattern | Type             | Deprecated | Definition              | Title/Description                                                                                                                           |
| ---------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| - [affinity](#cronJobs_pattern1_affinity )                                   | No      | object           | No         | -                       | Affinity for the pod                                                                                                                        |
| - [annotations](#cronJobs_pattern1_annotations )                             | No      | object           | No         | -                       | Global annotations to add to all resources                                                                                                  |
| - [appContext](#cronJobs_pattern1_appContext )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [appSecrets](#cronJobs_pattern1_appSecrets )                               | No      | object           | No         | -                       | -                                                                                                                                           |
| - [argoBuildEnv](#cronJobs_pattern1_argoBuildEnv )                           | No      | object           | No         | -                       | Argo built-in environment parameters (provided by Argus API)                                                                                |
| - [args](#cronJobs_pattern1_args )                                           | No      | array of string  | No         | -                       | Arguments to pass to the command in the primary container                                                                                   |
| - [argusMetadata](#cronJobs_pattern1_argusMetadata )                         | No      | object           | No         | -                       | Argus metadata (provided by Argus API)                                                                                                      |
| - [autoscaling](#cronJobs_pattern1_autoscaling )                             | No      | object           | No         | -                       | Autoscaling configuration                                                                                                                   |
| - [command](#cronJobs_pattern1_command )                                     | No      | array of string  | No         | -                       | Command to run in the primary container                                                                                                     |
| - [deploymentKind](#cronJobs_pattern1_deploymentKind )                       | No      | enum (of string) | No         | -                       | Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).                                         |
| - [deploymentStage](#cronJobs_pattern1_deploymentStage )                     | No      | string           | No         | -                       | Deployment stage                                                                                                                            |
| - [dnsPolicy](#cronJobs_pattern1_dnsPolicy )                                 | No      | enum (of string) | No         | -                       | DNS policy for the pod                                                                                                                      |
| - [env](#cronJobs_pattern1_env )                                             | No      | array of object  | No         | -                       | -                                                                                                                                           |
| - [envFrom](#cronJobs_pattern1_envFrom )                                     | No      | array of object  | No         | -                       | Environment variables from configmaps or secrets                                                                                            |
| - [fullnameOverride](#cronJobs_pattern1_fullnameOverride )                   | No      | string           | No         | -                       | Name to prefix the K8s resources with, replaces the stack name prefix                                                                       |
| - [image](#cronJobs_pattern1_image )                                         | No      | object           | No         | -                       | -                                                                                                                                           |
| - [imagePullSecrets](#cronJobs_pattern1_imagePullSecrets )                   | No      | array of string  | No         | -                       | -                                                                                                                                           |
| - [ingress](#cronJobs_pattern1_ingress )                                     | No      | object           | No         | -                       | Ingress configuration                                                                                                                       |
| - [initContainers](#cronJobs_pattern1_initContainers )                       | No      | array            | No         | -                       | List of init containers                                                                                                                     |
| - [livenessProbe](#cronJobs_pattern1_livenessProbe )                         | No      | object           | No         | -                       | Liveness probe configuration                                                                                                                |
| - [nameOverride](#cronJobs_pattern1_nameOverride )                           | No      | string           | No         | -                       | Name to prefix the K8s resources with, combined with the stack name prefix                                                                  |
| - [nodeSelector](#cronJobs_pattern1_nodeSelector )                           | No      | object           | No         | -                       | -                                                                                                                                           |
| - [oidcProxy](#cronJobs_pattern1_oidcProxy )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [persistence](#cronJobs_pattern1_persistence )                             | No      | object           | No         | -                       | -                                                                                                                                           |
| - [podAnnotations](#cronJobs_pattern1_podAnnotations )                       | No      | object           | No         | -                       | Annotations to add to pods                                                                                                                  |
| - [podLabels](#cronJobs_pattern1_podLabels )                                 | No      | object           | No         | -                       | Global labels to add to all pods                                                                                                            |
| - [podSecurityContext](#cronJobs_pattern1_podSecurityContext )               | No      | object           | No         | -                       | Pod security context                                                                                                                        |
| - [progressDeadlineSeconds](#cronJobs_pattern1_progressDeadlineSeconds )     | No      | integer          | No         | -                       | the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled |
| - [readinessProbe](#cronJobs_pattern1_readinessProbe )                       | No      | object           | No         | -                       | Readiness probe configuration                                                                                                               |
| - [replicaCount](#cronJobs_pattern1_replicaCount )                           | No      | integer          | No         | -                       | Number of replicas                                                                                                                          |
| - [resources](#cronJobs_pattern1_resources )                                 | No      | object           | No         | -                       | Resource requests and limits for the primary container                                                                                      |
| - [restartPolicy](#cronJobs_pattern1_restartPolicy )                         | No      | enum (of string) | No         | -                       | Restart policy for the pod                                                                                                                  |
| - [rollout](#cronJobs_pattern1_rollout )                                     | No      | object           | No         | In #/properties/rollout | -                                                                                                                                           |
| - [s3Storage](#cronJobs_pattern1_s3Storage )                                 | No      | object           | No         | -                       | -                                                                                                                                           |
| - [securityContext](#cronJobs_pattern1_securityContext )                     | No      | object           | No         | -                       | Security context                                                                                                                            |
| - [service](#cronJobs_pattern1_service )                                     | No      | object           | No         | -                       | Service configuration                                                                                                                       |
| - [serviceAccount](#cronJobs_pattern1_serviceAccount )                       | No      | object           | No         | -                       | Service account configuration                                                                                                               |
| - [shareProcessNamespace](#cronJobs_pattern1_shareProcessNamespace )         | No      | boolean          | No         | -                       | Share process namespace                                                                                                                     |
| - [sidecars](#cronJobs_pattern1_sidecars )                                   | No      | array            | No         | -                       | List of sidecars                                                                                                                            |
| - [startupProbe](#cronJobs_pattern1_startupProbe )                           | No      | object           | No         | -                       | Startup probe configuration                                                                                                                 |
| - [tolerations](#cronJobs_pattern1_tolerations )                             | No      | array            | No         | -                       | Tolerations for the pod                                                                                                                     |
| - [topologySpreadConstraints](#cronJobs_pattern1_topologySpreadConstraints ) | No      | array            | No         | -                       | Topology spread constraints for the pod                                                                                                     |
| - [volumeMounts](#cronJobs_pattern1_volumeMounts )                           | No      | array            | No         | -                       | Additional volume mounts on the output Deployment definition                                                                                |
| - [volumes](#cronJobs_pattern1_volumes )                                     | No      | array            | No         | -                       | Additional volumes on the output Deployment definition                                                                                      |

#### <a name="cronJobs_pattern1_affinity"></a>7.1.1. Property `stack > cronJobs > ^.*$ > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity for the pod

#### <a name="cronJobs_pattern1_annotations"></a>7.1.2. Property `stack > cronJobs > ^.*$ > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global annotations to add to all resources

#### <a name="cronJobs_pattern1_appContext"></a>7.1.3. Property `stack > cronJobs > ^.*$ > appContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [envContextConfigMapName](#cronJobs_pattern1_appContext_envContextConfigMapName )     | No      | string | No         | -          | -                 |
| - [stackContextConfigMapName](#cronJobs_pattern1_appContext_stackContextConfigMapName ) | No      | string | No         | -          | -                 |

##### <a name="cronJobs_pattern1_appContext_envContextConfigMapName"></a>7.1.3.1. Property `stack > cronJobs > ^.*$ > appContext > envContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appContext_stackContextConfigMapName"></a>7.1.3.2. Property `stack > cronJobs > ^.*$ > appContext > stackContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_appSecrets"></a>7.1.4. Property `stack > cronJobs > ^.*$ > appSecrets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterSecret](#cronJobs_pattern1_appSecrets_clusterSecret ) | No      | object | No         | -          | -                 |
| - [envSecret](#cronJobs_pattern1_appSecrets_envSecret )         | No      | object | No         | -          | -                 |
| - [stackSecret](#cronJobs_pattern1_appSecrets_stackSecret )     | No      | object | No         | -          | -                 |

##### <a name="cronJobs_pattern1_appSecrets_clusterSecret"></a>7.1.4.1. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_clusterSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_clusterSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_clusterSecret_secretKey"></a>7.1.4.1.1. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_clusterSecret_secretName"></a>7.1.4.1.2. Property `stack > cronJobs > ^.*$ > appSecrets > clusterSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appSecrets_envSecret"></a>7.1.4.2. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_envSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_envSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_envSecret_secretKey"></a>7.1.4.2.1. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_envSecret_secretName"></a>7.1.4.2.2. Property `stack > cronJobs > ^.*$ > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_appSecrets_stackSecret"></a>7.1.4.3. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretKey](#cronJobs_pattern1_appSecrets_stackSecret_secretKey )   | No      | string | No         | -          | -                 |
| - [secretName](#cronJobs_pattern1_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_appSecrets_stackSecret_secretKey"></a>7.1.4.3.1. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_appSecrets_stackSecret_secretName"></a>7.1.4.3.2. Property `stack > cronJobs > ^.*$ > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_argoBuildEnv"></a>7.1.5. Property `stack > cronJobs > ^.*$ > argoBuildEnv`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argo built-in environment parameters (provided by Argus API)

| Property                                                                              | Pattern | Type   | Deprecated | Definition | Title/Description                                                                         |
| ------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------------------------------------- |
| - [appName](#cronJobs_pattern1_argoBuildEnv_appName )                                 | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name) |
| - [appNamespace](#cronJobs_pattern1_argoBuildEnv_appNamespace )                       | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_NAMESPACE                                                  |
| - [appRevision](#cronJobs_pattern1_argoBuildEnv_appRevision )                         | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION                                                   |
| - [appRevisionShort](#cronJobs_pattern1_argoBuildEnv_appRevisionShort )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT                                             |
| - [appRevisionShort8](#cronJobs_pattern1_argoBuildEnv_appRevisionShort8 )             | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_REVISION_SHORT_8                                           |
| - [appSourcePath](#cronJobs_pattern1_argoBuildEnv_appSourcePath )                     | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_PATH                                                |
| - [appSourceRepoUrl](#cronJobs_pattern1_argoBuildEnv_appSourceRepoUrl )               | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |
| - [appSourceTargetRevision](#cronJobs_pattern1_argoBuildEnv_appSourceTargetRevision ) | No      | string | No         | -          | Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL                                            |

##### <a name="cronJobs_pattern1_argoBuildEnv_appName"></a>7.1.5.1. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAME (this is the ArgoCD app name, not the Argus app name)

##### <a name="cronJobs_pattern1_argoBuildEnv_appNamespace"></a>7.1.5.2. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_NAMESPACE

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevision"></a>7.1.5.3. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevisionShort"></a>7.1.5.4. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevisionShort`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT

##### <a name="cronJobs_pattern1_argoBuildEnv_appRevisionShort8"></a>7.1.5.5. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appRevisionShort8`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_REVISION_SHORT_8

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourcePath"></a>7.1.5.6. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourcePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_PATH

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourceRepoUrl"></a>7.1.5.7. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourceRepoUrl`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

##### <a name="cronJobs_pattern1_argoBuildEnv_appSourceTargetRevision"></a>7.1.5.8. Property `stack > cronJobs > ^.*$ > argoBuildEnv > appSourceTargetRevision`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to ARGOCD_APP_SOURCE_REPO_URL

#### <a name="cronJobs_pattern1_args"></a>7.1.6. Property `stack > cronJobs > ^.*$ > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Arguments to pass to the command in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be             | Description |
| ------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_args_items) | -           |

##### <a name="cronJobs_pattern1_args_items"></a>7.1.6.1. stack > cronJobs > ^.*$ > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_argusMetadata"></a>7.1.7. Property `stack > cronJobs > ^.*$ > argusMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus metadata (provided by Argus API)

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                          |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------ |
| - [appName](#cronJobs_pattern1_argusMetadata_appName )     | No      | string | No         | -          | Set by Argus API to Argus app name         |
| - [envName](#cronJobs_pattern1_argusMetadata_envName )     | No      | string | No         | -          | Set by Argus API to Argus environment name |
| - [repoName](#cronJobs_pattern1_argusMetadata_repoName )   | No      | string | No         | -          | Set by Argus API to Argus repository name  |
| - [repoOwner](#cronJobs_pattern1_argusMetadata_repoOwner ) | No      | string | No         | -          | Set by Argus API to Argus repository owner |
| - [stackName](#cronJobs_pattern1_argusMetadata_stackName ) | No      | string | No         | -          | Set by Argus API to Argus stack name       |

##### <a name="cronJobs_pattern1_argusMetadata_appName"></a>7.1.7.1. Property `stack > cronJobs > ^.*$ > argusMetadata > appName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus app name

##### <a name="cronJobs_pattern1_argusMetadata_envName"></a>7.1.7.2. Property `stack > cronJobs > ^.*$ > argusMetadata > envName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus environment name

##### <a name="cronJobs_pattern1_argusMetadata_repoName"></a>7.1.7.3. Property `stack > cronJobs > ^.*$ > argusMetadata > repoName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository name

##### <a name="cronJobs_pattern1_argusMetadata_repoOwner"></a>7.1.7.4. Property `stack > cronJobs > ^.*$ > argusMetadata > repoOwner`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus repository owner

##### <a name="cronJobs_pattern1_argusMetadata_stackName"></a>7.1.7.5. Property `stack > cronJobs > ^.*$ > argusMetadata > stackName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Set by Argus API to Argus stack name

#### <a name="cronJobs_pattern1_autoscaling"></a>7.1.8. Property `stack > cronJobs > ^.*$ > autoscaling`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Autoscaling configuration

| Property                                                                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                    |
| -------------------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------ |
| - [enabled](#cronJobs_pattern1_autoscaling_enabled )                                                     | No      | boolean | No         | -          | Enable autoscaling                   |
| - [maxReplicas](#cronJobs_pattern1_autoscaling_maxReplicas )                                             | No      | integer | No         | -          | Maximum number of replicas           |
| - [minReplicas](#cronJobs_pattern1_autoscaling_minReplicas )                                             | No      | integer | No         | -          | Minimum number of replicas           |
| - [targetCPUUtilizationPercentage](#cronJobs_pattern1_autoscaling_targetCPUUtilizationPercentage )       | No      | integer | No         | -          | Target CPU utilization percentage    |
| - [targetMemoryUtilizationPercentage](#cronJobs_pattern1_autoscaling_targetMemoryUtilizationPercentage ) | No      | integer | No         | -          | Target memory utilization percentage |

##### <a name="cronJobs_pattern1_autoscaling_enabled"></a>7.1.8.1. Property `stack > cronJobs > ^.*$ > autoscaling > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable autoscaling

##### <a name="cronJobs_pattern1_autoscaling_maxReplicas"></a>7.1.8.2. Property `stack > cronJobs > ^.*$ > autoscaling > maxReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum number of replicas

##### <a name="cronJobs_pattern1_autoscaling_minReplicas"></a>7.1.8.3. Property `stack > cronJobs > ^.*$ > autoscaling > minReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Minimum number of replicas

##### <a name="cronJobs_pattern1_autoscaling_targetCPUUtilizationPercentage"></a>7.1.8.4. Property `stack > cronJobs > ^.*$ > autoscaling > targetCPUUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target CPU utilization percentage

##### <a name="cronJobs_pattern1_autoscaling_targetMemoryUtilizationPercentage"></a>7.1.8.5. Property `stack > cronJobs > ^.*$ > autoscaling > targetMemoryUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Target memory utilization percentage

#### <a name="cronJobs_pattern1_command"></a>7.1.9. Property `stack > cronJobs > ^.*$ > command`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Command to run in the primary container

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [command items](#cronJobs_pattern1_command_items) | -           |

##### <a name="cronJobs_pattern1_command_items"></a>7.1.9.1. stack > cronJobs > ^.*$ > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_deploymentKind"></a>7.1.10. Property `stack > cronJobs > ^.*$ > deploymentKind`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |
| **Default**  | `"Deployment"`     |

**Description:** Specifies the Kubernetes Kind for the main application workload controller (Deployment or Rollout).

Must be one of:
* "Deployment"
* "Rollout"

#### <a name="cronJobs_pattern1_deploymentStage"></a>7.1.11. Property `stack > cronJobs > ^.*$ > deploymentStage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Deployment stage

#### <a name="cronJobs_pattern1_dnsPolicy"></a>7.1.12. Property `stack > cronJobs > ^.*$ > dnsPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** DNS policy for the pod

Must be one of:
* "ClusterFirst"
* "Default"
* "None"

#### <a name="cronJobs_pattern1_env"></a>7.1.13. Property `stack > cronJobs > ^.*$ > env`

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

| Each item of this array must be           | Description |
| ----------------------------------------- | ----------- |
| [env items](#cronJobs_pattern1_env_items) | -           |

##### <a name="cronJobs_pattern1_env_items"></a>7.1.13.1. stack > cronJobs > ^.*$ > env > env items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_env_items_name )   | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_env_items_value ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_env_items_name"></a>7.1.13.1.1. Property `stack > cronJobs > ^.*$ > env > env items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_env_items_value"></a>7.1.13.1.2. Property `stack > cronJobs > ^.*$ > env > env items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_envFrom"></a>7.1.14. Property `stack > cronJobs > ^.*$ > envFrom`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Environment variables from configmaps or secrets

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                   | Description |
| ------------------------------------------------- | ----------- |
| [envFrom items](#cronJobs_pattern1_envFrom_items) | -           |

##### <a name="cronJobs_pattern1_envFrom_items"></a>7.1.14.1. stack > cronJobs > ^.*$ > envFrom > envFrom items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [configMapRef](#cronJobs_pattern1_envFrom_items_configMapRef ) | No      | object | No         | -          | -                 |
| - [prefix](#cronJobs_pattern1_envFrom_items_prefix )             | No      | string | No         | -          | -                 |
| - [secretRef](#cronJobs_pattern1_envFrom_items_secretRef )       | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_envFrom_items_configMapRef"></a>7.1.14.1.1. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > configMapRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="cronJobs_pattern1_envFrom_items_prefix"></a>7.1.14.1.2. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > prefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_envFrom_items_secretRef"></a>7.1.14.1.3. Property `stack > cronJobs > ^.*$ > envFrom > envFrom items > secretRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

#### <a name="cronJobs_pattern1_fullnameOverride"></a>7.1.15. Property `stack > cronJobs > ^.*$ > fullnameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, replaces the stack name prefix

#### <a name="cronJobs_pattern1_image"></a>7.1.16. Property `stack > cronJobs > ^.*$ > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type             | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [pullPolicy](#cronJobs_pattern1_image_pullPolicy ) | No      | enum (of string) | No         | -          | Image pull policy |
| - [repository](#cronJobs_pattern1_image_repository ) | No      | string           | No         | -          | Image repository  |
| - [tag](#cronJobs_pattern1_image_tag )               | No      | string           | No         | -          | Image tag         |

##### <a name="cronJobs_pattern1_image_pullPolicy"></a>7.1.16.1. Property `stack > cronJobs > ^.*$ > image > pullPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Image pull policy

Must be one of:
* "Always"
* "IfNotPresent"
* "Never"

##### <a name="cronJobs_pattern1_image_repository"></a>7.1.16.2. Property `stack > cronJobs > ^.*$ > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

##### <a name="cronJobs_pattern1_image_tag"></a>7.1.16.3. Property `stack > cronJobs > ^.*$ > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

#### <a name="cronJobs_pattern1_imagePullSecrets"></a>7.1.17. Property `stack > cronJobs > ^.*$ > imagePullSecrets`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [imagePullSecrets items](#cronJobs_pattern1_imagePullSecrets_items) | -           |

##### <a name="cronJobs_pattern1_imagePullSecrets_items"></a>7.1.17.1. stack > cronJobs > ^.*$ > imagePullSecrets > imagePullSecrets items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="cronJobs_pattern1_ingress"></a>7.1.18. Property `stack > cronJobs > ^.*$ > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Ingress configuration

| Property                                                     | Pattern | Type            | Deprecated | Definition | Title/Description                  |
| ------------------------------------------------------------ | ------- | --------------- | ---------- | ---------- | ---------------------------------- |
| - [annotations](#cronJobs_pattern1_ingress_annotations )     | No      | object          | No         | -          | -                                  |
| - [className](#cronJobs_pattern1_ingress_className )         | No      | string          | No         | -          | Ingress class name                 |
| - [enabled](#cronJobs_pattern1_ingress_enabled )             | No      | boolean         | No         | -          | Enable ingress                     |
| - [host](#cronJobs_pattern1_ingress_host )                   | No      | string          | No         | -          | Ingress host                       |
| - [oidcProtected](#cronJobs_pattern1_ingress_oidcProtected ) | No      | boolean         | No         | -          | Enable OIDC protection             |
| - [paths](#cronJobs_pattern1_ingress_paths )                 | No      | array of object | No         | -          | List of ingress paths              |
| - [rules](#cronJobs_pattern1_ingress_rules )                 | No      | array           | No         | -          | List of ingress rules              |
| - [tls](#cronJobs_pattern1_ingress_tls )                     | No      | array           | No         | -          | List of ingress TLS configurations |

##### <a name="cronJobs_pattern1_ingress_annotations"></a>7.1.18.1. Property `stack > cronJobs > ^.*$ > ingress > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [nginx.ingress.kubernetes.io/affinity](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/affinity )                             | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-connect-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout )   | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-read-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/proxy-send-timeout](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout )         | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-max-age](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age ) | No      | string | No         | -          | -                 |
| - [nginx.ingress.kubernetes.io/session-cookie-name](#cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-name )       | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/affinity"></a>7.1.18.1.1. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/affinity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-connect-timeout"></a>7.1.18.1.2. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-connect-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-read-timeout"></a>7.1.18.1.3. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-read-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/proxy-send-timeout"></a>7.1.18.1.4. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/proxy-send-timeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-max-age"></a>7.1.18.1.5. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-max-age`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_ingress_annotations_nginxingresskubernetesio/session-cookie-name"></a>7.1.18.1.6. Property `stack > cronJobs > ^.*$ > ingress > annotations > nginx.ingress.kubernetes.io/session-cookie-name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_ingress_className"></a>7.1.18.2. Property `stack > cronJobs > ^.*$ > ingress > className`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress class name

##### <a name="cronJobs_pattern1_ingress_enabled"></a>7.1.18.3. Property `stack > cronJobs > ^.*$ > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable ingress

##### <a name="cronJobs_pattern1_ingress_host"></a>7.1.18.4. Property `stack > cronJobs > ^.*$ > ingress > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress host

##### <a name="cronJobs_pattern1_ingress_oidcProtected"></a>7.1.18.5. Property `stack > cronJobs > ^.*$ > ingress > oidcProtected`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC protection

##### <a name="cronJobs_pattern1_ingress_paths"></a>7.1.18.6. Property `stack > cronJobs > ^.*$ > ingress > paths`

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

| Each item of this array must be                       | Description |
| ----------------------------------------------------- | ----------- |
| [paths items](#cronJobs_pattern1_ingress_paths_items) | -           |

###### <a name="cronJobs_pattern1_ingress_paths_items"></a>7.1.18.6.1. stack > cronJobs > ^.*$ > ingress > paths > paths items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_ingress_paths_items_path )         | No      | string | No         | -          | Ingress path      |
| - [pathType](#cronJobs_pattern1_ingress_paths_items_pathType ) | No      | string | No         | -          | Ingress path type |

###### <a name="cronJobs_pattern1_ingress_paths_items_path"></a>7.1.18.6.1.1. Property `stack > cronJobs > ^.*$ > ingress > paths > paths items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path

###### <a name="cronJobs_pattern1_ingress_paths_items_pathType"></a>7.1.18.6.1.2. Property `stack > cronJobs > ^.*$ > ingress > paths > paths items > pathType`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Ingress path type

##### <a name="cronJobs_pattern1_ingress_rules"></a>7.1.18.7. Property `stack > cronJobs > ^.*$ > ingress > rules`

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

##### <a name="cronJobs_pattern1_ingress_tls"></a>7.1.18.8. Property `stack > cronJobs > ^.*$ > ingress > tls`

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

#### <a name="cronJobs_pattern1_initContainers"></a>7.1.19. Property `stack > cronJobs > ^.*$ > initContainers`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of init containers

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_livenessProbe"></a>7.1.20. Property `stack > cronJobs > ^.*$ > livenessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Liveness probe configuration

| Property                                                                       | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#cronJobs_pattern1_livenessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#cronJobs_pattern1_livenessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#cronJobs_pattern1_livenessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_livenessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_livenessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_livenessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_livenessProbe_failureThreshold"></a>7.1.20.1. Property `stack > cronJobs > ^.*$ > livenessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_livenessProbe_httpGet"></a>7.1.20.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                                     | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------ | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_livenessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#cronJobs_pattern1_livenessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#cronJobs_pattern1_livenessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_path"></a>7.1.20.2.1. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port"></a>7.1.20.2.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                                   |
| ---------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i0) |
| [item 1](#cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i1) |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i0"></a>7.1.20.2.2.1. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_port_oneOf_i1"></a>7.1.20.2.2.2. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_livenessProbe_httpGet_scheme"></a>7.1.20.2.3. Property `stack > cronJobs > ^.*$ > livenessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

##### <a name="cronJobs_pattern1_livenessProbe_initialDelaySeconds"></a>7.1.20.3. Property `stack > cronJobs > ^.*$ > livenessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_livenessProbe_periodSeconds"></a>7.1.20.4. Property `stack > cronJobs > ^.*$ > livenessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_livenessProbe_successThreshold"></a>7.1.20.5. Property `stack > cronJobs > ^.*$ > livenessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_livenessProbe_timeoutSeconds"></a>7.1.20.6. Property `stack > cronJobs > ^.*$ > livenessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_nameOverride"></a>7.1.21. Property `stack > cronJobs > ^.*$ > nameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name to prefix the K8s resources with, combined with the stack name prefix

#### <a name="cronJobs_pattern1_nodeSelector"></a>7.1.22. Property `stack > cronJobs > ^.*$ > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description              |
| -------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------ |
| - [kubernetes.io/arch](#cronJobs_pattern1_nodeSelector_kubernetesio/arch ) | No      | string | No         | -          | Node selector for architecture |

##### <a name="cronJobs_pattern1_nodeSelector_kubernetesio/arch"></a>7.1.22.1. Property `stack > cronJobs > ^.*$ > nodeSelector > kubernetes.io/arch`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Node selector for architecture

#### <a name="cronJobs_pattern1_oidcProxy"></a>7.1.23. Property `stack > cronJobs > ^.*$ > oidcProxy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                               | Pattern | Type            | Deprecated | Definition | Title/Description                            |
| ---------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | -------------------------------------------- |
| - [additionalHeaders](#cronJobs_pattern1_oidcProxy_additionalHeaders ) | No      | array           | No         | -          | Additional headers to add                    |
| - [additionalSecrets](#cronJobs_pattern1_oidcProxy_additionalSecrets ) | No      | array           | No         | -          | Additional secrets to mount                  |
| - [annotations](#cronJobs_pattern1_oidcProxy_annotations )             | No      | object          | No         | -          | Annotations to add to the OIDC proxy         |
| - [cookieRefresh](#cronJobs_pattern1_oidcProxy_cookieRefresh )         | No      | string          | No         | -          | Refresh tokens and cookies after this period |
| - [enabled](#cronJobs_pattern1_oidcProxy_enabled )                     | No      | boolean         | No         | -          | Enable OIDC proxy                            |
| - [extraArgs](#cronJobs_pattern1_oidcProxy_extraArgs )                 | No      | array of string | No         | -          | Extra arguments to pass to the OIDC proxy    |
| - [image](#cronJobs_pattern1_oidcProxy_image )                         | No      | object          | No         | -          | -                                            |
| - [replicaCount](#cronJobs_pattern1_oidcProxy_replicaCount )           | No      | integer         | No         | -          | Number of replicas                           |
| - [resources](#cronJobs_pattern1_oidcProxy_resources )                 | No      | object          | No         | -          | -                                            |
| - [skipAuth](#cronJobs_pattern1_oidcProxy_skipAuth )                   | No      | array of object | No         | -          | Paths to skip authentication                 |
| - [volumeMounts](#cronJobs_pattern1_oidcProxy_volumeMounts )           | No      | array           | No         | -          | Volume mounts for the OIDC proxy             |

##### <a name="cronJobs_pattern1_oidcProxy_additionalHeaders"></a>7.1.23.1. Property `stack > cronJobs > ^.*$ > oidcProxy > additionalHeaders`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional headers to add

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

##### <a name="cronJobs_pattern1_oidcProxy_additionalSecrets"></a>7.1.23.2. Property `stack > cronJobs > ^.*$ > oidcProxy > additionalSecrets`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional secrets to mount

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

##### <a name="cronJobs_pattern1_oidcProxy_annotations"></a>7.1.23.3. Property `stack > cronJobs > ^.*$ > oidcProxy > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the OIDC proxy

##### <a name="cronJobs_pattern1_oidcProxy_cookieRefresh"></a>7.1.23.4. Property `stack > cronJobs > ^.*$ > oidcProxy > cookieRefresh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Refresh tokens and cookies after this period

##### <a name="cronJobs_pattern1_oidcProxy_enabled"></a>7.1.23.5. Property `stack > cronJobs > ^.*$ > oidcProxy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable OIDC proxy

##### <a name="cronJobs_pattern1_oidcProxy_extraArgs"></a>7.1.23.6. Property `stack > cronJobs > ^.*$ > oidcProxy > extraArgs`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Extra arguments to pass to the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                 | Description |
| --------------------------------------------------------------- | ----------- |
| [extraArgs items](#cronJobs_pattern1_oidcProxy_extraArgs_items) | -           |

###### <a name="cronJobs_pattern1_oidcProxy_extraArgs_items"></a>7.1.23.6.1. stack > cronJobs > ^.*$ > oidcProxy > extraArgs > extraArgs items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_oidcProxy_image"></a>7.1.23.7. Property `stack > cronJobs > ^.*$ > oidcProxy > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [repository](#cronJobs_pattern1_oidcProxy_image_repository ) | No      | string | No         | -          | Image repository  |
| - [tag](#cronJobs_pattern1_oidcProxy_image_tag )               | No      | string | No         | -          | Image tag         |

###### <a name="cronJobs_pattern1_oidcProxy_image_repository"></a>7.1.23.7.1. Property `stack > cronJobs > ^.*$ > oidcProxy > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image repository

###### <a name="cronJobs_pattern1_oidcProxy_image_tag"></a>7.1.23.7.2. Property `stack > cronJobs > ^.*$ > oidcProxy > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag

##### <a name="cronJobs_pattern1_oidcProxy_replicaCount"></a>7.1.23.8. Property `stack > cronJobs > ^.*$ > oidcProxy > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

##### <a name="cronJobs_pattern1_oidcProxy_resources"></a>7.1.23.9. Property `stack > cronJobs > ^.*$ > oidcProxy > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#cronJobs_pattern1_oidcProxy_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#cronJobs_pattern1_oidcProxy_resources_requests ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits"></a>7.1.23.9.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type        | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_oidcProxy_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#cronJobs_pattern1_oidcProxy_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu"></a>7.1.23.9.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                                       |
| -------------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i0"></a>7.1.23.9.1.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_cpu_oneOf_i1"></a>7.1.23.9.1.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_limits_memory"></a>7.1.23.9.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests"></a>7.1.23.9.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_oidcProxy_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#cronJobs_pattern1_oidcProxy_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu"></a>7.1.23.9.2.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                                         |
| ---------------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i0"></a>7.1.23.9.2.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_cpu_oneOf_i1"></a>7.1.23.9.2.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_resources_requests_memory"></a>7.1.23.9.2.2. Property `stack > cronJobs > ^.*$ > oidcProxy > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

##### <a name="cronJobs_pattern1_oidcProxy_skipAuth"></a>7.1.23.10. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Paths to skip authentication

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                               | Description |
| ------------------------------------------------------------- | ----------- |
| [skipAuth items](#cronJobs_pattern1_oidcProxy_skipAuth_items) | -           |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items"></a>7.1.23.10.1. stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [method](#cronJobs_pattern1_oidcProxy_skipAuth_items_method ) | No      | string | No         | -          | -                 |
| - [path](#cronJobs_pattern1_oidcProxy_skipAuth_items_path )     | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items_method"></a>7.1.23.10.1.1. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_oidcProxy_skipAuth_items_path"></a>7.1.23.10.1.2. Property `stack > cronJobs > ^.*$ > oidcProxy > skipAuth > skipAuth items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_oidcProxy_volumeMounts"></a>7.1.23.11. Property `stack > cronJobs > ^.*$ > oidcProxy > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Volume mounts for the OIDC proxy

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_persistence"></a>7.1.24. Property `stack > cronJobs > ^.*$ > persistence`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type    | Deprecated | Definition | Title/Description      |
| ---------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------- |
| - [enabled](#cronJobs_pattern1_persistence_enabled )             | No      | boolean | No         | -          | Enable persistence     |
| - [existingClaim](#cronJobs_pattern1_persistence_existingClaim ) | No      | string  | No         | -          | Existing PVC name      |
| - [mountPath](#cronJobs_pattern1_persistence_mountPath )         | No      | string  | No         | -          | Mount path for the PVC |
| - [pvc](#cronJobs_pattern1_persistence_pvc )                     | No      | object  | No         | -          | -                      |

##### <a name="cronJobs_pattern1_persistence_enabled"></a>7.1.24.1. Property `stack > cronJobs > ^.*$ > persistence > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable persistence

##### <a name="cronJobs_pattern1_persistence_existingClaim"></a>7.1.24.2. Property `stack > cronJobs > ^.*$ > persistence > existingClaim`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Existing PVC name

##### <a name="cronJobs_pattern1_persistence_mountPath"></a>7.1.24.3. Property `stack > cronJobs > ^.*$ > persistence > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Mount path for the PVC

##### <a name="cronJobs_pattern1_persistence_pvc"></a>7.1.24.4. Property `stack > cronJobs > ^.*$ > persistence > pvc`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type                      | Deprecated | Definition | Title/Description        |
| -------------------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------ |
| - [accessModes](#cronJobs_pattern1_persistence_pvc_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the PVC |
| - [dataSource](#cronJobs_pattern1_persistence_pvc_dataSource )             | No      | object                    | No         | -          | -                        |
| - [resources](#cronJobs_pattern1_persistence_pvc_resources )               | No      | object                    | No         | -          | -                        |
| - [storageClassName](#cronJobs_pattern1_persistence_pvc_storageClassName ) | No      | string                    | No         | -          | Storage class name       |

###### <a name="cronJobs_pattern1_persistence_pvc_accessModes"></a>7.1.24.4.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the PVC

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                           | Description |
| ------------------------------------------------------------------------- | ----------- |
| [accessModes items](#cronJobs_pattern1_persistence_pvc_accessModes_items) | -           |

###### <a name="cronJobs_pattern1_persistence_pvc_accessModes_items"></a>7.1.24.4.1.1. stack > cronJobs > ^.*$ > persistence > pvc > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource"></a>7.1.24.4.2. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type   | Deprecated | Definition | Title/Description                                               |
| --------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------------------- |
| - [apiGroup](#cronJobs_pattern1_persistence_pvc_dataSource_apiGroup ) | No      | string | No         | -          | API version of the data source                                  |
| - [kind](#cronJobs_pattern1_persistence_pvc_dataSource_kind )         | No      | string | No         | -          | Kind of the data source [VolumeSnapshot, PersistentVolumeClaim] |
| - [name](#cronJobs_pattern1_persistence_pvc_dataSource_name )         | No      | string | No         | -          | Name of the data source                                         |

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_apiGroup"></a>7.1.24.4.2.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > apiGroup`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** API version of the data source

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_kind"></a>7.1.24.4.2.2. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kind of the data source [VolumeSnapshot, PersistentVolumeClaim]

###### <a name="cronJobs_pattern1_persistence_pvc_dataSource_name"></a>7.1.24.4.2.3. Property `stack > cronJobs > ^.*$ > persistence > pvc > dataSource > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the data source

###### <a name="cronJobs_pattern1_persistence_pvc_resources"></a>7.1.24.4.3. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type   | Deprecated | Definition | Title/Description     |
| -------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------- |
| - [requests](#cronJobs_pattern1_persistence_pvc_resources_requests ) | No      | object | No         | -          | PVC resource requests |

###### <a name="cronJobs_pattern1_persistence_pvc_resources_requests"></a>7.1.24.4.3.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** PVC resource requests

| Property                                                                    | Pattern | Type   | Deprecated | Definition | Title/Description        |
| --------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------ |
| - [storage](#cronJobs_pattern1_persistence_pvc_resources_requests_storage ) | No      | string | No         | -          | Storage resource request |

###### <a name="cronJobs_pattern1_persistence_pvc_resources_requests_storage"></a>7.1.24.4.3.1.1. Property `stack > cronJobs > ^.*$ > persistence > pvc > resources > requests > storage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage resource request

###### <a name="cronJobs_pattern1_persistence_pvc_storageClassName"></a>7.1.24.4.4. Property `stack > cronJobs > ^.*$ > persistence > pvc > storageClassName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage class name

#### <a name="cronJobs_pattern1_podAnnotations"></a>7.1.25. Property `stack > cronJobs > ^.*$ > podAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to pods

| Property                                                                                                          | Pattern | Type   | Deprecated | Definition | Title/Description                      |
| ----------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------- |
| - [config.linkerd.io/skip-outbound-ports](#cronJobs_pattern1_podAnnotations_configlinkerdio/skip-outbound-ports ) | No      | string | No         | -          | Linkerd skip outbound ports annotation |
| - [linkerd.io/inject](#cronJobs_pattern1_podAnnotations_linkerdio/inject )                                        | No      | string | No         | -          | Linkerd injection annotation           |

##### <a name="cronJobs_pattern1_podAnnotations_configlinkerdio/skip-outbound-ports"></a>7.1.25.1. Property `stack > cronJobs > ^.*$ > podAnnotations > config.linkerd.io/skip-outbound-ports`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd skip outbound ports annotation

##### <a name="cronJobs_pattern1_podAnnotations_linkerdio/inject"></a>7.1.25.2. Property `stack > cronJobs > ^.*$ > podAnnotations > linkerd.io/inject`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Linkerd injection annotation

#### <a name="cronJobs_pattern1_podLabels"></a>7.1.26. Property `stack > cronJobs > ^.*$ > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global labels to add to all pods

#### <a name="cronJobs_pattern1_podSecurityContext"></a>7.1.27. Property `stack > cronJobs > ^.*$ > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Pod security context

#### <a name="cronJobs_pattern1_progressDeadlineSeconds"></a>7.1.28. Property `stack > cronJobs > ^.*$ > progressDeadlineSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** the number of seconds the Deployment controller waits before indicating (in the Deployment status) that the Deployment progress has stalled

#### <a name="cronJobs_pattern1_readinessProbe"></a>7.1.29. Property `stack > cronJobs > ^.*$ > readinessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Readiness probe configuration

| Property                                                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                                                     |
| ------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [failureThreshold](#cronJobs_pattern1_readinessProbe_failureThreshold )       | No      | number | No         | -          | Number of failures before the probe is considered failed                              |
| - [httpGet](#cronJobs_pattern1_readinessProbe_httpGet )                         | No      | object | No         | -          | HTTP probe configuration (exec & tcpSocket are also available)                        |
| - [initialDelaySeconds](#cronJobs_pattern1_readinessProbe_initialDelaySeconds ) | No      | number | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_readinessProbe_periodSeconds )             | No      | number | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_readinessProbe_successThreshold )       | No      | number | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_readinessProbe_timeoutSeconds )           | No      | number | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_readinessProbe_failureThreshold"></a>7.1.29.1. Property `stack > cronJobs > ^.*$ > readinessProbe > failureThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_readinessProbe_httpGet"></a>7.1.29.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** HTTP probe configuration (exec & tcpSocket are also available)

| Property                                                      | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [path](#cronJobs_pattern1_readinessProbe_httpGet_path )     | No      | string      | No         | -          | Path to probe     |
| - [port](#cronJobs_pattern1_readinessProbe_httpGet_port )     | No      | Combination | No         | -          | Port to probe     |
| - [scheme](#cronJobs_pattern1_readinessProbe_httpGet_scheme ) | No      | string      | No         | -          | Scheme to use     |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_path"></a>7.1.29.2.1. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Path to probe

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port"></a>7.1.29.2.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Port to probe

| One of(Option)                                                    |
| ----------------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i0) |
| [item 1](#cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i1) |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i0"></a>7.1.29.2.2.1. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_port_oneOf_i1"></a>7.1.29.2.2.2. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > port > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_readinessProbe_httpGet_scheme"></a>7.1.29.2.3. Property `stack > cronJobs > ^.*$ > readinessProbe > httpGet > scheme`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Scheme to use

##### <a name="cronJobs_pattern1_readinessProbe_initialDelaySeconds"></a>7.1.29.3. Property `stack > cronJobs > ^.*$ > readinessProbe > initialDelaySeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_readinessProbe_periodSeconds"></a>7.1.29.4. Property `stack > cronJobs > ^.*$ > readinessProbe > periodSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_readinessProbe_successThreshold"></a>7.1.29.5. Property `stack > cronJobs > ^.*$ > readinessProbe > successThreshold`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_readinessProbe_timeoutSeconds"></a>7.1.29.6. Property `stack > cronJobs > ^.*$ > readinessProbe > timeoutSeconds`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_replicaCount"></a>7.1.30. Property `stack > cronJobs > ^.*$ > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of replicas

#### <a name="cronJobs_pattern1_resources"></a>7.1.31. Property `stack > cronJobs > ^.*$ > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests and limits for the primary container

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#cronJobs_pattern1_resources_limits )     | No      | object | No         | -          | Resource limits   |
| - [requests](#cronJobs_pattern1_resources_requests ) | No      | object | No         | -          | Resource requests |

##### <a name="cronJobs_pattern1_resources_limits"></a>7.1.31.1. Property `stack > cronJobs > ^.*$ > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource limits

| Property                                                | Pattern | Type        | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_resources_limits_cpu )       | No      | Combination | No         | -          | CPU limit         |
| - [memory](#cronJobs_pattern1_resources_limits_memory ) | No      | string      | No         | -          | Memory limit      |

###### <a name="cronJobs_pattern1_resources_limits_cpu"></a>7.1.31.1.1. Property `stack > cronJobs > ^.*$ > resources > limits > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU limit

| One of(Option)                                             |
| ---------------------------------------------------------- |
| [item 0](#cronJobs_pattern1_resources_limits_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_resources_limits_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_resources_limits_cpu_oneOf_i0"></a>7.1.31.1.1.1. Property `stack > cronJobs > ^.*$ > resources > limits > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_limits_cpu_oneOf_i1"></a>7.1.31.1.1.2. Property `stack > cronJobs > ^.*$ > resources > limits > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_limits_memory"></a>7.1.31.1.2. Property `stack > cronJobs > ^.*$ > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

##### <a name="cronJobs_pattern1_resources_requests"></a>7.1.31.2. Property `stack > cronJobs > ^.*$ > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource requests

| Property                                                  | Pattern | Type        | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | ----------- | ---------- | ---------- | ----------------- |
| - [cpu](#cronJobs_pattern1_resources_requests_cpu )       | No      | Combination | No         | -          | CPU request       |
| - [memory](#cronJobs_pattern1_resources_requests_memory ) | No      | string      | No         | -          | Memory request    |

###### <a name="cronJobs_pattern1_resources_requests_cpu"></a>7.1.31.2.1. Property `stack > cronJobs > ^.*$ > resources > requests > cpu`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `combining`      |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** CPU request

| One of(Option)                                               |
| ------------------------------------------------------------ |
| [item 0](#cronJobs_pattern1_resources_requests_cpu_oneOf_i0) |
| [item 1](#cronJobs_pattern1_resources_requests_cpu_oneOf_i1) |

###### <a name="cronJobs_pattern1_resources_requests_cpu_oneOf_i0"></a>7.1.31.2.1.1. Property `stack > cronJobs > ^.*$ > resources > requests > cpu > oneOf > item 0`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_requests_cpu_oneOf_i1"></a>7.1.31.2.1.2. Property `stack > cronJobs > ^.*$ > resources > requests > cpu > oneOf > item 1`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_resources_requests_memory"></a>7.1.31.2.2. Property `stack > cronJobs > ^.*$ > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory request

#### <a name="cronJobs_pattern1_restartPolicy"></a>7.1.32. Property `stack > cronJobs > ^.*$ > restartPolicy`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

**Description:** Restart policy for the pod

Must be one of:
* "Always"
* "OnFailure"
* "Never"

#### <a name="cronJobs_pattern1_rollout"></a>7.1.33. Property `stack > cronJobs > ^.*$ > rollout`

|                           |                      |
| ------------------------- | -------------------- |
| **Type**                  | `object`             |
| **Required**              | No                   |
| **Additional properties** | Any type allowed     |
| **Defined in**            | #/properties/rollout |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#cronJobs_pattern1_rollout_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#cronJobs_pattern1_rollout_additionalProperties ) | No      | object | No         | -          | -                                                   |

##### <a name="cronJobs_pattern1_rollout_strategy"></a>7.1.33.1. Property `stack > cronJobs > ^.*$ > rollout > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [blueGreen](#cronJobs_pattern1_rollout_strategy_blueGreen ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen"></a>7.1.33.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"blueGreen"`    |

| Property                                                                                      | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| --------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#cronJobs_pattern1_rollout_strategy_blueGreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#cronJobs_pattern1_rollout_strategy_blueGreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_activeService"></a>7.1.33.1.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_autoPromotionEnabled"></a>7.1.33.1.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis"></a>7.1.33.1.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                                         | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| ---------------------------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata"></a>7.1.33.1.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>7.1.33.1.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>7.1.33.1.1.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args"></a>7.1.33.1.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                             | Description |
| ------------------------------------------------------------------------------------------- | ----------- |
| [args items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items"></a>7.1.33.1.1.3.2.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_name"></a>7.1.33.1.1.3.2.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_value"></a>7.1.33.1.1.3.2.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom"></a>7.1.33.1.1.3.2.1.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                                | Pattern | Type             | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>7.1.33.1.1.3.2.1.3.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>7.1.33.1.1.3.2.1.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>7.1.33.1.1.3.2.1.3.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates"></a>7.1.33.1.1.3.3. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                                       | Description |
| ----------------------------------------------------------------------------------------------------- | ----------- |
| [templates items](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items"></a>7.1.33.1.1.3.3.1. stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                           | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ------------------------------------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_clusterScope"></a>7.1.33.1.1.3.3.1.1. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_prePromotionAnalysis_templates_items_templateName"></a>7.1.33.1.1.3.3.1.2. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

###### <a name="cronJobs_pattern1_rollout_strategy_blueGreen_previewService"></a>7.1.33.1.1.4. Property `stack > cronJobs > ^.*$ > rollout > strategy > blueGreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

#### <a name="cronJobs_pattern1_s3Storage"></a>7.1.34. Property `stack > cronJobs > ^.*$ > s3Storage`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type                      | Deprecated | Definition | Title/Description                           |
| -------------------------------------------------------------------- | ------- | ------------------------- | ---------- | ---------- | ------------------------------------------- |
| - [accessModes](#cronJobs_pattern1_s3Storage_accessModes )           | No      | array of enum (of string) | No         | -          | Access modes for the S3 storage             |
| - [annotations](#cronJobs_pattern1_s3Storage_annotations )           | No      | object                    | No         | -          | Additional annotations for PV/PVC           |
| - [bucketName](#cronJobs_pattern1_s3Storage_bucketName )             | No      | string                    | No         | -          | S3 bucket name                              |
| - [capacity](#cronJobs_pattern1_s3Storage_capacity )                 | No      | string                    | No         | -          | Storage capacity                            |
| - [enabled](#cronJobs_pattern1_s3Storage_enabled )                   | No      | boolean                   | No         | -          | Enable S3 CSI storage                       |
| - [labels](#cronJobs_pattern1_s3Storage_labels )                     | No      | object                    | No         | -          | Additional labels for PV/PVC                |
| - [pvName](#cronJobs_pattern1_s3Storage_pvName )                     | No      | string                    | No         | -          | Custom PV name (auto-generated if empty)    |
| - [pvcName](#cronJobs_pattern1_s3Storage_pvcName )                   | No      | string                    | No         | -          | Custom PVC name (auto-generated if empty)   |
| - [reclaimPolicy](#cronJobs_pattern1_s3Storage_reclaimPolicy )       | No      | string                    | No         | -          | Reclaim policy for the PV                   |
| - [region](#cronJobs_pattern1_s3Storage_region )                     | No      | string                    | No         | -          | AWS region                                  |
| - [volumeAttributes](#cronJobs_pattern1_s3Storage_volumeAttributes ) | No      | object                    | No         | -          | Additional CSI volume attributes            |
| - [volumeHandle](#cronJobs_pattern1_s3Storage_volumeHandle )         | No      | string                    | No         | -          | CSI volume handle (auto-generated if empty) |

##### <a name="cronJobs_pattern1_s3Storage_accessModes"></a>7.1.34.1. Property `stack > cronJobs > ^.*$ > s3Storage > accessModes`

|              |                             |
| ------------ | --------------------------- |
| **Type**     | `array of enum (of string)` |
| **Required** | No                          |

**Description:** Access modes for the S3 storage

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [accessModes items](#cronJobs_pattern1_s3Storage_accessModes_items) | -           |

###### <a name="cronJobs_pattern1_s3Storage_accessModes_items"></a>7.1.34.1.1. stack > cronJobs > ^.*$ > s3Storage > accessModes > accessModes items

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "ReadWriteOnce"
* "ReadOnlyMany"
* "ReadWriteMany"
* "ReadWriteOncePod"

##### <a name="cronJobs_pattern1_s3Storage_annotations"></a>7.1.34.2. Property `stack > cronJobs > ^.*$ > s3Storage > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional annotations for PV/PVC

##### <a name="cronJobs_pattern1_s3Storage_bucketName"></a>7.1.34.3. Property `stack > cronJobs > ^.*$ > s3Storage > bucketName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** S3 bucket name

##### <a name="cronJobs_pattern1_s3Storage_capacity"></a>7.1.34.4. Property `stack > cronJobs > ^.*$ > s3Storage > capacity`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Storage capacity

##### <a name="cronJobs_pattern1_s3Storage_enabled"></a>7.1.34.5. Property `stack > cronJobs > ^.*$ > s3Storage > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable S3 CSI storage

##### <a name="cronJobs_pattern1_s3Storage_labels"></a>7.1.34.6. Property `stack > cronJobs > ^.*$ > s3Storage > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional labels for PV/PVC

##### <a name="cronJobs_pattern1_s3Storage_pvName"></a>7.1.34.7. Property `stack > cronJobs > ^.*$ > s3Storage > pvName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PV name (auto-generated if empty)

##### <a name="cronJobs_pattern1_s3Storage_pvcName"></a>7.1.34.8. Property `stack > cronJobs > ^.*$ > s3Storage > pvcName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Custom PVC name (auto-generated if empty)

##### <a name="cronJobs_pattern1_s3Storage_reclaimPolicy"></a>7.1.34.9. Property `stack > cronJobs > ^.*$ > s3Storage > reclaimPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Reclaim policy for the PV

##### <a name="cronJobs_pattern1_s3Storage_region"></a>7.1.34.10. Property `stack > cronJobs > ^.*$ > s3Storage > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** AWS region

##### <a name="cronJobs_pattern1_s3Storage_volumeAttributes"></a>7.1.34.11. Property `stack > cronJobs > ^.*$ > s3Storage > volumeAttributes`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional CSI volume attributes

##### <a name="cronJobs_pattern1_s3Storage_volumeHandle"></a>7.1.34.12. Property `stack > cronJobs > ^.*$ > s3Storage > volumeHandle`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CSI volume handle (auto-generated if empty)

#### <a name="cronJobs_pattern1_securityContext"></a>7.1.35. Property `stack > cronJobs > ^.*$ > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context

#### <a name="cronJobs_pattern1_service"></a>7.1.36. Property `stack > cronJobs > ^.*$ > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service configuration

| Property                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [port](#cronJobs_pattern1_service_port ) | No      | number | No         | -          | Service port      |
| - [type](#cronJobs_pattern1_service_type ) | No      | string | No         | -          | Service type      |

##### <a name="cronJobs_pattern1_service_port"></a>7.1.36.1. Property `stack > cronJobs > ^.*$ > service > port`

|              |          |
| ------------ | -------- |
| **Type**     | `number` |
| **Required** | No       |

**Description:** Service port

##### <a name="cronJobs_pattern1_service_type"></a>7.1.36.2. Property `stack > cronJobs > ^.*$ > service > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Service type

#### <a name="cronJobs_pattern1_serviceAccount"></a>7.1.37. Property `stack > cronJobs > ^.*$ > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Service account configuration

| Property                                                        | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                   |
| --------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| - [annotations](#cronJobs_pattern1_serviceAccount_annotations ) | No      | object  | No         | -          | Annotations to add to the service account                                                                           |
| - [automount](#cronJobs_pattern1_serviceAccount_automount )     | No      | boolean | No         | -          | Specifies whether to automatically mount a ServiceAccount's API credentials                                         |
| - [create](#cronJobs_pattern1_serviceAccount_create )           | No      | boolean | No         | -          | Specifies whether a service account should be created                                                               |
| - [name](#cronJobs_pattern1_serviceAccount_name )               | No      | string  | No         | -          | Name of the service account to use (if not set and create is true, a name is generated using the fullname template) |

##### <a name="cronJobs_pattern1_serviceAccount_annotations"></a>7.1.37.1. Property `stack > cronJobs > ^.*$ > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Annotations to add to the service account

##### <a name="cronJobs_pattern1_serviceAccount_automount"></a>7.1.37.2. Property `stack > cronJobs > ^.*$ > serviceAccount > automount`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether to automatically mount a ServiceAccount's API credentials

##### <a name="cronJobs_pattern1_serviceAccount_create"></a>7.1.37.3. Property `stack > cronJobs > ^.*$ > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Specifies whether a service account should be created

##### <a name="cronJobs_pattern1_serviceAccount_name"></a>7.1.37.4. Property `stack > cronJobs > ^.*$ > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service account to use (if not set and create is true, a name is generated using the fullname template)

#### <a name="cronJobs_pattern1_shareProcessNamespace"></a>7.1.38. Property `stack > cronJobs > ^.*$ > shareProcessNamespace`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Share process namespace

#### <a name="cronJobs_pattern1_sidecars"></a>7.1.39. Property `stack > cronJobs > ^.*$ > sidecars`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of sidecars

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_startupProbe"></a>7.1.40. Property `stack > cronJobs > ^.*$ > startupProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Startup probe configuration

| Property                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description                                                                     |
| ----------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| - [enabled](#cronJobs_pattern1_startupProbe_enabled )                         | No      | boolean | No         | -          | Enable the startup probe                                                              |
| - [exec](#cronJobs_pattern1_startupProbe_exec )                               | No      | object  | No         | -          | Exec probe configuration                                                              |
| - [failureThreshold](#cronJobs_pattern1_startupProbe_failureThreshold )       | No      | integer | No         | -          | Number of failures before the probe is considered failed                              |
| - [initialDelaySeconds](#cronJobs_pattern1_startupProbe_initialDelaySeconds ) | No      | integer | No         | -          | Number of seconds after the container has started before the probe is first initiated |
| - [periodSeconds](#cronJobs_pattern1_startupProbe_periodSeconds )             | No      | integer | No         | -          | How often to perform the probe                                                        |
| - [successThreshold](#cronJobs_pattern1_startupProbe_successThreshold )       | No      | integer | No         | -          | Number of successes before the probe is considered successful                         |
| - [timeoutSeconds](#cronJobs_pattern1_startupProbe_timeoutSeconds )           | No      | integer | No         | -          | Timeout for the probe                                                                 |

##### <a name="cronJobs_pattern1_startupProbe_enabled"></a>7.1.40.1. Property `stack > cronJobs > ^.*$ > startupProbe > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the startup probe

##### <a name="cronJobs_pattern1_startupProbe_exec"></a>7.1.40.2. Property `stack > cronJobs > ^.*$ > startupProbe > exec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exec probe configuration

| Property                                                   | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [command](#cronJobs_pattern1_startupProbe_exec_command ) | No      | array of string | No         | -          | -                 |

###### <a name="cronJobs_pattern1_startupProbe_exec_command"></a>7.1.40.2.1. Property `stack > cronJobs > ^.*$ > startupProbe > exec > command`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [command items](#cronJobs_pattern1_startupProbe_exec_command_items) | -           |

###### <a name="cronJobs_pattern1_startupProbe_exec_command_items"></a>7.1.40.2.1.1. stack > cronJobs > ^.*$ > startupProbe > exec > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="cronJobs_pattern1_startupProbe_failureThreshold"></a>7.1.40.3. Property `stack > cronJobs > ^.*$ > startupProbe > failureThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of failures before the probe is considered failed

##### <a name="cronJobs_pattern1_startupProbe_initialDelaySeconds"></a>7.1.40.4. Property `stack > cronJobs > ^.*$ > startupProbe > initialDelaySeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of seconds after the container has started before the probe is first initiated

##### <a name="cronJobs_pattern1_startupProbe_periodSeconds"></a>7.1.40.5. Property `stack > cronJobs > ^.*$ > startupProbe > periodSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** How often to perform the probe

##### <a name="cronJobs_pattern1_startupProbe_successThreshold"></a>7.1.40.6. Property `stack > cronJobs > ^.*$ > startupProbe > successThreshold`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of successes before the probe is considered successful

##### <a name="cronJobs_pattern1_startupProbe_timeoutSeconds"></a>7.1.40.7. Property `stack > cronJobs > ^.*$ > startupProbe > timeoutSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Timeout for the probe

#### <a name="cronJobs_pattern1_tolerations"></a>7.1.41. Property `stack > cronJobs > ^.*$ > tolerations`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Tolerations for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_topologySpreadConstraints"></a>7.1.42. Property `stack > cronJobs > ^.*$ > topologySpreadConstraints`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Topology spread constraints for the pod

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_volumeMounts"></a>7.1.43. Property `stack > cronJobs > ^.*$ > volumeMounts`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volume mounts on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

#### <a name="cronJobs_pattern1_volumes"></a>7.1.44. Property `stack > cronJobs > ^.*$ > volumes`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional volumes on the output Deployment definition

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

----------------------------------------------------------------------------------------------------------------------------
