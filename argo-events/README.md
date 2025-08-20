# argo-events

**Title:** argo-events

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                         | Pattern | Type   | Deprecated | Definition | Title/Description                                 |
| -------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------- |
| - [eventsources](#eventsources ) | No      | object | No         | -          | List of eventsources to configure for Argo Events |

## <a name="eventsources"></a>1. Property `argo-events > eventsources`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** List of eventsources to configure for Argo Events

| Property                            | Pattern | Type            | Deprecated | Definition | Title/Description                   |
| ----------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------- |
| - [aws-sqs](#eventsources_aws-sqs ) | No      | array of object | No         | -          | SQS event source configuration.     |
| - [webhook](#eventsources_webhook ) | No      | array of object | No         | -          | Webhook event source configuration. |

### <a name="eventsources_aws-sqs"></a>1.1. Property `argo-events > eventsources > aws-sqs`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** SQS event source configuration.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be              | Description |
| -------------------------------------------- | ----------- |
| [aws-sqs items](#eventsources_aws-sqs_items) | -           |

#### <a name="eventsources_aws-sqs_items"></a>1.1.1. argo-events > eventsources > aws-sqs > aws-sqs items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                                          | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                         |
| ----------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------------------------------------------------------------------------------- |
| - [queue](#eventsources_aws-sqs_items_queue )                     | No      | string  | No         | -          | AWS SQS queue to listen to for messages                                                                   |
| - [region](#eventsources_aws-sqs_items_region )                   | No      | string  | No         | -          | AWS region                                                                                                |
| - [waitTimeSeconds](#eventsources_aws-sqs_items_waitTimeSeconds ) | No      | integer | No         | -          | The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. |

##### <a name="eventsources_aws-sqs_items_queue"></a>1.1.1.1. Property `argo-events > eventsources > aws-sqs > aws-sqs items > queue`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** AWS SQS queue to listen to for messages

##### <a name="eventsources_aws-sqs_items_region"></a>1.1.1.2. Property `argo-events > eventsources > aws-sqs > aws-sqs items > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** AWS region

##### <a name="eventsources_aws-sqs_items_waitTimeSeconds"></a>1.1.1.3. Property `argo-events > eventsources > aws-sqs > aws-sqs items > waitTimeSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** The duration (in seconds) for which the call waits for a message to arrive in the queue before returning.

### <a name="eventsources_webhook"></a>1.2. Property `argo-events > eventsources > webhook`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Webhook event source configuration.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be              | Description |
| -------------------------------------------- | ----------- |
| [webhook items](#eventsources_webhook_items) | -           |

#### <a name="eventsources_webhook_items"></a>1.2.1. argo-events > eventsources > webhook > webhook items

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                            | Pattern | Type    | Deprecated | Definition | Title/Description                                               |
| --------------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------------------------------------- |
| - [endpoint](#eventsources_webhook_items_endpoint ) | No      | string  | No         | -          | REST API endpoint                                               |
| - [method](#eventsources_webhook_items_method )     | No      | string  | No         | -          | the desired action to be performed for a given resource.        |
| - [port](#eventsources_webhook_items_port )         | No      | integer | No         | -          | the port on which HTTP server is listening for incoming events. |
| - [url](#eventsources_webhook_items_url )           | No      | string  | No         | -          | the url of the server                                           |

##### <a name="eventsources_webhook_items_endpoint"></a>1.2.1.1. Property `argo-events > eventsources > webhook > webhook items > endpoint`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** REST API endpoint

##### <a name="eventsources_webhook_items_method"></a>1.2.1.2. Property `argo-events > eventsources > webhook > webhook items > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** the desired action to be performed for a given resource.

##### <a name="eventsources_webhook_items_port"></a>1.2.1.3. Property `argo-events > eventsources > webhook > webhook items > port`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** the port on which HTTP server is listening for incoming events.

##### <a name="eventsources_webhook_items_url"></a>1.2.1.4. Property `argo-events > eventsources > webhook > webhook items > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** the url of the server

----------------------------------------------------------------------------------------------------------------------------
