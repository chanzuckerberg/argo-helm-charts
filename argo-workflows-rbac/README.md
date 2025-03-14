# argo-workflows-rbac

**Title:** argo-workflows-rbac

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterRole](#clusterRole ) | No      | object | No         | -          | -                 |

## <a name="clusterRole"></a>1. Property `argo-workflows-rbac > clusterRole`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                       | Pattern | Type            | Deprecated | Definition | Title/Description           |
| ------------------------------ | ------- | --------------- | ---------- | ---------- | --------------------------- |
| - [name](#clusterRole_name )   | No      | string          | No         | -          | Cluster Role name to create |
| - [rules](#clusterRole_rules ) | No      | array of object | No         | -          | -                           |

### <a name="clusterRole_name"></a>1.1. Property `argo-workflows-rbac > clusterRole > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cluster Role name to create

### <a name="clusterRole_rules"></a>1.2. Property `argo-workflows-rbac > clusterRole > rules`

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

| Each item of this array must be         | Description |
| --------------------------------------- | ----------- |
| [rules items](#clusterRole_rules_items) | -           |

#### <a name="clusterRole_rules_items"></a>1.2.1. argo-workflows-rbac > clusterRole > rules > rules items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type            | Deprecated | Definition | Title/Description                |
| -------------------------------------------------- | ------- | --------------- | ---------- | ---------- | -------------------------------- |
| - [apiGroups](#clusterRole_rules_items_apiGroups ) | No      | array of string | No         | -          | API groups to apply the rules to |
| - [resources](#clusterRole_rules_items_resources ) | No      | array of string | No         | -          | Resources to apply the rules to  |
| - [verbs](#clusterRole_rules_items_verbs )         | No      | array of string | No         | -          | Verbs to apply the rules to      |

##### <a name="clusterRole_rules_items_apiGroups"></a>1.2.1.1. Property `argo-workflows-rbac > clusterRole > rules > rules items > apiGroups`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** API groups to apply the rules to

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                             | Description |
| ----------------------------------------------------------- | ----------- |
| [apiGroups items](#clusterRole_rules_items_apiGroups_items) | -           |

###### <a name="clusterRole_rules_items_apiGroups_items"></a>1.2.1.1.1. argo-workflows-rbac > clusterRole > rules > rules items > apiGroups > apiGroups items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="clusterRole_rules_items_resources"></a>1.2.1.2. Property `argo-workflows-rbac > clusterRole > rules > rules items > resources`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Resources to apply the rules to

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                             | Description |
| ----------------------------------------------------------- | ----------- |
| [resources items](#clusterRole_rules_items_resources_items) | -           |

###### <a name="clusterRole_rules_items_resources_items"></a>1.2.1.2.1. argo-workflows-rbac > clusterRole > rules > rules items > resources > resources items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="clusterRole_rules_items_verbs"></a>1.2.1.3. Property `argo-workflows-rbac > clusterRole > rules > rules items > verbs`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Verbs to apply the rules to

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                     | Description |
| --------------------------------------------------- | ----------- |
| [verbs items](#clusterRole_rules_items_verbs_items) | -           |

###### <a name="clusterRole_rules_items_verbs_items"></a>1.2.1.3.1. argo-workflows-rbac > clusterRole > rules > rules items > verbs > verbs items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-03-14 at 19:47:22 +0000
