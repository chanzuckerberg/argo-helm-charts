# grafana

**Title:** grafana

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                     | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                                                                                    |
| -------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| - [baseDomain](#baseDomain )                 | No      | string  | No         | -          | -                                                                                                                                                                                    |
| + [clusterName](#clusterName )               | No      | string  | No         | -          | Name of the cluster to configure the platform Grafana for. This value is required.                                                                                                   |
| - [datasources](#datasources )               | No      | object  | No         | -          | List of datasources to configure for the Grafana instance.                                                                                                                           |
| - [enabled](#enabled )                       | No      | boolean | No         | -          | Enable the Grafana instance.                                                                                                                                                         |
| - [env](#env )                               | No      | object  | No         | -          | Environment variables to set in the Grafana instance. This can be used to set custom environment variables for Grafana.                                                              |
| - [extraSecretVolumes](#extraSecretVolumes ) | No      | array   | No         | -          | List of extra secret volumes to mount in the Grafana instance. Each entry should be a map with the following keys:                                                                   |
| - [grafana.ini](#grafanaini )                | No      | object  | No         | -          | -                                                                                                                                                                                    |
| - [grafanaAnnotations](#grafanaAnnotations ) | No      | object  | No         | -          | Annotations to add to the Grafana instance.                                                                                                                                          |
| - [grafanaBaseImage](#grafanaBaseImage )     | No      | string  | No         | -          | Base image for the Grafana instance.                                                                                                                                                 |
| - [grafanaName](#grafanaName )               | No      | string  | No         | -          | Name of the Grafana instance to create.                                                                                                                                              |
| - [grafanaSubdomain](#grafanaSubdomain )     | No      | string  | No         | -          | Subdomain to use for the Grafana instance.                                                                                                                                           |
| - [replicas](#replicas )                     | No      | integer | No         | -          | Number of Grafana replicas to create. When greater than 1, database persistence is required (not supported yet), as well as session affinity.                                        |
| - [roleAttributePath](#roleAttributePath )   | No      | string  | No         | -          | JMESPath expression to use to determine the role of the user. See https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/generic-oauth/ . |
| - [secretStoreRef](#secretStoreRef )         | No      | string  | No         | -          | Name of the secret store to use for external secrets.                                                                                                                                |
| - [serviceAccount](#serviceAccount )         | No      | object  | No         | -          | -                                                                                                                                                                                    |

## <a name="baseDomain"></a>1. Property `grafana > baseDomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="clusterName"></a>2. Property `grafana > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Name of the cluster to configure the platform Grafana for. This value is required.

## <a name="datasources"></a>3. Property `grafana > datasources`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** List of datasources to configure for the Grafana instance.

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description                    |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------ |
| - [loki](#datasources_loki )             | No      | object | No         | -          | Loki datasource configuration.       |
| - [prometheus](#datasources_prometheus ) | No      | object | No         | -          | Prometheus datasource configuration. |
| - [tempo](#datasources_tempo )           | No      | object | No         | -          | Tempo datasource configuration.      |

### <a name="datasources_loki"></a>3.1. Property `grafana > datasources > loki`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Loki datasource configuration.

| Property                                | Pattern | Type    | Deprecated | Definition | Title/Description           |
| --------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------- |
| - [enabled](#datasources_loki_enabled ) | No      | boolean | No         | -          | Enable the Loki datasource. |
| - [url](#datasources_loki_url )         | No      | string  | No         | -          | URL of the Loki datasource. |

#### <a name="datasources_loki_enabled"></a>3.1.1. Property `grafana > datasources > loki > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the Loki datasource.

#### <a name="datasources_loki_url"></a>3.1.2. Property `grafana > datasources > loki > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL of the Loki datasource.

### <a name="datasources_prometheus"></a>3.2. Property `grafana > datasources > prometheus`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Prometheus datasource configuration.

| Property                                      | Pattern | Type    | Deprecated | Definition | Title/Description                 |
| --------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------- |
| - [enabled](#datasources_prometheus_enabled ) | No      | boolean | No         | -          | Enable the Prometheus datasource. |
| - [url](#datasources_prometheus_url )         | No      | string  | No         | -          | URL of the Prometheus datasource. |

#### <a name="datasources_prometheus_enabled"></a>3.2.1. Property `grafana > datasources > prometheus > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the Prometheus datasource.

#### <a name="datasources_prometheus_url"></a>3.2.2. Property `grafana > datasources > prometheus > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL of the Prometheus datasource.

### <a name="datasources_tempo"></a>3.3. Property `grafana > datasources > tempo`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Tempo datasource configuration.

| Property                                 | Pattern | Type    | Deprecated | Definition | Title/Description            |
| ---------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------------- |
| - [enabled](#datasources_tempo_enabled ) | No      | boolean | No         | -          | Enable the Tempo datasource. |
| - [url](#datasources_tempo_url )         | No      | string  | No         | -          | URL of the Tempo datasource. |

#### <a name="datasources_tempo_enabled"></a>3.3.1. Property `grafana > datasources > tempo > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the Tempo datasource.

#### <a name="datasources_tempo_url"></a>3.3.2. Property `grafana > datasources > tempo > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL of the Tempo datasource.

## <a name="enabled"></a>4. Property `grafana > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the Grafana instance.

## <a name="env"></a>5. Property `grafana > env`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Environment variables to set in the Grafana instance. This can be used to set custom environment variables for Grafana.

| Property                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#env_pattern1 ) | Yes     | string | No         | -          | -                 |

### <a name="env_pattern1"></a>5.1. Pattern Property `grafana > env > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="extraSecretVolumes"></a>6. Property `grafana > extraSecretVolumes`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** List of extra secret volumes to mount in the Grafana instance. Each entry should be a map with the following keys:

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="grafanaini"></a>7. Property `grafana > grafana.ini`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [security](#grafanaini_security ) | No      | object | No         | -          | -                 |

### <a name="grafanaini_security"></a>7.1. Property `grafana > grafana.ini > security`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description                                            |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------ |
| - [allow_embedding](#grafanaini_security_allow_embedding ) | No      | string | No         | -          | Allow embedding of Grafana dashboards in other applications. |

#### <a name="grafanaini_security_allow_embedding"></a>7.1.1. Property `grafana > grafana.ini > security > allow_embedding`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Allow embedding of Grafana dashboards in other applications.

## <a name="grafanaAnnotations"></a>8. Property `grafana > grafanaAnnotations`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Annotations to add to the Grafana instance.

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#grafanaAnnotations_pattern1 ) | Yes     | string | No         | -          | -                 |

### <a name="grafanaAnnotations_pattern1"></a>8.1. Pattern Property `grafana > grafanaAnnotations > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="grafanaBaseImage"></a>9. Property `grafana > grafanaBaseImage`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Base image for the Grafana instance.

## <a name="grafanaName"></a>10. Property `grafana > grafanaName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the Grafana instance to create.

## <a name="grafanaSubdomain"></a>11. Property `grafana > grafanaSubdomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Subdomain to use for the Grafana instance.

## <a name="replicas"></a>12. Property `grafana > replicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Number of Grafana replicas to create. When greater than 1, database persistence is required (not supported yet), as well as session affinity.

| Restrictions |        |
| ------------ | ------ |
| **Maximum**  | &le; 1 |

## <a name="roleAttributePath"></a>13. Property `grafana > roleAttributePath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** JMESPath expression to use to determine the role of the user. See https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/generic-oauth/ .

## <a name="secretStoreRef"></a>14. Property `grafana > secretStoreRef`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the secret store to use for external secrets.

## <a name="serviceAccount"></a>15. Property `grafana > serviceAccount`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description                          |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------ |
| - [annotations](#serviceAccount_annotations ) | No      | object | No         | -          | Annotations to add to the service account. |

### <a name="serviceAccount_annotations"></a>15.1. Property `grafana > serviceAccount > annotations`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Annotations to add to the service account.

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#serviceAccount_annotations_pattern1 ) | Yes     | string | No         | -          | -                 |

#### <a name="serviceAccount_annotations_pattern1"></a>15.1.1. Pattern Property `grafana > serviceAccount > annotations > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

----------------------------------------------------------------------------------------------------------------------------
