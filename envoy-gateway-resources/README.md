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
| - [awsRegion](#awsRegion )           | No      | string | No         | -          | -                 |
| - [baseDomain](#baseDomain )         | No      | string | No         | -          | -                 |
| - [clusterName](#clusterName )       | No      | string | No         | -          | -                 |
| - [envoyService](#envoyService )     | No      | object | No         | -          | -                 |
| - [gatewayName](#gatewayName )       | No      | string | No         | -          | -                 |
| - [geoip](#geoip )                   | No      | object | No         | -          | -                 |
| - [proxyProtocol](#proxyProtocol )   | No      | object | No         | -          | -                 |
| - [serviceAccount](#serviceAccount ) | No      | object | No         | -          | -                 |

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

## <a name="awsRegion"></a>2. Property `envoy-gateway-resources > awsRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="baseDomain"></a>3. Property `envoy-gateway-resources > baseDomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="clusterName"></a>4. Property `envoy-gateway-resources > clusterName`

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

## <a name="proxyProtocol"></a>8. Property `envoy-gateway-resources > proxyProtocol`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                               | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#proxyProtocol_enabled )   | No      | boolean | No         | -          | -                 |
| - [optional](#proxyProtocol_optional ) | No      | boolean | No         | -          | -                 |

### <a name="proxyProtocol_enabled"></a>8.1. Property `envoy-gateway-resources > proxyProtocol > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="proxyProtocol_optional"></a>8.2. Property `envoy-gateway-resources > proxyProtocol > optional`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="serviceAccount"></a>9. Property `envoy-gateway-resources > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [annotations](#serviceAccount_annotations ) | No      | object | No         | -          | -                 |
| - [name](#serviceAccount_name )               | No      | string | No         | -          | -                 |

### <a name="serviceAccount_annotations"></a>9.1. Property `envoy-gateway-resources > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="serviceAccount_name"></a>9.2. Property `envoy-gateway-resources > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

----------------------------------------------------------------------------------------------------------------------------
