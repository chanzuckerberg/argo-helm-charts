# envoy-gateway-resources

**Title:** envoy-gateway-resources

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [alternateNames](#alternateNames ) | No      | array  | No         | -          | -                 |
| - [autoscaling](#autoscaling )       | No      | object | No         | -          | -                 |
| - [awsRegion](#awsRegion )           | No      | string | No         | -          | -                 |
| - [baseDomain](#baseDomain )         | No      | string | No         | -          | -                 |
| - [envoyService](#envoyService )     | No      | object | No         | -          | -                 |
| - [gatewayName](#gatewayName )       | No      | string | No         | -          | -                 |
| - [geoip](#geoip )                   | No      | object | No         | -          | -                 |
| - [listenerSets](#listenerSets )     | No      | object | No         | -          | -                 |
| - [proxyProtocol](#proxyProtocol )   | No      | object | No         | -          | -                 |
| - [resources](#resources )           | No      | object | No         | -          | -                 |
| - [serviceAccount](#serviceAccount ) | No      | object | No         | -          | -                 |
| - [tlsPassthrough](#tlsPassthrough ) | No      | object | No         | -          | -                 |

## <a name="alternateNames"></a>1. Property `envoy-gateway-resources > alternateNames`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

## <a name="autoscaling"></a>2. Property `envoy-gateway-resources > autoscaling`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                         | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#autoscaling_enabled )                                               | No      | boolean | No         | -          | -                 |
| - [maxReplicas](#autoscaling_maxReplicas )                                       | No      | integer | No         | -          | -                 |
| - [minReplicas](#autoscaling_minReplicas )                                       | No      | integer | No         | -          | -                 |
| - [targetCPUUtilizationPercentage](#autoscaling_targetCPUUtilizationPercentage ) | No      | integer | No         | -          | -                 |

### <a name="autoscaling_enabled"></a>2.1. Property `envoy-gateway-resources > autoscaling > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="autoscaling_maxReplicas"></a>2.2. Property `envoy-gateway-resources > autoscaling > maxReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

### <a name="autoscaling_minReplicas"></a>2.3. Property `envoy-gateway-resources > autoscaling > minReplicas`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

### <a name="autoscaling_targetCPUUtilizationPercentage"></a>2.4. Property `envoy-gateway-resources > autoscaling > targetCPUUtilizationPercentage`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

## <a name="awsRegion"></a>3. Property `envoy-gateway-resources > awsRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="baseDomain"></a>4. Property `envoy-gateway-resources > baseDomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="envoyService"></a>5. Property `envoy-gateway-resources > envoyService`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [type](#envoyService_type ) | No      | string | No         | -          | -                 |

### <a name="envoyService_type"></a>5.1. Property `envoy-gateway-resources > envoyService > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="gatewayName"></a>6. Property `envoy-gateway-resources > gatewayName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="geoip"></a>7. Property `envoy-gateway-resources > geoip`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [blockedCountries](#geoip_blockedCountries ) | No      | array of string | No         | -          | -                 |
| - [enabled](#geoip_enabled )                   | No      | boolean         | No         | -          | -                 |

### <a name="geoip_blockedCountries"></a>7.1. Property `envoy-gateway-resources > geoip > blockedCountries`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                         | Description |
| ------------------------------------------------------- | ----------- |
| [blockedCountries items](#geoip_blockedCountries_items) | -           |

#### <a name="geoip_blockedCountries_items"></a>7.1.1. envoy-gateway-resources > geoip > blockedCountries > blockedCountries items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="geoip_enabled"></a>7.2. Property `envoy-gateway-resources > geoip > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="listenerSets"></a>8. Property `envoy-gateway-resources > listenerSets`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#listenerSets_enabled )                     | No      | boolean | No         | -          | -                 |
| - [from](#listenerSets_from )                           | No      | string  | No         | -          | -                 |
| - [namespaceSelector](#listenerSets_namespaceSelector ) | No      | object  | No         | -          | -                 |

### <a name="listenerSets_enabled"></a>8.1. Property `envoy-gateway-resources > listenerSets > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="listenerSets_from"></a>8.2. Property `envoy-gateway-resources > listenerSets > from`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="listenerSets_namespaceSelector"></a>8.3. Property `envoy-gateway-resources > listenerSets > namespaceSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="proxyProtocol"></a>9. Property `envoy-gateway-resources > proxyProtocol`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                               | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#proxyProtocol_enabled )   | No      | boolean | No         | -          | -                 |
| - [optional](#proxyProtocol_optional ) | No      | boolean | No         | -          | -                 |

### <a name="proxyProtocol_enabled"></a>9.1. Property `envoy-gateway-resources > proxyProtocol > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="proxyProtocol_optional"></a>9.2. Property `envoy-gateway-resources > proxyProtocol > optional`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="resources"></a>10. Property `envoy-gateway-resources > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#resources_requests ) | No      | object | No         | -          | -                 |

### <a name="resources_limits"></a>10.1. Property `envoy-gateway-resources > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [memory](#resources_limits_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_limits_memory"></a>10.1.1. Property `envoy-gateway-resources > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="resources_requests"></a>10.2. Property `envoy-gateway-resources > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_requests_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_requests_cpu"></a>10.2.1. Property `envoy-gateway-resources > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_requests_memory"></a>10.2.2. Property `envoy-gateway-resources > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="serviceAccount"></a>11. Property `envoy-gateway-resources > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [annotations](#serviceAccount_annotations ) | No      | object | No         | -          | -                 |
| - [name](#serviceAccount_name )               | No      | string | No         | -          | -                 |

### <a name="serviceAccount_annotations"></a>11.1. Property `envoy-gateway-resources > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="serviceAccount_name"></a>11.2. Property `envoy-gateway-resources > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="tlsPassthrough"></a>12. Property `envoy-gateway-resources > tlsPassthrough`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                  | Pattern | Type    | Deprecated | Definition | Title/Description |
| ----------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#tlsPassthrough_enabled )     | No      | boolean | No         | -          | -                 |
| - [hostnames](#tlsPassthrough_hostnames ) | No      | array   | No         | -          | -                 |

### <a name="tlsPassthrough_enabled"></a>12.1. Property `envoy-gateway-resources > tlsPassthrough > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="tlsPassthrough_hostnames"></a>12.2. Property `envoy-gateway-resources > tlsPassthrough > hostnames`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

----------------------------------------------------------------------------------------------------------------------------
