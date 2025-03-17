# grafana

**Title:** grafana

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                     | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [baseDomain](#baseDomain )                 | No      | string  | No         | -          | -                 |
| - [clusterName](#clusterName )               | No      | string  | No         | -          | -                 |
| - [datasources](#datasources )               | No      | object  | No         | -          | -                 |
| - [grafanaAnnotations](#grafanaAnnotations ) | No      | object  | No         | -          | -                 |
| - [grafanaName](#grafanaName )               | No      | string  | No         | -          | -                 |
| - [grafanaSubdomain](#grafanaSubdomain )     | No      | string  | No         | -          | -                 |
| - [replicas](#replicas )                     | No      | integer | No         | -          | -                 |
| - [roleAttributePath](#roleAttributePath )   | No      | string  | No         | -          | -                 |
| - [secretStoreRef](#secretStoreRef )         | No      | string  | No         | -          | -                 |

## <a name="baseDomain"></a>1. Property `grafana > baseDomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="clusterName"></a>2. Property `grafana > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="datasources"></a>3. Property `grafana > datasources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [loki](#datasources_loki )             | No      | object | No         | -          | -                 |
| - [prometheus](#datasources_prometheus ) | No      | object | No         | -          | -                 |
| - [tempo](#datasources_tempo )           | No      | object | No         | -          | -                 |

### <a name="datasources_loki"></a>3.1. Property `grafana > datasources > loki`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type    | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#datasources_loki_enabled ) | No      | boolean | No         | -          | -                 |
| - [url](#datasources_loki_url )         | No      | string  | No         | -          | -                 |

#### <a name="datasources_loki_enabled"></a>3.1.1. Property `grafana > datasources > loki > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="datasources_loki_url"></a>3.1.2. Property `grafana > datasources > loki > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="datasources_prometheus"></a>3.2. Property `grafana > datasources > prometheus`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type    | Deprecated | Definition | Title/Description |
| --------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#datasources_prometheus_enabled ) | No      | boolean | No         | -          | -                 |
| - [url](#datasources_prometheus_url )         | No      | string  | No         | -          | -                 |

#### <a name="datasources_prometheus_enabled"></a>3.2.1. Property `grafana > datasources > prometheus > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="datasources_prometheus_url"></a>3.2.2. Property `grafana > datasources > prometheus > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="datasources_tempo"></a>3.3. Property `grafana > datasources > tempo`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                 | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#datasources_tempo_enabled ) | No      | boolean | No         | -          | -                 |
| - [url](#datasources_tempo_url )         | No      | string  | No         | -          | -                 |

#### <a name="datasources_tempo_enabled"></a>3.3.1. Property `grafana > datasources > tempo > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="datasources_tempo_url"></a>3.3.2. Property `grafana > datasources > tempo > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="grafanaAnnotations"></a>4. Property `grafana > grafanaAnnotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="grafanaName"></a>5. Property `grafana > grafanaName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="grafanaSubdomain"></a>6. Property `grafana > grafanaSubdomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="replicas"></a>7. Property `grafana > replicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

## <a name="roleAttributePath"></a>8. Property `grafana > roleAttributePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="secretStoreRef"></a>9. Property `grafana > secretStoreRef`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

----------------------------------------------------------------------------------------------------------------------------
