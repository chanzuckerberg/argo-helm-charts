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

----------------------------------------------------------------------------------------------------------------------------
Generated using [json-schema-for-humans](https://github.com/coveooss/json-schema-for-humans) on 2025-03-14 at 19:47:23 +0000
