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
| - [baseDomain](#baseDomain )         | No      | string | No         | -          | -                 |
| - [clusterName](#clusterName )       | No      | string | No         | -          | -                 |
| - [gatewayName](#gatewayName )       | No      | string | No         | -          | -                 |
| - [geoip](#geoip )                   | No      | object | No         | -          | -                 |

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

## <a name="baseDomain"></a>2. Property `envoy-gateway-resources > baseDomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="clusterName"></a>3. Property `envoy-gateway-resources > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="gatewayName"></a>4. Property `envoy-gateway-resources > gatewayName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="geoip"></a>5. Property `envoy-gateway-resources > geoip`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [blockedCountries](#geoip_blockedCountries )       | No      | array of string | No         | -          | -                 |
| - [blockedResponseBody](#geoip_blockedResponseBody ) | No      | string          | No         | -          | -                 |
| - [blockedStatusCode](#geoip_blockedStatusCode )     | No      | integer         | No         | -          | -                 |
| - [enabled](#geoip_enabled )                         | No      | boolean         | No         | -          | -                 |

### <a name="geoip_blockedCountries"></a>5.1. Property `envoy-gateway-resources > geoip > blockedCountries`

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

#### <a name="geoip_blockedCountries_items"></a>5.1.1. envoy-gateway-resources > geoip > blockedCountries > blockedCountries items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="geoip_blockedResponseBody"></a>5.2. Property `envoy-gateway-resources > geoip > blockedResponseBody`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="geoip_blockedStatusCode"></a>5.3. Property `envoy-gateway-resources > geoip > blockedStatusCode`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

### <a name="geoip_enabled"></a>5.4. Property `envoy-gateway-resources > geoip > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

----------------------------------------------------------------------------------------------------------------------------
