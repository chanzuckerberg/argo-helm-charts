# agents

**Title:** agents

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                 | Pattern | Type   | Deprecated | Definition | Title/Description                                  |
| ------------------------ | ------- | ------ | ---------- | ---------- | -------------------------------------------------- |
| - [agents](#agents )     | No      | object | No         | -          | Agent specifications keyed by resource name        |
| - [global](#global )     | No      | object | No         | -          | -                                                  |
| - [profiles](#profiles ) | No      | object | No         | -          | AgentProfile specifications keyed by resource name |

## <a name="agents"></a>1. Property `agents > agents`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Agent specifications keyed by resource name

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [](#agents_additionalProperties ) | No      | object | No         | -          | -                 |

## <a name="global"></a>2. Property `agents > global`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                  | Pattern | Type            | Deprecated | Definition | Title/Description                                            |
| ----------------------------------------- | ------- | --------------- | ---------- | ---------- | ------------------------------------------------------------ |
| - [appContext](#global_appContext )       | No      | object          | No         | -          | Argus-managed context ConfigMap names                        |
| - [appSecrets](#global_appSecrets )       | No      | object          | No         | -          | Argus-managed Secret names                                   |
| - [argusMetadata](#global_argusMetadata ) | No      | object          | No         | -          | Argus metadata                                               |
| - [env](#global_env )                     | No      | array of object | No         | -          | Non-sensitive environment variables inherited by every Agent |

### <a name="global_appContext"></a>2.1. Property `agents > global > appContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus-managed context ConfigMap names

| Property                                                                     | Pattern | Type   | Deprecated | Definition | Title/Description                  |
| ---------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------- |
| - [envContextConfigMapName](#global_appContext_envContextConfigMapName )     | No      | string | No         | -          | Environment context ConfigMap name |
| - [stackContextConfigMapName](#global_appContext_stackContextConfigMapName ) | No      | string | No         | -          | Stack context ConfigMap name       |

#### <a name="global_appContext_envContextConfigMapName"></a>2.1.1. Property `agents > global > appContext > envContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment context ConfigMap name

#### <a name="global_appContext_stackContextConfigMapName"></a>2.1.2. Property `agents > global > appContext > stackContextConfigMapName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack context ConfigMap name

### <a name="global_appSecrets"></a>2.2. Property `agents > global > appSecrets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus-managed Secret names

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterCLISecret](#global_appSecrets_clusterCLISecret ) | No      | object | No         | -          | -                 |
| - [clusterSecret](#global_appSecrets_clusterSecret )       | No      | object | No         | -          | -                 |
| - [envSecret](#global_appSecrets_envSecret )               | No      | object | No         | -          | -                 |
| - [stackSecret](#global_appSecrets_stackSecret )           | No      | object | No         | -          | -                 |

#### <a name="global_appSecrets_clusterCLISecret"></a>2.2.1. Property `agents > global > appSecrets > clusterCLISecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description       |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------- |
| - [secretName](#global_appSecrets_clusterCLISecret_secretName ) | No      | string | No         | -          | Cluster CLI Secret name |

##### <a name="global_appSecrets_clusterCLISecret_secretName"></a>2.2.1.1. Property `agents > global > appSecrets > clusterCLISecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster CLI Secret name

#### <a name="global_appSecrets_clusterSecret"></a>2.2.2. Property `agents > global > appSecrets > clusterSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Pattern | Type   | Deprecated | Definition | Title/Description   |
| ------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------- |
| - [secretName](#global_appSecrets_clusterSecret_secretName ) | No      | string | No         | -          | Cluster Secret name |

##### <a name="global_appSecrets_clusterSecret_secretName"></a>2.2.2.1. Property `agents > global > appSecrets > clusterSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster Secret name

#### <a name="global_appSecrets_envSecret"></a>2.2.3. Property `agents > global > appSecrets > envSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description       |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------- |
| - [secretName](#global_appSecrets_envSecret_secretName ) | No      | string | No         | -          | Environment Secret name |

##### <a name="global_appSecrets_envSecret_secretName"></a>2.2.3.1. Property `agents > global > appSecrets > envSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Environment Secret name

#### <a name="global_appSecrets_stackSecret"></a>2.2.4. Property `agents > global > appSecrets > stackSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretName](#global_appSecrets_stackSecret_secretName ) | No      | string | No         | -          | Stack Secret name |

##### <a name="global_appSecrets_stackSecret_secretName"></a>2.2.4.1. Property `agents > global > appSecrets > stackSecret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Stack Secret name

### <a name="global_argusMetadata"></a>2.3. Property `agents > global > argusMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Argus metadata

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [stackName](#global_argusMetadata_stackName ) | No      | string | No         | -          | Argus stack name  |

#### <a name="global_argusMetadata_stackName"></a>2.3.1. Property `agents > global > argusMetadata > stackName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Argus stack name

### <a name="global_env"></a>2.4. Property `agents > global > env`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Non-sensitive environment variables inherited by every Agent

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

#### <a name="global_env_items"></a>2.4.1. agents > global > env > env items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#global_env_items_name )           | No      | string | No         | -          | -                 |
| - [value](#global_env_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#global_env_items_valueFrom ) | No      | object | No         | -          | -                 |

##### <a name="global_env_items_name"></a>2.4.1.1. Property `agents > global > env > env items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_env_items_value"></a>2.4.1.2. Property `agents > global > env > env items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="global_env_items_valueFrom"></a>2.4.1.3. Property `agents > global > env > env items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="profiles"></a>3. Property `agents > profiles`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** AgentProfile specifications keyed by resource name

| Property                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [](#profiles_additionalProperties ) | No      | object | No         | -          | -                 |

----------------------------------------------------------------------------------------------------------------------------
