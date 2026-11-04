# core-platform-ecr-pull-secret

**Title:** core-platform-ecr-pull-secret

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [aws](#aws )                                               | No      | object | No         | -          | -                 |
| - [readerServiceAccountName](#readerServiceAccountName )     | No      | string | No         | -          | -                 |
| - [refreshInterval](#refreshInterval )                       | No      | string | No         | -          | -                 |
| - [registry](#registry )                                     | No      | string | No         | -          | -                 |
| - [replicationRefreshInterval](#replicationRefreshInterval ) | No      | string | No         | -          | -                 |
| - [serviceAccountRef](#serviceAccountRef )                   | No      | object | No         | -          | -                 |

## <a name="aws"></a>1. Property `core-platform-ecr-pull-secret > aws`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [region](#aws_region ) | No      | string | No         | -          | -                 |

### <a name="aws_region"></a>1.1. Property `core-platform-ecr-pull-secret > aws > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="readerServiceAccountName"></a>2. Property `core-platform-ecr-pull-secret > readerServiceAccountName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="refreshInterval"></a>3. Property `core-platform-ecr-pull-secret > refreshInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="registry"></a>4. Property `core-platform-ecr-pull-secret > registry`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="replicationRefreshInterval"></a>5. Property `core-platform-ecr-pull-secret > replicationRefreshInterval`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="serviceAccountRef"></a>6. Property `core-platform-ecr-pull-secret > serviceAccountRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#serviceAccountRef_name )           | No      | string | No         | -          | -                 |
| - [namespace](#serviceAccountRef_namespace ) | No      | string | No         | -          | -                 |

### <a name="serviceAccountRef_name"></a>6.1. Property `core-platform-ecr-pull-secret > serviceAccountRef > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="serviceAccountRef_namespace"></a>6.2. Property `core-platform-ecr-pull-secret > serviceAccountRef > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

----------------------------------------------------------------------------------------------------------------------------
