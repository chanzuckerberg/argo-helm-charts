# loki-monitoring

**Title:** loki-monitoring

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                             | Pattern | Type    | Deprecated | Definition | Title/Description                                    |
| ------------------------------------ | ------- | ------- | ---------- | ---------- | ---------------------------------------------------- |
| - [enabled](#enabled )               | No      | boolean | No         | -          | Enable the loki-monitoring chart.                    |
| - [grafana](#grafana )               | No      | object  | No         | -          | -                                                    |
| - [folder](#folder )                 | No      | object  | No         | -          | -                                                    |
| - [loki](#loki )                     | No      | object  | No         | -          | -                                                    |
| - [contactPoint](#contactpoint )     | No      | object  | No         | -          | -                                                    |
| - [notificationPolicy](#notificationpolicy ) | No | object | No | - | - |

## <a name="enabled"></a>1. Property `loki-monitoring > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the loki-monitoring chart.

## <a name="grafana"></a>2. Property `loki-monitoring > grafana`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                         | Pattern | Type    | Deprecated | Definition | Title/Description                         |
| -------------------------------- | ------- | ------- | ---------- | ---------- | ----------------------------------------- |
| - [name](#grafana_name )         | No      | string  | No         | -          | Grafana instance label used by dashboards |

### <a name="grafana_name"></a>2.1. Property `loki-monitoring > grafana > name`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Grafana instance label used by GrafanaDashboard selector.

## <a name="folder"></a>3. Property `loki-monitoring > folder`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [name](#folder_name )       | No      | string  | No         | -          | Grafana folder name for Loki dashboards. |
| - [title](#folder_title )     | No      | string  | No         | -          | Grafana folder title for Loki dashboards. |

### <a name="folder_name"></a>3.1. Property `loki-monitoring > folder > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana folder name for Loki dashboards.

### <a name="folder_title"></a>3.2. Property `loki-monitoring > folder > title`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana folder title for Loki dashboards.

## <a name="loki"></a>4. Property `loki-monitoring > loki`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [name](#loki_name )         | No      | string  | No         | -          | Name used for dashboard/folder resources. |
| - [namespace](#loki_namespace ) | No    | string  | No         | -          | Namespace where Loki runs; used in dashboard PromQL queries. |
| - [uid](#loki_uid )           | No      | string  | No         | -          | Grafana dashboard UID.                 |
| - [dashboardTitle](#loki_title ) | No   | string  | No         | -          | Grafana dashboard title.               |

### <a name="loki_name"></a>4.1. Property `loki-monitoring > loki > name`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Name used for dashboard/folder resources.

### <a name="loki_namespace"></a>4.2. Property `loki-monitoring > loki > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Namespace where Loki runs; used in dashboard PromQL queries.

### <a name="loki_uid"></a>4.3. Property `loki-monitoring > loki > uid`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana dashboard UID.

### <a name="loki_title"></a>4.4. Property `loki-monitoring > loki > dashboardTitle`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Grafana dashboard title.

## <a name="contactpoint"></a>5. Property `loki-monitoring > contactPoint`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [enabled](#cp_enabled )     | No      | boolean | No         | -          | Enable Grafana contact point for Loki alerts. |
| - [name](#cp_name )           | No      | string  | No         | -          | Name of the contact point.             |
| - [slack](#cp_slack )         | No      | object  | No         | -          | Slack-specific secret references.      |

### <a name="cp_enabled"></a>5.1. Property `loki-monitoring > contactPoint > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Grafana contact point for Loki alerts.

### <a name="cp_name"></a>5.2. Property `loki-monitoring > contactPoint > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the contact point.

### <a name="cp_slack"></a>5.3. Property `loki-monitoring > contactPoint > slack`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description                                    |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------------- |
| - [secretName](#cp_slack_name )    | No      | string | No         | -          | Name of the secret containing the Slack webhook URL. |
| - [secretKey](#cp_slack_key )      | No      | string | No         | -          | Key in the secret containing the Slack webhook URL.  |

## <a name="notificationpolicy"></a>6. Property `loki-monitoring > notificationPolicy`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [enabled](#np_enabled )     | No      | boolean | No         | -          | Enable Grafana notification policy for Loki alerts. |
| - [name](#np_name )           | No      | string  | No         | -          | Name of the notification policy.       |

### <a name="np_enabled"></a>6.1. Property `loki-monitoring > notificationPolicy > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Grafana notification policy for Loki alerts.

### <a name="np_name"></a>6.2. Property `loki-monitoring > notificationPolicy > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the notification policy.

## <a name="alertrulegroup"></a>7. Property `loki-monitoring > alertRuleGroup`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                      | Pattern | Type    | Deprecated | Definition | Title/Description                      |
| ----------------------------- | ------- | ------- | ---------- | ---------- | -------------------------------------- |
| - [enabled](#arg_enabled )    | No      | boolean | No         | -          | Enable Grafana alert rule group for Loki alerts. |
| - [name](#arg_name )          | No      | string  | No         | -          | Name of the alert rule group.         |
| - [title](#arg_title )        | No      | string  | No         | -          | Title of the alert rule group.        |

### <a name="arg_enabled"></a>7.1. Property `loki-monitoring > alertRuleGroup > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable Grafana alert rule group for Loki alerts.

### <a name="arg_name"></a>7.2. Property `loki-monitoring > alertRuleGroup > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the alert rule group.

### <a name="arg_title"></a>7.3. Property `loki-monitoring > alertRuleGroup > title`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Title of the alert rule group.


----------------------------------------------------------------------------------------------------------------------------
