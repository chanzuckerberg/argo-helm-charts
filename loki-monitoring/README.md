# loki-monitoring

**Title:** loki-monitoring

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                     | Pattern | Type    | Deprecated | Definition | Title/Description                 |
| -------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------- |
| - [alertRuleGroup](#alertRuleGroup )         | No      | object  | No         | -          | -                                 |
| - [contactPoint](#contactPoint )             | No      | object  | No         | -          | -                                 |
| - [enabled](#enabled )                       | No      | boolean | No         | -          | Enable the loki-monitoring chart. |
| - [folder](#folder )                         | No      | object  | No         | -          | -                                 |
| - [grafana](#grafana )                       | No      | object  | No         | -          | -                                 |
| - [loki](#loki )                             | No      | object  | No         | -          | -                                 |
| - [notificationPolicy](#notificationPolicy ) | No      | object  | No         | -          | -                                 |

## <a name="alertRuleGroup"></a>1. Property `loki-monitoring > alertRuleGroup`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                              | Pattern | Type    | Deprecated | Definition | Title/Description                                |
| ------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------ |
| - [enabled](#alertRuleGroup_enabled ) | No      | boolean | No         | -          | Enable Grafana alert rule group for Loki alerts. |
| - [name](#alertRuleGroup_name )       | No      | string  | No         | -          | Name of the alert rule group.                    |
| - [title](#alertRuleGroup_title )     | No      | string  | No         | -          | Title of the alert rule group.                   |

### <a name="alertRuleGroup_enabled"></a>1.1. Property `loki-monitoring > alertRuleGroup > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Grafana alert rule group for Loki alerts.

### <a name="alertRuleGroup_name"></a>1.2. Property `loki-monitoring > alertRuleGroup > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the alert rule group.

### <a name="alertRuleGroup_title"></a>1.3. Property `loki-monitoring > alertRuleGroup > title`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Title of the alert rule group.

## <a name="contactPoint"></a>2. Property `loki-monitoring > contactPoint`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                            | Pattern | Type    | Deprecated | Definition | Title/Description                             |
| ----------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------------------- |
| - [enabled](#contactPoint_enabled ) | No      | boolean | No         | -          | Enable Grafana contact point for Loki alerts. |
| - [name](#contactPoint_name )       | No      | string  | No         | -          | Name of the contact point.                    |
| - [slack](#contactPoint_slack )     | No      | object  | No         | -          | -                                             |

### <a name="contactPoint_enabled"></a>2.1. Property `loki-monitoring > contactPoint > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Grafana contact point for Loki alerts.

### <a name="contactPoint_name"></a>2.2. Property `loki-monitoring > contactPoint > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the contact point.

### <a name="contactPoint_slack"></a>2.3. Property `loki-monitoring > contactPoint > slack`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                    |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------------- |
| - [secretKey](#contactPoint_slack_secretKey )   | No      | string | No         | -          | Key in the secret containing the Slack webhook URL.  |
| - [secretName](#contactPoint_slack_secretName ) | No      | string | No         | -          | Name of the secret containing the Slack webhook URL. |

#### <a name="contactPoint_slack_secretKey"></a>2.3.1. Property `loki-monitoring > contactPoint > slack > secretKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Key in the secret containing the Slack webhook URL.

#### <a name="contactPoint_slack_secretName"></a>2.3.2. Property `loki-monitoring > contactPoint > slack > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the secret containing the Slack webhook URL.

## <a name="enabled"></a>3. Property `loki-monitoring > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the loki-monitoring chart.

## <a name="folder"></a>4. Property `loki-monitoring > folder`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                  | Pattern | Type   | Deprecated | Definition | Title/Description                         |
| ------------------------- | ------- | ------ | ---------- | ---------- | ----------------------------------------- |
| - [name](#folder_name )   | No      | string | No         | -          | Grafana folder name for Loki dashboards.  |
| - [title](#folder_title ) | No      | string | No         | -          | Grafana folder title for Loki dashboards. |

### <a name="folder_name"></a>4.1. Property `loki-monitoring > folder > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana folder name for Loki dashboards.

### <a name="folder_title"></a>4.2. Property `loki-monitoring > folder > title`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana folder title for Loki dashboards.

## <a name="grafana"></a>5. Property `loki-monitoring > grafana`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                 | Pattern | Type   | Deprecated | Definition | Title/Description                                         |
| ------------------------ | ------- | ------ | ---------- | ---------- | --------------------------------------------------------- |
| - [name](#grafana_name ) | No      | string | No         | -          | Grafana instance label used by GrafanaDashboard selector. |

### <a name="grafana_name"></a>5.1. Property `loki-monitoring > grafana > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana instance label used by GrafanaDashboard selector.

## <a name="loki"></a>6. Property `loki-monitoring > loki`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                  | Pattern | Type   | Deprecated | Definition | Title/Description                                            |
| ----------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------ |
| - [dashboardTitle](#loki_dashboardTitle ) | No      | string | No         | -          | Grafana dashboard title.                                     |
| - [name](#loki_name )                     | No      | string | No         | -          | Name used for dashboard/folder resources.                    |
| - [namespace](#loki_namespace )           | No      | string | No         | -          | Namespace where Loki runs, used in dashboard PromQL queries. |
| - [uid](#loki_uid )                       | No      | string | No         | -          | Grafana dashboard UID.                                       |

### <a name="loki_dashboardTitle"></a>6.1. Property `loki-monitoring > loki > dashboardTitle`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana dashboard title.

### <a name="loki_name"></a>6.2. Property `loki-monitoring > loki > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name used for dashboard/folder resources.

### <a name="loki_namespace"></a>6.3. Property `loki-monitoring > loki > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Namespace where Loki runs, used in dashboard PromQL queries.

### <a name="loki_uid"></a>6.4. Property `loki-monitoring > loki > uid`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana dashboard UID.

## <a name="notificationPolicy"></a>7. Property `loki-monitoring > notificationPolicy`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                  | Pattern | Type    | Deprecated | Definition | Title/Description                                   |
| ----------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------------------------- |
| - [enabled](#notificationPolicy_enabled ) | No      | boolean | No         | -          | Enable Grafana notification policy for Loki alerts. |
| - [name](#notificationPolicy_name )       | No      | string  | No         | -          | Name of the notification policy.                    |

### <a name="notificationPolicy_enabled"></a>7.1. Property `loki-monitoring > notificationPolicy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Grafana notification policy for Loki alerts.

### <a name="notificationPolicy_name"></a>7.2. Property `loki-monitoring > notificationPolicy > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the notification policy.

----------------------------------------------------------------------------------------------------------------------------
