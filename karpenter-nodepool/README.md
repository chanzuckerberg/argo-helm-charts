# karpenter-nodepool

**Title:** karpenter-nodepool

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [clusterName](#clusterName ) | No      | string | No         | -          | -                 |
| - [nodeclass](#nodeclass )     | No      | object | No         | -          | -                 |
| - [nodepool](#nodepool )       | No      | object | No         | -          | -                 |

## <a name="clusterName"></a>1. Property `karpenter-nodepool > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="nodeclass"></a>2. Property `karpenter-nodepool > nodeclass`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                               | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [amiFamily](#nodeclass_amiFamily )                                   | No      | string          | No         | -          | -                 |
| - [amiSelectorTerms](#nodeclass_amiSelectorTerms )                     | No      | array of object | No         | -          | -                 |
| - [annotations](#nodeclass_annotations )                               | No      | object          | No         | -          | -                 |
| - [enabled](#nodeclass_enabled )                                       | No      | boolean         | No         | -          | -                 |
| - [kubelet](#nodeclass_kubelet )                                       | No      | object          | No         | -          | -                 |
| - [name](#nodeclass_name )                                             | No      | string          | No         | -          | -                 |
| - [role](#nodeclass_role )                                             | No      | string          | No         | -          | -                 |
| - [securityGroupSelectorTerms](#nodeclass_securityGroupSelectorTerms ) | No      | array           | No         | -          | -                 |
| - [subnetSelectorTerms](#nodeclass_subnetSelectorTerms )               | No      | array           | No         | -          | -                 |
| - [tags](#nodeclass_tags )                                             | No      | object          | No         | -          | -                 |
| - [volumeSizeGi](#nodeclass_volumeSizeGi )                             | No      | integer         | No         | -          | -                 |

### <a name="nodeclass_amiFamily"></a>2.1. Property `karpenter-nodepool > nodeclass > amiFamily`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodeclass_amiSelectorTerms"></a>2.2. Property `karpenter-nodepool > nodeclass > amiSelectorTerms`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                             | Description |
| ----------------------------------------------------------- | ----------- |
| [amiSelectorTerms items](#nodeclass_amiSelectorTerms_items) | -           |

#### <a name="nodeclass_amiSelectorTerms_items"></a>2.2.1. karpenter-nodepool > nodeclass > amiSelectorTerms > amiSelectorTerms items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [alias](#nodeclass_amiSelectorTerms_items_alias ) | No      | string | No         | -          | -                 |

##### <a name="nodeclass_amiSelectorTerms_items_alias"></a>2.2.1.1. Property `karpenter-nodepool > nodeclass > amiSelectorTerms > amiSelectorTerms items > alias`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodeclass_annotations"></a>2.3. Property `karpenter-nodepool > nodeclass > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="nodeclass_enabled"></a>2.4. Property `karpenter-nodepool > nodeclass > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="nodeclass_kubelet"></a>2.5. Property `karpenter-nodepool > nodeclass > kubelet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [podsPerCore](#nodeclass_kubelet_podsPerCore )       | No      | integer | No         | -          | -                 |
| - [systemReserved](#nodeclass_kubelet_systemReserved ) | No      | object  | No         | -          | -                 |

#### <a name="nodeclass_kubelet_podsPerCore"></a>2.5.1. Property `karpenter-nodepool > nodeclass > kubelet > podsPerCore`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

#### <a name="nodeclass_kubelet_systemReserved"></a>2.5.2. Property `karpenter-nodepool > nodeclass > kubelet > systemReserved`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#nodeclass_kubelet_systemReserved_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#nodeclass_kubelet_systemReserved_memory ) | No      | string | No         | -          | -                 |

##### <a name="nodeclass_kubelet_systemReserved_cpu"></a>2.5.2.1. Property `karpenter-nodepool > nodeclass > kubelet > systemReserved > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodeclass_kubelet_systemReserved_memory"></a>2.5.2.2. Property `karpenter-nodepool > nodeclass > kubelet > systemReserved > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodeclass_name"></a>2.6. Property `karpenter-nodepool > nodeclass > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodeclass_role"></a>2.7. Property `karpenter-nodepool > nodeclass > role`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodeclass_securityGroupSelectorTerms"></a>2.8. Property `karpenter-nodepool > nodeclass > securityGroupSelectorTerms`

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

### <a name="nodeclass_subnetSelectorTerms"></a>2.9. Property `karpenter-nodepool > nodeclass > subnetSelectorTerms`

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

### <a name="nodeclass_tags"></a>2.10. Property `karpenter-nodepool > nodeclass > tags`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="nodeclass_volumeSizeGi"></a>2.11. Property `karpenter-nodepool > nodeclass > volumeSizeGi`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

## <a name="nodepool"></a>3. Property `karpenter-nodepool > nodepool`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type            | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [annotations](#nodepool_annotations ) | No      | object          | No         | -          | -                 |
| - [disruption](#nodepool_disruption )   | No      | object          | No         | -          | -                 |
| - [enabled](#nodepool_enabled )         | No      | boolean         | No         | -          | -                 |
| - [limits](#nodepool_limits )           | No      | object          | No         | -          | -                 |
| - [name](#nodepool_name )               | No      | string          | No         | -          | -                 |
| - [template](#nodepool_template )       | No      | object          | No         | -          | -                 |
| - [weight](#nodepool_weight )           | No      | integer or null | No         | -          | -                 |

### <a name="nodepool_annotations"></a>3.1. Property `karpenter-nodepool > nodepool > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="nodepool_disruption"></a>3.2. Property `karpenter-nodepool > nodepool > disruption`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [budgets](#nodepool_disruption_budgets )                         | No      | array  | No         | -          | -                 |
| - [consolidateAfter](#nodepool_disruption_consolidateAfter )       | No      | string | No         | -          | -                 |
| - [consolidationPolicy](#nodepool_disruption_consolidationPolicy ) | No      | string | No         | -          | -                 |

#### <a name="nodepool_disruption_budgets"></a>3.2.1. Property `karpenter-nodepool > nodepool > disruption > budgets`

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

#### <a name="nodepool_disruption_consolidateAfter"></a>3.2.2. Property `karpenter-nodepool > nodepool > disruption > consolidateAfter`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="nodepool_disruption_consolidationPolicy"></a>3.2.3. Property `karpenter-nodepool > nodepool > disruption > consolidationPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodepool_enabled"></a>3.3. Property `karpenter-nodepool > nodepool > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="nodepool_limits"></a>3.4. Property `karpenter-nodepool > nodepool > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="nodepool_name"></a>3.5. Property `karpenter-nodepool > nodepool > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodepool_template"></a>3.6. Property `karpenter-nodepool > nodepool > template`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [metadata](#nodepool_template_metadata ) | No      | object | No         | -          | -                 |
| - [spec](#nodepool_template_spec )         | No      | object | No         | -          | -                 |

#### <a name="nodepool_template_metadata"></a>3.6.1. Property `karpenter-nodepool > nodepool > template > metadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [annotations](#nodepool_template_metadata_annotations ) | No      | object | No         | -          | -                 |
| - [labels](#nodepool_template_metadata_labels )           | No      | object | No         | -          | -                 |

##### <a name="nodepool_template_metadata_annotations"></a>3.6.1.1. Property `karpenter-nodepool > nodepool > template > metadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

##### <a name="nodepool_template_metadata_labels"></a>3.6.1.2. Property `karpenter-nodepool > nodepool > template > metadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

#### <a name="nodepool_template_spec"></a>3.6.2. Property `karpenter-nodepool > nodepool > template > spec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                    | Pattern | Type            | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [expireAfter](#nodepool_template_spec_expireAfter )                       | No      | string          | No         | -          | -                 |
| - [nodeClassRef](#nodepool_template_spec_nodeClassRef )                     | No      | object          | No         | -          | -                 |
| - [requirements](#nodepool_template_spec_requirements )                     | No      | array of object | No         | -          | -                 |
| - [startupTaints](#nodepool_template_spec_startupTaints )                   | No      | array           | No         | -          | -                 |
| - [taints](#nodepool_template_spec_taints )                                 | No      | array           | No         | -          | -                 |
| - [terminationGracePeriod](#nodepool_template_spec_terminationGracePeriod ) | No      | string          | No         | -          | -                 |

##### <a name="nodepool_template_spec_expireAfter"></a>3.6.2.1. Property `karpenter-nodepool > nodepool > template > spec > expireAfter`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodepool_template_spec_nodeClassRef"></a>3.6.2.2. Property `karpenter-nodepool > nodepool > template > spec > nodeClassRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [group](#nodepool_template_spec_nodeClassRef_group ) | No      | string | No         | -          | -                 |
| - [kind](#nodepool_template_spec_nodeClassRef_kind )   | No      | string | No         | -          | -                 |
| - [name](#nodepool_template_spec_nodeClassRef_name )   | No      | string | No         | -          | -                 |

###### <a name="nodepool_template_spec_nodeClassRef_group"></a>3.6.2.2.1. Property `karpenter-nodepool > nodepool > template > spec > nodeClassRef > group`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_nodeClassRef_kind"></a>3.6.2.2.2. Property `karpenter-nodepool > nodepool > template > spec > nodeClassRef > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_nodeClassRef_name"></a>3.6.2.2.3. Property `karpenter-nodepool > nodepool > template > spec > nodeClassRef > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodepool_template_spec_requirements"></a>3.6.2.3. Property `karpenter-nodepool > nodepool > template > spec > requirements`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                  | Description |
| ---------------------------------------------------------------- | ----------- |
| [requirements items](#nodepool_template_spec_requirements_items) | -           |

###### <a name="nodepool_template_spec_requirements_items"></a>3.6.2.3.1. karpenter-nodepool > nodepool > template > spec > requirements > requirements items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                           | Pattern | Type            | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------ | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [key](#nodepool_template_spec_requirements_items_key )           | No      | string          | No         | -          | -                 |
| - [operator](#nodepool_template_spec_requirements_items_operator ) | No      | string          | No         | -          | -                 |
| - [values](#nodepool_template_spec_requirements_items_values )     | No      | array of string | No         | -          | -                 |

###### <a name="nodepool_template_spec_requirements_items_key"></a>3.6.2.3.1.1. Property `karpenter-nodepool > nodepool > template > spec > requirements > requirements items > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_requirements_items_operator"></a>3.6.2.3.1.2. Property `karpenter-nodepool > nodepool > template > spec > requirements > requirements items > operator`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_requirements_items_values"></a>3.6.2.3.1.3. Property `karpenter-nodepool > nodepool > template > spec > requirements > requirements items > values`

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

| Each item of this array must be                                         | Description |
| ----------------------------------------------------------------------- | ----------- |
| [values items](#nodepool_template_spec_requirements_items_values_items) | -           |

###### <a name="nodepool_template_spec_requirements_items_values_items"></a>3.6.2.3.1.3.1. karpenter-nodepool > nodepool > template > spec > requirements > requirements items > values > values items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodepool_template_spec_startupTaints"></a>3.6.2.4. Property `karpenter-nodepool > nodepool > template > spec > startupTaints`

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

##### <a name="nodepool_template_spec_taints"></a>3.6.2.5. Property `karpenter-nodepool > nodepool > template > spec > taints`

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

##### <a name="nodepool_template_spec_terminationGracePeriod"></a>3.6.2.6. Property `karpenter-nodepool > nodepool > template > spec > terminationGracePeriod`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodepool_weight"></a>3.7. Property `karpenter-nodepool > nodepool > weight`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `integer or null` |
| **Required** | No                |

| Restrictions |          |
| ------------ | -------- |
| **Minimum**  | &ge; 1   |
| **Maximum**  | &le; 100 |

----------------------------------------------------------------------------------------------------------------------------
