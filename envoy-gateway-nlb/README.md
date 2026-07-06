# envoy-gateway-nlb

**Title:** envoy-gateway-nlb

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type             | Deprecated | Definition | Title/Description                                                                                                                                                                          |
| ---------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| - [additionalInternalNLBs](#additionalInternalNLBs ) | No      | array            | No         | -          | -                                                                                                                                                                                          |
| - [baseDomain](#baseDomain )                         | No      | string           | No         | -          | -                                                                                                                                                                                          |
| - [crossZone](#crossZone )                           | No      | boolean          | No         | -          | -                                                                                                                                                                                          |
| - [deletionProtection](#deletionProtection )         | No      | boolean          | No         | -          | Enable NLB deletion protection. While enabled, deleting or recreating the Service strands the NLB in Terminating, so set this false and let it sync before any Service delete or recreate. |
| - [externalHostnamePrefix](#externalHostnamePrefix ) | No      | string           | No         | -          | -                                                                                                                                                                                          |
| - [externalTargetType](#externalTargetType )         | No      | enum (of string) | No         | -          | -                                                                                                                                                                                          |
| - [gatewayName](#gatewayName )                       | No      | string           | No         | -          | -                                                                                                                                                                                          |
| - [gatewayNamespace](#gatewayNamespace )             | No      | string           | No         | -          | -                                                                                                                                                                                          |
| - [internal](#internal )                             | No      | object           | No         | -          | -                                                                                                                                                                                          |
| - [internalHostnamePrefix](#internalHostnamePrefix ) | No      | string           | No         | -          | -                                                                                                                                                                                          |
| - [proxyNamespace](#proxyNamespace )                 | No      | string           | No         | -          | -                                                                                                                                                                                          |
| - [proxyProtocolV2](#proxyProtocolV2 )               | No      | boolean          | No         | -          | -                                                                                                                                                                                          |
| - [tags](#tags )                                     | No      | object           | No         | -          | -                                                                                                                                                                                          |
| - [targetGroup](#targetGroup )                       | No      | object           | No         | -          | -                                                                                                                                                                                          |

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

## <a name="crossZone"></a>3. Property `envoy-gateway-nlb > crossZone`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="deletionProtection"></a>4. Property `envoy-gateway-nlb > deletionProtection`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable NLB deletion protection. While enabled, deleting or recreating the Service strands the NLB in Terminating, so set this false and let it sync before any Service delete or recreate.

## <a name="externalHostnamePrefix"></a>5. Property `envoy-gateway-nlb > externalHostnamePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="externalTargetType"></a>6. Property `envoy-gateway-nlb > externalTargetType`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "instance"
* "ip"

## <a name="gatewayName"></a>7. Property `envoy-gateway-nlb > gatewayName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="gatewayNamespace"></a>8. Property `envoy-gateway-nlb > gatewayNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="internal"></a>9. Property `envoy-gateway-nlb > internal`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                        | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#internal_enabled ) | No      | boolean | No         | -          | -                 |

### <a name="internal_enabled"></a>9.1. Property `envoy-gateway-nlb > internal > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="internalHostnamePrefix"></a>10. Property `envoy-gateway-nlb > internalHostnamePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="proxyNamespace"></a>11. Property `envoy-gateway-nlb > proxyNamespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="proxyProtocolV2"></a>12. Property `envoy-gateway-nlb > proxyProtocolV2`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="tags"></a>13. Property `envoy-gateway-nlb > tags`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="targetGroup"></a>14. Property `envoy-gateway-nlb > targetGroup`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                             | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [unhealthyConnectionTermination](#targetGroup_unhealthyConnectionTermination )     | No      | boolean | No         | -          | -                 |
| - [unhealthyDrainingIntervalSeconds](#targetGroup_unhealthyDrainingIntervalSeconds ) | No      | integer | No         | -          | -                 |

### <a name="targetGroup_unhealthyConnectionTermination"></a>14.1. Property `envoy-gateway-nlb > targetGroup > unhealthyConnectionTermination`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="targetGroup_unhealthyDrainingIntervalSeconds"></a>14.2. Property `envoy-gateway-nlb > targetGroup > unhealthyDrainingIntervalSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

----------------------------------------------------------------------------------------------------------------------------
