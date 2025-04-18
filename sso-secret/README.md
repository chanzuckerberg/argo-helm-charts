# sso-secret

**Title:** sso-secret

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                               | Pattern | Type   | Deprecated | Definition | Title/Description                                                                   |
| -------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------------------------------- |
| - [applicationName](#applicationName ) | No      | string | No         | -          | Name of the application to configure the sso secret for                             |
| - [clusterName](#clusterName )         | No      | string | No         | -          | Name of the cluster to configure the sso secret for                                 |
| - [secretName](#secretName )           | No      | string | No         | -          | Name of the secret to create (both external secret and kubernetes secret resources) |
| - [secretStoreRef](#secretStoreRef )   | No      | string | No         | -          | Name of the secret store to use for external secrets.                               |

## <a name="applicationName"></a>1. Property `sso-secret > applicationName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the application to configure the sso secret for

## <a name="clusterName"></a>2. Property `sso-secret > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the cluster to configure the sso secret for

## <a name="secretName"></a>3. Property `sso-secret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the secret to create (both external secret and kubernetes secret resources)

## <a name="secretStoreRef"></a>4. Property `sso-secret > secretStoreRef`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the secret store to use for external secrets.

----------------------------------------------------------------------------------------------------------------------------
