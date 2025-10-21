# argo-project

**Title:** argo-project

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [namespace](#namespace )     | No      | string | No         | -          | -                 |
| - [projectName](#projectName ) | No      | string | No         | -          | -                 |
| - [spec](#spec )               | No      | object | No         | -          | -                 |

## <a name="namespace"></a>1. Property `argo-project > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="projectName"></a>2. Property `argo-project > projectName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="spec"></a>3. Property `argo-project > spec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                      | Pattern | Type            | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [clusterResourceWhitelist](#spec_clusterResourceWhitelist ) | No      | array of object | No         | -          | -                 |
| - [destinations](#spec_destinations )                         | No      | array of object | No         | -          | -                 |
| - [sourceRepos](#spec_sourceRepos )                           | No      | array of string | No         | -          | -                 |

### <a name="spec_clusterResourceWhitelist"></a>3.1. Property `argo-project > spec > clusterResourceWhitelist`

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

| Each item of this array must be                                        | Description |
| ---------------------------------------------------------------------- | ----------- |
| [clusterResourceWhitelist items](#spec_clusterResourceWhitelist_items) | -           |

#### <a name="spec_clusterResourceWhitelist_items"></a>3.1.1. argo-project > spec > clusterResourceWhitelist > clusterResourceWhitelist items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [group](#spec_clusterResourceWhitelist_items_group ) | No      | string | No         | -          | -                 |
| - [kind](#spec_clusterResourceWhitelist_items_kind )   | No      | string | No         | -          | -                 |

##### <a name="spec_clusterResourceWhitelist_items_group"></a>3.1.1.1. Property `argo-project > spec > clusterResourceWhitelist > clusterResourceWhitelist items > group`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="spec_clusterResourceWhitelist_items_kind"></a>3.1.1.2. Property `argo-project > spec > clusterResourceWhitelist > clusterResourceWhitelist items > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="spec_destinations"></a>3.2. Property `argo-project > spec > destinations`

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

| Each item of this array must be                | Description |
| ---------------------------------------------- | ----------- |
| [destinations items](#spec_destinations_items) | -           |

#### <a name="spec_destinations_items"></a>3.2.1. argo-project > spec > destinations > destinations items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [namespace](#spec_destinations_items_namespace ) | No      | string | No         | -          | -                 |
| - [server](#spec_destinations_items_server )       | No      | string | No         | -          | -                 |

##### <a name="spec_destinations_items_namespace"></a>3.2.1.1. Property `argo-project > spec > destinations > destinations items > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="spec_destinations_items_server"></a>3.2.1.2. Property `argo-project > spec > destinations > destinations items > server`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="spec_sourceRepos"></a>3.3. Property `argo-project > spec > sourceRepos`

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

| Each item of this array must be              | Description |
| -------------------------------------------- | ----------- |
| [sourceRepos items](#spec_sourceRepos_items) | -           |

#### <a name="spec_sourceRepos_items"></a>3.3.1. argo-project > spec > sourceRepos > sourceRepos items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

----------------------------------------------------------------------------------------------------------------------------
