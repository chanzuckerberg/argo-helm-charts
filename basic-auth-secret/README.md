# basic-auth-secret

**Title:** basic-auth-secret

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                             | Pattern | Type   | Deprecated | Definition | Title/Description                                           |
| ------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------- |
| - [externalSecret](#externalSecret ) | No      | object | No         | -          | -                                                           |
| - [keyPrefix](#keyPrefix )           | No      | string | No         | -          | Key prefix for the secret keys in the external secret store |

## <a name="externalSecret"></a>1. Property `basic-auth-secret > externalSecret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description                                    |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------------- |
| - [name](#externalSecret_name )                     | No      | string | No         | -          | Name of the external secret resource to create       |
| - [secretStoreRef](#externalSecret_secretStoreRef ) | No      | string | No         | -          | Name of the secret store to use for external secrets |

### <a name="externalSecret_name"></a>1.1. Property `basic-auth-secret > externalSecret > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the external secret resource to create

### <a name="externalSecret_secretStoreRef"></a>1.2. Property `basic-auth-secret > externalSecret > secretStoreRef`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the secret store to use for external secrets

## <a name="keyPrefix"></a>2. Property `basic-auth-secret > keyPrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Key prefix for the secret keys in the external secret store

----------------------------------------------------------------------------------------------------------------------------
