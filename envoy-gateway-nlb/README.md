# envoy-gateway-nlb

**Title:** envoy-gateway-nlb

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [additionalInternalNLBs](#additionalInternalNLBs ) | No      | array   | No         | -          | -                 |
| - [baseDomain](#baseDomain )                         | No      | string  | No         | -          | -                 |
| - [clusterName](#clusterName )                       | No      | string  | No         | -          | -                 |
| - [externalHostnamePrefix](#externalHostnamePrefix ) | No      | string  | No         | -          | -                 |
| - [gatewayName](#gatewayName )                       | No      | string  | No         | -          | -                 |
| - [gatewayNamespace](#gatewayNamespace )             | No      | string  | No         | -          | -                 |
| - [internal](#internal )                             | No      | object  | No         | -          | -                 |
| - [internalHostnamePrefix](#internalHostnamePrefix ) | No      | string  | No         | -          | -                 |
| - [proxyNamespace](#proxyNamespace )                 | No      | string  | No         | -          | -                 |
| - [proxyProtocolV2](#proxyProtocolV2 )               | No      | boolean | No         | -          | -                 |
| - [tags](#tags )                                     | No      | object  | No         | -          | -                 |

## <a name="additionalInternalNLBs"></a>1. Property `envoy-gateway-nlb > additionalInternalNLBs`

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

## <a name="baseDomain"></a>2. Property `envoy-gateway-nlb > baseDomain`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="clusterName"></a>3. Property `envoy-gateway-nlb > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="externalHostnamePrefix"></a>4. Property `envoy-gateway-nlb > externalHostnamePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="gatewayName"></a>5. Property `envoy-gateway-nlb > gatewayName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="gatewayNamespace"></a>6. Property `envoy-gateway-nlb > gatewayNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="internal"></a>7. Property `envoy-gateway-nlb > internal`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                        | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#internal_enabled ) | No      | boolean | No         | -          | -                 |

### <a name="internal_enabled"></a>7.1. Property `envoy-gateway-nlb > internal > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="internalHostnamePrefix"></a>8. Property `envoy-gateway-nlb > internalHostnamePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="proxyNamespace"></a>9. Property `envoy-gateway-nlb > proxyNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="proxyProtocolV2"></a>10. Property `envoy-gateway-nlb > proxyProtocolV2`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="tags"></a>11. Property `envoy-gateway-nlb > tags`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

----------------------------------------------------------------------------------------------------------------------------
