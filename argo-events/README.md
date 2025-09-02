# argo-events

**Title:** argo-events

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                         | Pattern | Type           | Deprecated | Definition | Title/Description                          |
| -------------------------------- | ------- | -------------- | ---------- | ---------- | ------------------------------------------ |
| - [eventbus](#eventbus )         | No      | object         | No         | -          | Event Bus Configuration                    |
| - [eventsources](#eventsources ) | No      | object         | No         | -          | Event Sources Configuration                |
| - [global](#global )             | No      | object or null | No         | -          | Global values shared between all subcharts |

## <a name="eventbus"></a>1. Property `argo-events > eventbus`

**Title:** Event Bus Configuration

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Configure various event bus for Argo Events

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description                  |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------- |
| - [jetstream](#eventbus_jetstream ) | No      | object | No         | -          | JetStream event bus configuration. |
| - [kafka](#eventbus_kafka )         | No      | object | No         | -          | Kafka event bus configuration.     |
| - [nats](#eventbus_nats )           | No      | object | No         | -          | NATs event bus configuration.      |

### <a name="eventbus_jetstream"></a>1.1. Property `argo-events > eventbus > jetstream`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** JetStream event bus configuration.

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventbus_jetstream_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventbus_jetstream_pattern1"></a>1.1.1. Pattern Property `argo-events > eventbus > jetstream > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type    | Deprecated | Definition | Title/Description                  |
| -------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ---------------------------------- |
| - [replicas](#eventbus_jetstream_pattern1_replicas )     | No      | integer | No         | -          | JetStream StatefulSet size         |
| - [version](#eventbus_jetstream_pattern1_version )       | No      | string  | No         | -          | JetStream version, such as “2.7.3” |
| - [](#eventbus_jetstream_pattern1_additionalProperties ) | No      | object  | No         | -          | -                                  |

##### <a name="eventbus_jetstream_pattern1_replicas"></a>1.1.1.1. Property `argo-events > eventbus > jetstream > ^.*$ > replicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** JetStream StatefulSet size

##### <a name="eventbus_jetstream_pattern1_version"></a>1.1.1.2. Property `argo-events > eventbus > jetstream > ^.*$ > version`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** JetStream version, such as “2.7.3”

### <a name="eventbus_kafka"></a>1.2. Property `argo-events > eventbus > kafka`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Kafka event bus configuration.

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventbus_kafka_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventbus_kafka_pattern1"></a>1.2.1. Pattern Property `argo-events > eventbus > kafka > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description                                      |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------ |
| - [url](#eventbus_kafka_pattern1_url )               | No      | string | No         | -          | URL to kafka cluster, multiple URLs separated by comma |
| - [](#eventbus_kafka_pattern1_additionalProperties ) | No      | object | No         | -          | -                                                      |

##### <a name="eventbus_kafka_pattern1_url"></a>1.2.1.1. Property `argo-events > eventbus > kafka > ^.*$ > url`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** URL to kafka cluster, multiple URLs separated by comma

### <a name="eventbus_nats"></a>1.3. Property `argo-events > eventbus > nats`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** NATs event bus configuration.

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventbus_nats_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventbus_nats_pattern1"></a>1.3.1. Pattern Property `argo-events > eventbus > nats > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description                              |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------- |
| - [exotic](#eventbus_nats_pattern1_exotic ) | No      | object | No         | -          | Exotic holds an exotic NATS config             |
| - [native](#eventbus_nats_pattern1_native ) | No      | object | No         | -          | Native means to bring up a native NATS service |

##### <a name="eventbus_nats_pattern1_exotic"></a>1.3.1.1. Property `argo-events > eventbus > nats > ^.*$ > exotic`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exotic holds an exotic NATS config

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [](#eventbus_nats_pattern1_exotic_additionalProperties ) | No      | object | No         | -          | -                 |

##### <a name="eventbus_nats_pattern1_native"></a>1.3.1.2. Property `argo-events > eventbus > nats > ^.*$ > native`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Native means to bring up a native NATS service

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [](#eventbus_nats_pattern1_native_additionalProperties ) | No      | object | No         | -          | -                 |

## <a name="eventsources"></a>2. Property `argo-events > eventsources`

**Title:** Event Sources Configuration

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** Configure various event sources for Argo Events

| Property                                                  | Pattern | Type    | Deprecated | Definition | Title/Description               |
| --------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------- |
| - [aws-sqs](#eventsources_aws-sqs )                       | No      | object  | No         | -          | SQS event source configuration. |
| - [isMixedEventSource](#eventsources_isMixedEventSource ) | No      | boolean | No         | -          | mixed event sources             |
| - [webhook](#eventsources_webhook )                       | No      | object  | No         | -          | an HTTP based EventSource       |

### <a name="eventsources_aws-sqs"></a>2.1. Property `argo-events > eventsources > aws-sqs`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** SQS event source configuration.

| Property                                  | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventsources_aws-sqs_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventsources_aws-sqs_pattern1"></a>2.1.1. Pattern Property `argo-events > eventsources > aws-sqs > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

| Property                                                             | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                         |
| -------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | --------------------------------------------------------------------------------------------------------- |
| + [queue](#eventsources_aws-sqs_pattern1_queue )                     | No      | string  | No         | -          | AWS SQS queue to listen to for messages                                                                   |
| + [region](#eventsources_aws-sqs_pattern1_region )                   | No      | string  | No         | -          | AWS region                                                                                                |
| + [waitTimeSeconds](#eventsources_aws-sqs_pattern1_waitTimeSeconds ) | No      | integer | No         | -          | The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. |

##### <a name="eventsources_aws-sqs_pattern1_queue"></a>2.1.1.1. Property `argo-events > eventsources > aws-sqs > ^.*$ > queue`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** AWS SQS queue to listen to for messages

##### <a name="eventsources_aws-sqs_pattern1_region"></a>2.1.1.2. Property `argo-events > eventsources > aws-sqs > ^.*$ > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** AWS region

##### <a name="eventsources_aws-sqs_pattern1_waitTimeSeconds"></a>2.1.1.3. Property `argo-events > eventsources > aws-sqs > ^.*$ > waitTimeSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | Yes       |

**Description:** The duration (in seconds) for which the call waits for a message to arrive in the queue before returning.

### <a name="eventsources_isMixedEventSource"></a>2.2. Property `argo-events > eventsources > isMixedEventSource`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |
| **Default**  | `false`   |

**Description:** mixed event sources

### <a name="eventsources_webhook"></a>2.3. Property `argo-events > eventsources > webhook`

|                           |             |
| ------------------------- | ----------- |
| **Type**                  | `object`    |
| **Required**              | No          |
| **Additional properties** | Not allowed |

**Description:** an HTTP based EventSource

| Property                                  | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#eventsources_webhook_pattern1 ) | Yes     | object | No         | -          | -                 |

#### <a name="eventsources_webhook_pattern1"></a>2.3.1. Pattern Property `argo-events > eventsources > webhook > ^.*$`
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

##### <a name="eventsources_webhook_pattern1_endpoint"></a>2.3.1.1. Property `argo-events > eventsources > webhook > ^.*$ > endpoint`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** URL path where the webhook will receive events

##### <a name="eventsources_webhook_pattern1_method"></a>2.3.1.2. Property `argo-events > eventsources > webhook > ^.*$ > method`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** HTTP method allowed for the webhook (GET, POST, PUT, PATCH, DELETE, HEAD, OPTIONS)

##### <a name="eventsources_webhook_pattern1_port"></a>2.3.1.3. Property `argo-events > eventsources > webhook > ^.*$ > port`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Port on which the webhook server will listen

## <a name="global"></a>3. Property `argo-events > global`

|              |                  |
| ------------ | ---------------- |
| **Type**     | `object or null` |
| **Required** | No               |

**Description:** Global values shared between all subcharts

----------------------------------------------------------------------------------------------------------------------------
