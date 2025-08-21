# argo-events

**Title:** argo-events

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                         | Pattern | Type   | Deprecated | Definition | Title/Description           |
| -------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------- |
| - [eventsources](#eventsources ) | No      | object | No         | -          | Event Sources Configuration |

## <a name="eventsources"></a>1. Property `argo-events > eventsources`

**Title:** Event Sources Configuration

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Configure various event sources for Argo Events

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description               |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------- |
| - [awsSqs](#eventsources_awsSqs )   | No      | object | No         | -          | SQS event source configuration. |
| - [webhook](#eventsources_webhook ) | No      | object | No         | -          | an HTTP based EventSource       |

### <a name="eventsources_awsSqs"></a>1.1. Property `argo-events > eventsources > awsSqs`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** SQS event source configuration.

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventsources_awsSqs_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventsources_awsSqs_pattern1"></a>1.1.1. Pattern Property `argo-events > eventsources > awsSqs > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                                            | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                         |
| ------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------------------------------------------------------------------------------- |
| + [queue](#eventsources_awsSqs_pattern1_queue )                     | No      | string  | No         | -          | AWS SQS queue to listen to for messages                                                                   |
| + [region](#eventsources_awsSqs_pattern1_region )                   | No      | string  | No         | -          | AWS region                                                                                                |
| + [waitTimeSeconds](#eventsources_awsSqs_pattern1_waitTimeSeconds ) | No      | integer | No         | -          | The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. |

##### <a name="eventsources_awsSqs_pattern1_queue"></a>1.1.1.1. Property `argo-events > eventsources > awsSqs > ^.*$ > queue`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** AWS SQS queue to listen to for messages

##### <a name="eventsources_awsSqs_pattern1_region"></a>1.1.1.2. Property `argo-events > eventsources > awsSqs > ^.*$ > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** AWS region

##### <a name="eventsources_awsSqs_pattern1_waitTimeSeconds"></a>1.1.1.3. Property `argo-events > eventsources > awsSqs > ^.*$ > waitTimeSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** The duration (in seconds) for which the call waits for a message to arrive in the queue before returning.

### <a name="eventsources_webhook"></a>1.2. Property `argo-events > eventsources > webhook`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** an HTTP based EventSource

| Property                                  | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventsources_webhook_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventsources_webhook_pattern1"></a>1.2.1. Pattern Property `argo-events > eventsources > webhook > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                                                  |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ---------------------------------------------------------------------------------- |
| + [endpoint](#eventsources_webhook_pattern1_endpoint ) | No      | string | No         | -          | URL path where the webhook will receive events                                     |
| + [method](#eventsources_webhook_pattern1_method )     | No      | string | No         | -          | HTTP method allowed for the webhook (GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS) |
| + [port](#eventsources_webhook_pattern1_port )         | No      | string | No         | -          | Port on which the webhook server will listen                                       |

##### <a name="eventsources_webhook_pattern1_endpoint"></a>1.2.1.1. Property `argo-events > eventsources > webhook > ^.*$ > endpoint`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** URL path where the webhook will receive events

##### <a name="eventsources_webhook_pattern1_method"></a>1.2.1.2. Property `argo-events > eventsources > webhook > ^.*$ > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** HTTP method allowed for the webhook (GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS)

##### <a name="eventsources_webhook_pattern1_port"></a>1.2.1.3. Property `argo-events > eventsources > webhook > ^.*$ > port`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Port on which the webhook server will listen

----------------------------------------------------------------------------------------------------------------------------
