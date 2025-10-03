# restarter

**Title:** restarter

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                 | Pattern | Type    | Deprecated | Definition | Title/Description                                                                |
| ------------------------ | ------- | ------- | ---------- | ---------- | -------------------------------------------------------------------------------- |
| - [enabled](#enabled )   | No      | boolean | No         | -          | Enable the restarter.                                                            |
| - [runner](#runner )     | No      | object  | No         | -          | -                                                                                |
| - [schedule](#schedule ) | No      | string  | No         | -          | Cron schedule for the restarter job. This is set to run at 3 AM PST (11 AM UTC). |
| - [target](#target )     | No      | object  | No         | -          | -                                                                                |

## <a name="enabled"></a>1. Property `restarter > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable the restarter.

## <a name="runner"></a>2. Property `restarter > runner`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                  | Pattern | Type   | Deprecated | Definition | Title/Description                              |
| ------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------- |
| - [image](#runner_image ) | No      | string | No         | -          | The Docker image to use for the restarter job. |

### <a name="runner_image"></a>2.1. Property `restarter > runner > image`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** The Docker image to use for the restarter job.

## <a name="schedule"></a>3. Property `restarter > schedule`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Cron schedule for the restarter job. This is set to run at 3 AM PST (11 AM UTC).

## <a name="target"></a>4. Property `restarter > target`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description                           |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------- |
| - [deployment](#target_deployment ) | No      | string | No         | -          | The name of the deployment to restart.      |
| - [namespace](#target_namespace )   | No      | string | No         | -          | The namespace of the deployment to restart. |

### <a name="target_deployment"></a>4.1. Property `restarter > target > deployment`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** The name of the deployment to restart.

### <a name="target_namespace"></a>4.2. Property `restarter > target > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** The namespace of the deployment to restart.

----------------------------------------------------------------------------------------------------------------------------
