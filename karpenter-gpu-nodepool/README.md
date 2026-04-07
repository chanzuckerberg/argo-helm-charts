# karpenter-gpu-nodepool

**Title:** karpenter-gpu-nodepool

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [dcgmExporter](#dcgmExporter )   | No      | object | No         | -          | -                 |
| - [nodeReadiness](#nodeReadiness ) | No      | object | No         | -          | -                 |
| - [nodepool](#nodepool )           | No      | object | No         | -          | -                 |
| - [nvidiaDriver](#nvidiaDriver )   | No      | object | No         | -          | -                 |
| - [priorityClass](#priorityClass ) | No      | object | No         | -          | -                 |

## <a name="dcgmExporter"></a>1. Property `karpenter-gpu-nodepool > dcgmExporter`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type            | Deprecated | Definition | Title/Description                                                                                                             |
| --------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------- |
| - [enabled](#dcgmExporter_enabled )                 | No      | boolean         | No         | -          | Deploy DCGM metrics exporter. Defaults to the same value as nvidiaDriver.enabled. Ignored when nvidiaDriver.enabled is false. |
| - [image](#dcgmExporter_image )                     | No      | object          | No         | -          | -                                                                                                                             |
| - [listenPort](#dcgmExporter_listenPort )           | No      | integer         | No         | -          | Container and Service port for Prometheus metrics (Alloy expects port name gpu-metrics).                                      |
| - [name](#dcgmExporter_name )                       | No      | string          | No         | -          | Name of the DCGM exporter DaemonSet and Service.                                                                              |
| - [nodeSelector](#dcgmExporter_nodeSelector )       | No      | object          | No         | -          | -                                                                                                                             |
| - [resources](#dcgmExporter_resources )             | No      | object          | No         | -          | -                                                                                                                             |
| - [securityContext](#dcgmExporter_securityContext ) | No      | object          | No         | -          | -                                                                                                                             |
| - [updateStrategy](#dcgmExporter_updateStrategy )   | No      | object          | No         | -          | -                                                                                                                             |
| - [volumeMounts](#dcgmExporter_volumeMounts )       | No      | array of object | No         | -          | -                                                                                                                             |
| - [volumes](#dcgmExporter_volumes )                 | No      | array of object | No         | -          | -                                                                                                                             |

### <a name="dcgmExporter_enabled"></a>1.1. Property `karpenter-gpu-nodepool > dcgmExporter > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Deploy DCGM metrics exporter. Defaults to the same value as nvidiaDriver.enabled. Ignored when nvidiaDriver.enabled is false.

### <a name="dcgmExporter_image"></a>1.2. Property `karpenter-gpu-nodepool > dcgmExporter > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [pullPolicy](#dcgmExporter_image_pullPolicy ) | No      | string | No         | -          | Image pull policy (IfNotPresent, Always, or Never). |
| - [repository](#dcgmExporter_image_repository ) | No      | string | No         | -          | DCGM exporter image repository.                     |
| - [tag](#dcgmExporter_image_tag )               | No      | string | No         | -          | DCGM exporter image tag.                            |

#### <a name="dcgmExporter_image_pullPolicy"></a>1.2.1. Property `karpenter-gpu-nodepool > dcgmExporter > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image pull policy (IfNotPresent, Always, or Never).

#### <a name="dcgmExporter_image_repository"></a>1.2.2. Property `karpenter-gpu-nodepool > dcgmExporter > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** DCGM exporter image repository.

#### <a name="dcgmExporter_image_tag"></a>1.2.3. Property `karpenter-gpu-nodepool > dcgmExporter > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** DCGM exporter image tag.

### <a name="dcgmExporter_listenPort"></a>1.3. Property `karpenter-gpu-nodepool > dcgmExporter > listenPort`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Container and Service port for Prometheus metrics (Alloy expects port name gpu-metrics).

### <a name="dcgmExporter_name"></a>1.4. Property `karpenter-gpu-nodepool > dcgmExporter > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the DCGM exporter DaemonSet and Service.

### <a name="dcgmExporter_nodeSelector"></a>1.5. Property `karpenter-gpu-nodepool > dcgmExporter > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                                                                              |
| ---------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------------------------------------------------------------------------------- |
| - [karpenter.k8s.aws/instance-gpu-manufacturer](#dcgmExporter_nodeSelector_karpenterk8saws/instance-gpu-manufacturer ) | No      | string | No         | -          | Restrict DCGM pods to GPU nodes. Merged with nvidiaDriver.nodeSelector. Override for non-AWS or custom labels. |

#### <a name="dcgmExporter_nodeSelector_karpenterk8saws/instance-gpu-manufacturer"></a>1.5.1. Property `karpenter-gpu-nodepool > dcgmExporter > nodeSelector > karpenter.k8s.aws/instance-gpu-manufacturer`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Restrict DCGM pods to GPU nodes. Merged with nvidiaDriver.nodeSelector. Override for non-AWS or custom labels.

### <a name="dcgmExporter_resources"></a>1.6. Property `karpenter-gpu-nodepool > dcgmExporter > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#dcgmExporter_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#dcgmExporter_resources_requests ) | No      | object | No         | -          | -                 |

#### <a name="dcgmExporter_resources_limits"></a>1.6.1. Property `karpenter-gpu-nodepool > dcgmExporter > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#dcgmExporter_resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#dcgmExporter_resources_limits_memory ) | No      | string | No         | -          | -                 |

##### <a name="dcgmExporter_resources_limits_cpu"></a>1.6.1.1. Property `karpenter-gpu-nodepool > dcgmExporter > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="dcgmExporter_resources_limits_memory"></a>1.6.1.2. Property `karpenter-gpu-nodepool > dcgmExporter > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="dcgmExporter_resources_requests"></a>1.6.2. Property `karpenter-gpu-nodepool > dcgmExporter > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#dcgmExporter_resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#dcgmExporter_resources_requests_memory ) | No      | string | No         | -          | -                 |

##### <a name="dcgmExporter_resources_requests_cpu"></a>1.6.2.1. Property `karpenter-gpu-nodepool > dcgmExporter > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="dcgmExporter_resources_requests_memory"></a>1.6.2.2. Property `karpenter-gpu-nodepool > dcgmExporter > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="dcgmExporter_securityContext"></a>1.7. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                              | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [allowPrivilegeEscalation](#dcgmExporter_securityContext_allowPrivilegeEscalation ) | No      | boolean | No         | -          | -                 |
| - [capabilities](#dcgmExporter_securityContext_capabilities )                         | No      | object  | No         | -          | -                 |
| - [runAsNonRoot](#dcgmExporter_securityContext_runAsNonRoot )                         | No      | boolean | No         | -          | -                 |
| - [runAsUser](#dcgmExporter_securityContext_runAsUser )                               | No      | integer | No         | -          | -                 |

#### <a name="dcgmExporter_securityContext_allowPrivilegeEscalation"></a>1.7.1. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext > allowPrivilegeEscalation`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="dcgmExporter_securityContext_capabilities"></a>1.7.2. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext > capabilities`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [add](#dcgmExporter_securityContext_capabilities_add )   | No      | array of string | No         | -          | -                 |
| - [drop](#dcgmExporter_securityContext_capabilities_drop ) | No      | array of string | No         | -          | -                 |

##### <a name="dcgmExporter_securityContext_capabilities_add"></a>1.7.2.1. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext > capabilities > add`

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

| Each item of this array must be                                   | Description |
| ----------------------------------------------------------------- | ----------- |
| [add items](#dcgmExporter_securityContext_capabilities_add_items) | -           |

###### <a name="dcgmExporter_securityContext_capabilities_add_items"></a>1.7.2.1.1. karpenter-gpu-nodepool > dcgmExporter > securityContext > capabilities > add > add items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="dcgmExporter_securityContext_capabilities_drop"></a>1.7.2.2. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext > capabilities > drop`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [drop items](#dcgmExporter_securityContext_capabilities_drop_items) | -           |

###### <a name="dcgmExporter_securityContext_capabilities_drop_items"></a>1.7.2.2.1. karpenter-gpu-nodepool > dcgmExporter > securityContext > capabilities > drop > drop items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="dcgmExporter_securityContext_runAsNonRoot"></a>1.7.3. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext > runAsNonRoot`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="dcgmExporter_securityContext_runAsUser"></a>1.7.4. Property `karpenter-gpu-nodepool > dcgmExporter > securityContext > runAsUser`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

### <a name="dcgmExporter_updateStrategy"></a>1.8. Property `karpenter-gpu-nodepool > dcgmExporter > updateStrategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [type](#dcgmExporter_updateStrategy_type ) | No      | string | No         | -          | -                 |

#### <a name="dcgmExporter_updateStrategy_type"></a>1.8.1. Property `karpenter-gpu-nodepool > dcgmExporter > updateStrategy > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="dcgmExporter_volumeMounts"></a>1.9. Property `karpenter-gpu-nodepool > dcgmExporter > volumeMounts`

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

| Each item of this array must be                        | Description |
| ------------------------------------------------------ | ----------- |
| [volumeMounts items](#dcgmExporter_volumeMounts_items) | -           |

#### <a name="dcgmExporter_volumeMounts_items"></a>1.9.1. karpenter-gpu-nodepool > dcgmExporter > volumeMounts > volumeMounts items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [mountPath](#dcgmExporter_volumeMounts_items_mountPath ) | No      | string  | No         | -          | -                 |
| - [name](#dcgmExporter_volumeMounts_items_name )           | No      | string  | No         | -          | -                 |
| - [readOnly](#dcgmExporter_volumeMounts_items_readOnly )   | No      | boolean | No         | -          | -                 |

##### <a name="dcgmExporter_volumeMounts_items_mountPath"></a>1.9.1.1. Property `karpenter-gpu-nodepool > dcgmExporter > volumeMounts > volumeMounts items > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="dcgmExporter_volumeMounts_items_name"></a>1.9.1.2. Property `karpenter-gpu-nodepool > dcgmExporter > volumeMounts > volumeMounts items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="dcgmExporter_volumeMounts_items_readOnly"></a>1.9.1.3. Property `karpenter-gpu-nodepool > dcgmExporter > volumeMounts > volumeMounts items > readOnly`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="dcgmExporter_volumes"></a>1.10. Property `karpenter-gpu-nodepool > dcgmExporter > volumes`

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

| Each item of this array must be              | Description |
| -------------------------------------------- | ----------- |
| [volumes items](#dcgmExporter_volumes_items) | -           |

#### <a name="dcgmExporter_volumes_items"></a>1.10.1. karpenter-gpu-nodepool > dcgmExporter > volumes > volumes items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [hostPath](#dcgmExporter_volumes_items_hostPath ) | No      | object | No         | -          | -                 |
| - [name](#dcgmExporter_volumes_items_name )         | No      | string | No         | -          | -                 |

##### <a name="dcgmExporter_volumes_items_hostPath"></a>1.10.1.1. Property `karpenter-gpu-nodepool > dcgmExporter > volumes > volumes items > hostPath`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#dcgmExporter_volumes_items_hostPath_path ) | No      | string | No         | -          | -                 |

###### <a name="dcgmExporter_volumes_items_hostPath_path"></a>1.10.1.1.1. Property `karpenter-gpu-nodepool > dcgmExporter > volumes > volumes items > hostPath > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="dcgmExporter_volumes_items_name"></a>1.10.1.2. Property `karpenter-gpu-nodepool > dcgmExporter > volumes > volumes items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="nodeReadiness"></a>2. Property `karpenter-gpu-nodepool > nodeReadiness`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type    | Deprecated | Definition | Title/Description                                                                                                   |
| ---------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------------------------------------- |
| - [enabled](#nodeReadiness_enabled )                 | No      | boolean | No         | -          | Deploy a DaemonSet that removes the nvidia.com/gpu-not-ready startup taint once nvidia-smi reports GPUs as healthy. |
| - [image](#nodeReadiness_image )                     | No      | object  | No         | -          | -                                                                                                                   |
| - [name](#nodeReadiness_name )                       | No      | string  | No         | -          | Name for the DaemonSet, ServiceAccount, ClusterRole, and ClusterRoleBinding.                                        |
| - [nodeSelector](#nodeReadiness_nodeSelector )       | No      | object  | No         | -          | -                                                                                                                   |
| - [resources](#nodeReadiness_resources )             | No      | object  | No         | -          | -                                                                                                                   |
| - [startupTaintKey](#nodeReadiness_startupTaintKey ) | No      | string  | No         | -          | Taint key to remove once the driver is ready. Must match the key added to nodepool.template.spec.startupTaints.     |

### <a name="nodeReadiness_enabled"></a>2.1. Property `karpenter-gpu-nodepool > nodeReadiness > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Deploy a DaemonSet that removes the nvidia.com/gpu-not-ready startup taint once nvidia-smi reports GPUs as healthy.

### <a name="nodeReadiness_image"></a>2.2. Property `karpenter-gpu-nodepool > nodeReadiness > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                         | Pattern | Type   | Deprecated | Definition | Title/Description                                           |
| ------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------------------------------------------------- |
| - [pullPolicy](#nodeReadiness_image_pullPolicy ) | No      | string | No         | -          | Image pull policy (IfNotPresent, Always, or Never).         |
| - [repository](#nodeReadiness_image_repository ) | No      | string | No         | -          | Official Kubernetes kubectl image for taint removal.        |
| - [tag](#nodeReadiness_image_tag )               | No      | string | No         | -          | Image tag — pin to match your cluster's Kubernetes version. |

#### <a name="nodeReadiness_image_pullPolicy"></a>2.2.1. Property `karpenter-gpu-nodepool > nodeReadiness > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image pull policy (IfNotPresent, Always, or Never).

#### <a name="nodeReadiness_image_repository"></a>2.2.2. Property `karpenter-gpu-nodepool > nodeReadiness > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Official Kubernetes kubectl image for taint removal.

#### <a name="nodeReadiness_image_tag"></a>2.2.3. Property `karpenter-gpu-nodepool > nodeReadiness > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag — pin to match your cluster's Kubernetes version.

### <a name="nodeReadiness_name"></a>2.3. Property `karpenter-gpu-nodepool > nodeReadiness > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name for the DaemonSet, ServiceAccount, ClusterRole, and ClusterRoleBinding.

### <a name="nodeReadiness_nodeSelector"></a>2.4. Property `karpenter-gpu-nodepool > nodeReadiness > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description                                              |
| ----------------------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------------------------------- |
| - [karpenter.k8s.aws/instance-gpu-manufacturer](#nodeReadiness_nodeSelector_karpenterk8saws/instance-gpu-manufacturer ) | No      | string | No         | -          | Restrict to GPU nodes. Should match dcgmExporter.nodeSelector. |

#### <a name="nodeReadiness_nodeSelector_karpenterk8saws/instance-gpu-manufacturer"></a>2.4.1. Property `karpenter-gpu-nodepool > nodeReadiness > nodeSelector > karpenter.k8s.aws/instance-gpu-manufacturer`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Restrict to GPU nodes. Should match dcgmExporter.nodeSelector.

### <a name="nodeReadiness_resources"></a>2.5. Property `karpenter-gpu-nodepool > nodeReadiness > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                         | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#nodeReadiness_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#nodeReadiness_resources_requests ) | No      | object | No         | -          | -                 |

#### <a name="nodeReadiness_resources_limits"></a>2.5.1. Property `karpenter-gpu-nodepool > nodeReadiness > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#nodeReadiness_resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#nodeReadiness_resources_limits_memory ) | No      | string | No         | -          | -                 |

##### <a name="nodeReadiness_resources_limits_cpu"></a>2.5.1.1. Property `karpenter-gpu-nodepool > nodeReadiness > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodeReadiness_resources_limits_memory"></a>2.5.1.2. Property `karpenter-gpu-nodepool > nodeReadiness > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="nodeReadiness_resources_requests"></a>2.5.2. Property `karpenter-gpu-nodepool > nodeReadiness > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#nodeReadiness_resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#nodeReadiness_resources_requests_memory ) | No      | string | No         | -          | -                 |

##### <a name="nodeReadiness_resources_requests_cpu"></a>2.5.2.1. Property `karpenter-gpu-nodepool > nodeReadiness > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodeReadiness_resources_requests_memory"></a>2.5.2.2. Property `karpenter-gpu-nodepool > nodeReadiness > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodeReadiness_startupTaintKey"></a>2.6. Property `karpenter-gpu-nodepool > nodeReadiness > startupTaintKey`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Taint key to remove once the driver is ready. Must match the key added to nodepool.template.spec.startupTaints.

## <a name="nodepool"></a>3. Property `karpenter-gpu-nodepool > nodepool`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                              | Pattern | Type    | Deprecated | Definition | Title/Description                                                                               |
| ------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------------------------------------------------------------------------------------- |
| - [disruption](#nodepool_disruption ) | No      | object  | No         | -          | -                                                                                               |
| - [enabled](#nodepool_enabled )       | No      | boolean | No         | -          | Enable deployment of NodePool.                                                                  |
| - [limits](#nodepool_limits )         | No      | object  | No         | -          | Resource limits for the NodePool to cap total provisioned capacity (e.g., nvidia.com/gpu: "1"). |
| - [name](#nodepool_name )             | No      | string  | No         | -          | Name of the NodePool.                                                                           |
| - [template](#nodepool_template )     | No      | object  | No         | -          | -                                                                                               |

### <a name="nodepool_disruption"></a>3.1. Property `karpenter-gpu-nodepool > nodepool > disruption`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                           | Pattern | Type   | Deprecated | Definition | Title/Description                                                              |
| ------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------------ |
| - [consolidateAfter](#nodepool_disruption_consolidateAfter )       | No      | string | No         | -          | Time to wait before consolidating nodes.                                       |
| - [consolidationPolicy](#nodepool_disruption_consolidationPolicy ) | No      | string | No         | -          | Consolidation policy for the nodepool (WhenEmptyOrUnderutilized or WhenEmpty). |

#### <a name="nodepool_disruption_consolidateAfter"></a>3.1.1. Property `karpenter-gpu-nodepool > nodepool > disruption > consolidateAfter`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Time to wait before consolidating nodes.

#### <a name="nodepool_disruption_consolidationPolicy"></a>3.1.2. Property `karpenter-gpu-nodepool > nodepool > disruption > consolidationPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Consolidation policy for the nodepool (WhenEmptyOrUnderutilized or WhenEmpty).

### <a name="nodepool_enabled"></a>3.2. Property `karpenter-gpu-nodepool > nodepool > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable deployment of NodePool.

### <a name="nodepool_limits"></a>3.3. Property `karpenter-gpu-nodepool > nodepool > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resource limits for the NodePool to cap total provisioned capacity (e.g., nvidia.com/gpu: "1").

| Property                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#nodepool_limits_pattern1 ) | Yes     | string | No         | -          | -                 |

#### <a name="nodepool_limits_pattern1"></a>3.3.1. Pattern Property `karpenter-gpu-nodepool > nodepool > limits > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nodepool_name"></a>3.4. Property `karpenter-gpu-nodepool > nodepool > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the NodePool.

### <a name="nodepool_template"></a>3.5. Property `karpenter-gpu-nodepool > nodepool > template`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [metadata](#nodepool_template_metadata ) | No      | object | No         | -          | -                 |
| - [spec](#nodepool_template_spec )         | No      | object | No         | -          | -                 |

#### <a name="nodepool_template_metadata"></a>3.5.1. Property `karpenter-gpu-nodepool > nodepool > template > metadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                  |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------------------------------- |
| - [labels](#nodepool_template_metadata_labels ) | No      | object | No         | -          | Labels to apply to nodes created by this NodePool. |

##### <a name="nodepool_template_metadata_labels"></a>3.5.1.1. Property `karpenter-gpu-nodepool > nodepool > template > metadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Labels to apply to nodes created by this NodePool.

| Property                                                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [workload.node-purpose](#nodepool_template_metadata_labels_workloadnode-purpose ) | No      | string | No         | -          | -                 |
| - [workload.type](#nodepool_template_metadata_labels_workloadtype )                 | No      | string | No         | -          | -                 |
| - [^.*$](#nodepool_template_metadata_labels_pattern1 )                              | Yes     | string | No         | -          | -                 |

###### <a name="nodepool_template_metadata_labels_workloadnode-purpose"></a>3.5.1.1.1. Property `karpenter-gpu-nodepool > nodepool > template > metadata > labels > workload.node-purpose`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_metadata_labels_workloadtype"></a>3.5.1.1.2. Property `karpenter-gpu-nodepool > nodepool > template > metadata > labels > workload.type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_metadata_labels_pattern1"></a>3.5.1.1.3. Pattern Property `karpenter-gpu-nodepool > nodepool > template > metadata > labels > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="nodepool_template_spec"></a>3.5.2. Property `karpenter-gpu-nodepool > nodepool > template > spec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type            | Deprecated | Definition | Title/Description                                                                                    |
| --------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ---------------------------------------------------------------------------------------------------- |
| - [expireAfter](#nodepool_template_spec_expireAfter )     | No      | string          | No         | -          | Time after which nodes will expire and be replaced (e.g., 24h, 48h).                                 |
| - [nodeClassRef](#nodepool_template_spec_nodeClassRef )   | No      | object          | No         | -          | -                                                                                                    |
| - [requirements](#nodepool_template_spec_requirements )   | No      | array of object | No         | -          | Node requirements for scheduling. Defines constraints for instance selection.                        |
| - [startupTaints](#nodepool_template_spec_startupTaints ) | No      | array of object | No         | -          | Startup taints applied during node initialization to prevent scheduling until CSI drivers are ready. |
| - [taints](#nodepool_template_spec_taints )               | No      | array of object | No         | -          | Taints to apply to nodes to prevent non-GPU workloads from scheduling.                               |

##### <a name="nodepool_template_spec_expireAfter"></a>3.5.2.1. Property `karpenter-gpu-nodepool > nodepool > template > spec > expireAfter`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Time after which nodes will expire and be replaced (e.g., 24h, 48h).

##### <a name="nodepool_template_spec_nodeClassRef"></a>3.5.2.2. Property `karpenter-gpu-nodepool > nodepool > template > spec > nodeClassRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description                                        |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | -------------------------------------------------------- |
| - [group](#nodepool_template_spec_nodeClassRef_group ) | No      | string | No         | -          | Group for the NodeClass reference.                       |
| - [kind](#nodepool_template_spec_nodeClassRef_kind )   | No      | string | No         | -          | Kind of NodeClass (typically EC2NodeClass).              |
| + [name](#nodepool_template_spec_nodeClassRef_name )   | No      | string | No         | -          | Name of the EC2NodeClass to use. This value is required. |

###### <a name="nodepool_template_spec_nodeClassRef_group"></a>3.5.2.2.1. Property `karpenter-gpu-nodepool > nodepool > template > spec > nodeClassRef > group`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Group for the NodeClass reference.

###### <a name="nodepool_template_spec_nodeClassRef_kind"></a>3.5.2.2.2. Property `karpenter-gpu-nodepool > nodepool > template > spec > nodeClassRef > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kind of NodeClass (typically EC2NodeClass).

###### <a name="nodepool_template_spec_nodeClassRef_name"></a>3.5.2.2.3. Property `karpenter-gpu-nodepool > nodepool > template > spec > nodeClassRef > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Name of the EC2NodeClass to use. This value is required.

##### <a name="nodepool_template_spec_requirements"></a>3.5.2.3. Property `karpenter-gpu-nodepool > nodepool > template > spec > requirements`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Node requirements for scheduling. Defines constraints for instance selection.

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

###### <a name="nodepool_template_spec_requirements_items"></a>3.5.2.3.1. karpenter-gpu-nodepool > nodepool > template > spec > requirements > requirements items

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

###### <a name="nodepool_template_spec_requirements_items_key"></a>3.5.2.3.1.1. Property `karpenter-gpu-nodepool > nodepool > template > spec > requirements > requirements items > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_requirements_items_operator"></a>3.5.2.3.1.2. Property `karpenter-gpu-nodepool > nodepool > template > spec > requirements > requirements items > operator`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_requirements_items_values"></a>3.5.2.3.1.3. Property `karpenter-gpu-nodepool > nodepool > template > spec > requirements > requirements items > values`

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

###### <a name="nodepool_template_spec_requirements_items_values_items"></a>3.5.2.3.1.3.1. karpenter-gpu-nodepool > nodepool > template > spec > requirements > requirements items > values > values items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodepool_template_spec_startupTaints"></a>3.5.2.4. Property `karpenter-gpu-nodepool > nodepool > template > spec > startupTaints`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Startup taints applied during node initialization to prevent scheduling until CSI drivers are ready.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                    | Description |
| ------------------------------------------------------------------ | ----------- |
| [startupTaints items](#nodepool_template_spec_startupTaints_items) | -           |

###### <a name="nodepool_template_spec_startupTaints_items"></a>3.5.2.4.1. karpenter-gpu-nodepool > nodepool > template > spec > startupTaints > startupTaints items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [effect](#nodepool_template_spec_startupTaints_items_effect ) | No      | string | No         | -          | -                 |
| - [key](#nodepool_template_spec_startupTaints_items_key )       | No      | string | No         | -          | -                 |

###### <a name="nodepool_template_spec_startupTaints_items_effect"></a>3.5.2.4.1.1. Property `karpenter-gpu-nodepool > nodepool > template > spec > startupTaints > startupTaints items > effect`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_startupTaints_items_key"></a>3.5.2.4.1.2. Property `karpenter-gpu-nodepool > nodepool > template > spec > startupTaints > startupTaints items > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nodepool_template_spec_taints"></a>3.5.2.5. Property `karpenter-gpu-nodepool > nodepool > template > spec > taints`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Taints to apply to nodes to prevent non-GPU workloads from scheduling.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                      | Description |
| ---------------------------------------------------- | ----------- |
| [taints items](#nodepool_template_spec_taints_items) | -           |

###### <a name="nodepool_template_spec_taints_items"></a>3.5.2.5.1. karpenter-gpu-nodepool > nodepool > template > spec > taints > taints items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [effect](#nodepool_template_spec_taints_items_effect ) | No      | string | No         | -          | -                 |
| - [key](#nodepool_template_spec_taints_items_key )       | No      | string | No         | -          | -                 |
| - [value](#nodepool_template_spec_taints_items_value )   | No      | string | No         | -          | -                 |

###### <a name="nodepool_template_spec_taints_items_effect"></a>3.5.2.5.1.1. Property `karpenter-gpu-nodepool > nodepool > template > spec > taints > taints items > effect`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_taints_items_key"></a>3.5.2.5.1.2. Property `karpenter-gpu-nodepool > nodepool > template > spec > taints > taints items > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="nodepool_template_spec_taints_items_value"></a>3.5.2.5.1.3. Property `karpenter-gpu-nodepool > nodepool > template > spec > taints > taints items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="nvidiaDriver"></a>4. Property `karpenter-gpu-nodepool > nvidiaDriver`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                | Pattern | Type            | Deprecated | Definition | Title/Description                                                                                                       |
| ------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [affinity](#nvidiaDriver_affinity )                   | No      | object          | No         | -          | Affinity rules for the DaemonSet pods. Can be used for advanced scheduling like avoiding Fargate nodes.                 |
| - [args](#nvidiaDriver_args )                           | No      | array of string | No         | -          | Arguments to pass to the NVIDIA device plugin container.                                                                |
| - [enabled](#nvidiaDriver_enabled )                     | No      | boolean         | No         | -          | Enable deployment of NVIDIA device plugin DaemonSet.                                                                    |
| - [env](#nvidiaDriver_env )                             | No      | array           | No         | -          | Additional environment variables for the NVIDIA device plugin container.                                                |
| - [image](#nvidiaDriver_image )                         | No      | object          | No         | -          | -                                                                                                                       |
| - [name](#nvidiaDriver_name )                           | No      | string          | No         | -          | Name of the DaemonSet.                                                                                                  |
| - [namespace](#nvidiaDriver_namespace )                 | No      | string          | No         | -          | Namespace where the DaemonSet will be deployed.                                                                         |
| - [nodeSelector](#nvidiaDriver_nodeSelector )           | No      | object          | No         | -          | Node selector for the DaemonSet. Can be used to target specific nodes.                                                  |
| - [podLabels](#nvidiaDriver_podLabels )                 | No      | object          | No         | -          | Additional labels for the DaemonSet pods.                                                                               |
| - [priorityClassName](#nvidiaDriver_priorityClassName ) | No      | string          | No         | -          | Priority class name for the DaemonSet pods. If empty and priorityClass.enabled is true, uses the chart's PriorityClass. |
| - [resources](#nvidiaDriver_resources )                 | No      | object          | No         | -          | Resources for the NVIDIA device plugin container. Can be used to set limits and requests.                               |
| - [securityContext](#nvidiaDriver_securityContext )     | No      | object          | No         | -          | Security context for the container to run with minimal privileges.                                                      |
| - [tolerations](#nvidiaDriver_tolerations )             | No      | array of object | No         | -          | Tolerations for the DaemonSet pods to schedule on GPU nodes.                                                            |
| - [updateStrategy](#nvidiaDriver_updateStrategy )       | No      | object          | No         | -          | Update strategy for the DaemonSet.                                                                                      |
| - [volumeMounts](#nvidiaDriver_volumeMounts )           | No      | array of object | No         | -          | Volume mounts for the container to access device plugin socket path.                                                    |
| - [volumes](#nvidiaDriver_volumes )                     | No      | array of object | No         | -          | Volumes for the DaemonSet to access host device plugin directory.                                                       |

### <a name="nvidiaDriver_affinity"></a>4.1. Property `karpenter-gpu-nodepool > nvidiaDriver > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Affinity rules for the DaemonSet pods. Can be used for advanced scheduling like avoiding Fargate nodes.

### <a name="nvidiaDriver_args"></a>4.2. Property `karpenter-gpu-nodepool > nvidiaDriver > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of string` |
| **Required** | No                |

**Description:** Arguments to pass to the NVIDIA device plugin container.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be        | Description |
| -------------------------------------- | ----------- |
| [args items](#nvidiaDriver_args_items) | -           |

#### <a name="nvidiaDriver_args_items"></a>4.2.1. karpenter-gpu-nodepool > nvidiaDriver > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_enabled"></a>4.3. Property `karpenter-gpu-nodepool > nvidiaDriver > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable deployment of NVIDIA device plugin DaemonSet.

### <a name="nvidiaDriver_env"></a>4.4. Property `karpenter-gpu-nodepool > nvidiaDriver > env`

|              |         |
| ------------ | ------- |
| **Type**     | `array` |
| **Required** | No      |

**Description:** Additional environment variables for the NVIDIA device plugin container.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | N/A                |

### <a name="nvidiaDriver_image"></a>4.5. Property `karpenter-gpu-nodepool > nvidiaDriver > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                        | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ----------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [pullPolicy](#nvidiaDriver_image_pullPolicy ) | No      | string | No         | -          | Image pull policy (IfNotPresent, Always, or Never). |
| - [repository](#nvidiaDriver_image_repository ) | No      | string | No         | -          | NVIDIA device plugin image repository.              |
| - [tag](#nvidiaDriver_image_tag )               | No      | string | No         | -          | Image tag for the NVIDIA device plugin.             |

#### <a name="nvidiaDriver_image_pullPolicy"></a>4.5.1. Property `karpenter-gpu-nodepool > nvidiaDriver > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image pull policy (IfNotPresent, Always, or Never).

#### <a name="nvidiaDriver_image_repository"></a>4.5.2. Property `karpenter-gpu-nodepool > nvidiaDriver > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** NVIDIA device plugin image repository.

#### <a name="nvidiaDriver_image_tag"></a>4.5.3. Property `karpenter-gpu-nodepool > nvidiaDriver > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Image tag for the NVIDIA device plugin.

### <a name="nvidiaDriver_name"></a>4.6. Property `karpenter-gpu-nodepool > nvidiaDriver > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the DaemonSet.

### <a name="nvidiaDriver_namespace"></a>4.7. Property `karpenter-gpu-nodepool > nvidiaDriver > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Namespace where the DaemonSet will be deployed.

### <a name="nvidiaDriver_nodeSelector"></a>4.8. Property `karpenter-gpu-nodepool > nvidiaDriver > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Node selector for the DaemonSet. Can be used to target specific nodes.

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [^.*$](#nvidiaDriver_nodeSelector_pattern1 ) | Yes     | string | No         | -          | -                 |

#### <a name="nvidiaDriver_nodeSelector_pattern1"></a>4.8.1. Pattern Property `karpenter-gpu-nodepool > nvidiaDriver > nodeSelector > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_podLabels"></a>4.9. Property `karpenter-gpu-nodepool > nvidiaDriver > podLabels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Additional labels for the DaemonSet pods.

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#nvidiaDriver_podLabels_name )     | No      | string | No         | -          | -                 |
| - [^.*$](#nvidiaDriver_podLabels_pattern1 ) | Yes     | string | No         | -          | -                 |

#### <a name="nvidiaDriver_podLabels_name"></a>4.9.1. Property `karpenter-gpu-nodepool > nvidiaDriver > podLabels > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="nvidiaDriver_podLabels_pattern1"></a>4.9.2. Pattern Property `karpenter-gpu-nodepool > nvidiaDriver > podLabels > ^.*$`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_priorityClassName"></a>4.10. Property `karpenter-gpu-nodepool > nvidiaDriver > priorityClassName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Priority class name for the DaemonSet pods. If empty and priorityClass.enabled is true, uses the chart's PriorityClass.

### <a name="nvidiaDriver_resources"></a>4.11. Property `karpenter-gpu-nodepool > nvidiaDriver > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Resources for the NVIDIA device plugin container. Can be used to set limits and requests.

### <a name="nvidiaDriver_securityContext"></a>4.12. Property `karpenter-gpu-nodepool > nvidiaDriver > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Security context for the container to run with minimal privileges.

| Property                                                                              | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [allowPrivilegeEscalation](#nvidiaDriver_securityContext_allowPrivilegeEscalation ) | No      | boolean | No         | -          | -                 |
| - [capabilities](#nvidiaDriver_securityContext_capabilities )                         | No      | object  | No         | -          | -                 |

#### <a name="nvidiaDriver_securityContext_allowPrivilegeEscalation"></a>4.12.1. Property `karpenter-gpu-nodepool > nvidiaDriver > securityContext > allowPrivilegeEscalation`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="nvidiaDriver_securityContext_capabilities"></a>4.12.2. Property `karpenter-gpu-nodepool > nvidiaDriver > securityContext > capabilities`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [drop](#nvidiaDriver_securityContext_capabilities_drop ) | No      | array of string | No         | -          | -                 |

##### <a name="nvidiaDriver_securityContext_capabilities_drop"></a>4.12.2.1. Property `karpenter-gpu-nodepool > nvidiaDriver > securityContext > capabilities > drop`

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

| Each item of this array must be                                     | Description |
| ------------------------------------------------------------------- | ----------- |
| [drop items](#nvidiaDriver_securityContext_capabilities_drop_items) | -           |

###### <a name="nvidiaDriver_securityContext_capabilities_drop_items"></a>4.12.2.1.1. karpenter-gpu-nodepool > nvidiaDriver > securityContext > capabilities > drop > drop items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_tolerations"></a>4.13. Property `karpenter-gpu-nodepool > nvidiaDriver > tolerations`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Tolerations for the DaemonSet pods to schedule on GPU nodes.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                      | Description |
| ---------------------------------------------------- | ----------- |
| [tolerations items](#nvidiaDriver_tolerations_items) | -           |

#### <a name="nvidiaDriver_tolerations_items"></a>4.13.1. karpenter-gpu-nodepool > nvidiaDriver > tolerations > tolerations items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [effect](#nvidiaDriver_tolerations_items_effect )     | No      | string | No         | -          | -                 |
| - [key](#nvidiaDriver_tolerations_items_key )           | No      | string | No         | -          | -                 |
| - [operator](#nvidiaDriver_tolerations_items_operator ) | No      | string | No         | -          | -                 |
| - [value](#nvidiaDriver_tolerations_items_value )       | No      | string | No         | -          | -                 |

##### <a name="nvidiaDriver_tolerations_items_effect"></a>4.13.1.1. Property `karpenter-gpu-nodepool > nvidiaDriver > tolerations > tolerations items > effect`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nvidiaDriver_tolerations_items_key"></a>4.13.1.2. Property `karpenter-gpu-nodepool > nvidiaDriver > tolerations > tolerations items > key`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nvidiaDriver_tolerations_items_operator"></a>4.13.1.3. Property `karpenter-gpu-nodepool > nvidiaDriver > tolerations > tolerations items > operator`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nvidiaDriver_tolerations_items_value"></a>4.13.1.4. Property `karpenter-gpu-nodepool > nvidiaDriver > tolerations > tolerations items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_updateStrategy"></a>4.14. Property `karpenter-gpu-nodepool > nvidiaDriver > updateStrategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Update strategy for the DaemonSet.

| Property                                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [type](#nvidiaDriver_updateStrategy_type ) | No      | string | No         | -          | -                 |

#### <a name="nvidiaDriver_updateStrategy_type"></a>4.14.1. Property `karpenter-gpu-nodepool > nvidiaDriver > updateStrategy > type`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_volumeMounts"></a>4.15. Property `karpenter-gpu-nodepool > nvidiaDriver > volumeMounts`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Volume mounts for the container to access device plugin socket path.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                        | Description |
| ------------------------------------------------------ | ----------- |
| [volumeMounts items](#nvidiaDriver_volumeMounts_items) | -           |

#### <a name="nvidiaDriver_volumeMounts_items"></a>4.15.1. karpenter-gpu-nodepool > nvidiaDriver > volumeMounts > volumeMounts items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [mountPath](#nvidiaDriver_volumeMounts_items_mountPath ) | No      | string | No         | -          | -                 |
| - [name](#nvidiaDriver_volumeMounts_items_name )           | No      | string | No         | -          | -                 |

##### <a name="nvidiaDriver_volumeMounts_items_mountPath"></a>4.15.1.1. Property `karpenter-gpu-nodepool > nvidiaDriver > volumeMounts > volumeMounts items > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nvidiaDriver_volumeMounts_items_name"></a>4.15.1.2. Property `karpenter-gpu-nodepool > nvidiaDriver > volumeMounts > volumeMounts items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="nvidiaDriver_volumes"></a>4.16. Property `karpenter-gpu-nodepool > nvidiaDriver > volumes`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** Volumes for the DaemonSet to access host device plugin directory.

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be              | Description |
| -------------------------------------------- | ----------- |
| [volumes items](#nvidiaDriver_volumes_items) | -           |

#### <a name="nvidiaDriver_volumes_items"></a>4.16.1. karpenter-gpu-nodepool > nvidiaDriver > volumes > volumes items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                            | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [hostPath](#nvidiaDriver_volumes_items_hostPath ) | No      | object | No         | -          | -                 |
| - [name](#nvidiaDriver_volumes_items_name )         | No      | string | No         | -          | -                 |

##### <a name="nvidiaDriver_volumes_items_hostPath"></a>4.16.1.1. Property `karpenter-gpu-nodepool > nvidiaDriver > volumes > volumes items > hostPath`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#nvidiaDriver_volumes_items_hostPath_path ) | No      | string | No         | -          | -                 |

###### <a name="nvidiaDriver_volumes_items_hostPath_path"></a>4.16.1.1.1. Property `karpenter-gpu-nodepool > nvidiaDriver > volumes > volumes items > hostPath > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="nvidiaDriver_volumes_items_name"></a>4.16.1.2. Property `karpenter-gpu-nodepool > nvidiaDriver > volumes > volumes items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="priorityClass"></a>5. Property `karpenter-gpu-nodepool > priorityClass`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type    | Deprecated | Definition | Title/Description                                                          |
| ------------------------------------------------------ | ------- | ------- | ---------- | ---------- | -------------------------------------------------------------------------- |
| - [description](#priorityClass_description )           | No      | string  | No         | -          | Human-readable description of when to use this priority class.             |
| - [enabled](#priorityClass_enabled )                   | No      | boolean | No         | -          | Enable creation of PriorityClass for critical GPU infrastructure.          |
| - [globalDefault](#priorityClass_globalDefault )       | No      | boolean | No         | -          | Whether this PriorityClass should be the default for all pods.             |
| - [name](#priorityClass_name )                         | No      | string  | No         | -          | Name of the PriorityClass.                                                 |
| - [preemptionPolicy](#priorityClass_preemptionPolicy ) | No      | string  | No         | -          | Policy for preempting lower priority pods (PreemptLowerPriority or Never). |
| - [value](#priorityClass_value )                       | No      | integer | No         | -          | Priority value (higher = more important).                                  |

### <a name="priorityClass_description"></a>5.1. Property `karpenter-gpu-nodepool > priorityClass > description`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Human-readable description of when to use this priority class.

### <a name="priorityClass_enabled"></a>5.2. Property `karpenter-gpu-nodepool > priorityClass > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Enable creation of PriorityClass for critical GPU infrastructure.

### <a name="priorityClass_globalDefault"></a>5.3. Property `karpenter-gpu-nodepool > priorityClass > globalDefault`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether this PriorityClass should be the default for all pods.

### <a name="priorityClass_name"></a>5.4. Property `karpenter-gpu-nodepool > priorityClass > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the PriorityClass.

### <a name="priorityClass_preemptionPolicy"></a>5.5. Property `karpenter-gpu-nodepool > priorityClass > preemptionPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Policy for preempting lower priority pods (PreemptLowerPriority or Never).

### <a name="priorityClass_value"></a>5.6. Property `karpenter-gpu-nodepool > priorityClass > value`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Priority value (higher = more important).

----------------------------------------------------------------------------------------------------------------------------
