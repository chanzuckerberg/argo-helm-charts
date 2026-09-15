# tailscale-probe

**Title:** tailscale-probe

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                       | Pattern | Type   | Deprecated | Definition | Title/Description                                                         |
| ------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------------------------------- |
| + [clusterName](#clusterName ) | No      | string | No         | -          | Stable cluster identifier added to probe metrics. This value is required. |
| - [exporter](#exporter )       | No      | object | No         | -          | Prometheus textfile exporter settings                                     |
| - [oidc](#oidc )               | No      | object | No         | -          | Tailscale workload identity settings                                      |
| - [probe](#probe )             | No      | object | No         | -          | Synthetic ping and SSH probe settings                                     |
| - [resources](#resources )     | No      | object | No         | -          | Container resource requests and limits                                    |
| - [tailscale](#tailscale )     | No      | object | No         | -          | Tailscale node identity settings                                          |

## <a name="clusterName"></a>1. Property `tailscale-probe > clusterName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** Stable cluster identifier added to probe metrics. This value is required.

## <a name="exporter"></a>2. Property `tailscale-probe > exporter`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Prometheus textfile exporter settings

| Property                    | Pattern | Type   | Deprecated | Definition | Title/Description   |
| --------------------------- | ------- | ------ | ---------- | ---------- | ------------------- |
| - [image](#exporter_image ) | No      | object | No         | -          | Node exporter image |

### <a name="exporter_image"></a>2.1. Property `tailscale-probe > exporter > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Node exporter image

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description            |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------- |
| - [pullPolicy](#exporter_image_pullPolicy ) | No      | string | No         | -          | Kubernetes image pull policy |
| - [repository](#exporter_image_repository ) | No      | string | No         | -          | Exporter image repository    |
| - [tag](#exporter_image_tag )               | No      | string | No         | -          | Exporter image tag           |

#### <a name="exporter_image_pullPolicy"></a>2.1.1. Property `tailscale-probe > exporter > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kubernetes image pull policy

#### <a name="exporter_image_repository"></a>2.1.2. Property `tailscale-probe > exporter > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Exporter image repository

#### <a name="exporter_image_tag"></a>2.1.3. Property `tailscale-probe > exporter > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Exporter image tag

## <a name="oidc"></a>3. Property `tailscale-probe > oidc`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Tailscale workload identity settings

| Property                                                  | Pattern | Type    | Deprecated | Definition | Title/Description                                                                     |
| --------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------------------- |
| + [clientId](#oidc_clientId )                             | No      | string  | No         | -          | OAuth client ID whose federated identity trusts this cluster. This value is required. |
| - [tokenExpirationSeconds](#oidc_tokenExpirationSeconds ) | No      | integer | No         | -          | Lifetime of the projected Kubernetes service account token                            |

### <a name="oidc_clientId"></a>3.1. Property `tailscale-probe > oidc > clientId`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | Yes      |

**Description:** OAuth client ID whose federated identity trusts this cluster. This value is required.

### <a name="oidc_tokenExpirationSeconds"></a>3.2. Property `tailscale-probe > oidc > tokenExpirationSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Lifetime of the projected Kubernetes service account token

## <a name="probe"></a>4. Property `tailscale-probe > probe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Synthetic ping and SSH probe settings

| Property                                               | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [image](#probe_image )                               | No      | object  | No         | -          | Image containing tailscaled, tailscale, OpenSSH, and standard shell tools |
| - [intervalSeconds](#probe_intervalSeconds )           | No      | integer | No         | -          | Delay after each complete probe cycle                                     |
| - [maxParallel](#probe_maxParallel )                   | No      | integer | No         | -          | Maximum targets tested concurrently                                       |
| - [pingCount](#probe_pingCount )                       | No      | integer | No         | -          | Maximum ping attempts used to establish the final path                    |
| - [pingTimeout](#probe_pingTimeout )                   | No      | string  | No         | -          | Timeout for each ping attempt                                             |
| - [ssh](#probe_ssh )                                   | No      | object  | No         | -          | Authenticated synthetic SSH transaction settings                          |
| - [targetHostnamePrefix](#probe_targetHostnamePrefix ) | No      | string  | No         | -          | Tailscale hostname prefix used to discover Reef login nodes               |

### <a name="probe_image"></a>4.1. Property `tailscale-probe > probe > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Image containing tailscaled, tailscale, OpenSSH, and standard shell tools

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description            |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------- |
| - [pullPolicy](#probe_image_pullPolicy ) | No      | string | No         | -          | Kubernetes image pull policy |
| - [repository](#probe_image_repository ) | No      | string | No         | -          | Probe image repository       |
| - [tag](#probe_image_tag )               | No      | string | No         | -          | Probe image tag              |

#### <a name="probe_image_pullPolicy"></a>4.1.1. Property `tailscale-probe > probe > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Kubernetes image pull policy

#### <a name="probe_image_repository"></a>4.1.2. Property `tailscale-probe > probe > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Probe image repository

#### <a name="probe_image_tag"></a>4.1.3. Property `tailscale-probe > probe > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Probe image tag

### <a name="probe_intervalSeconds"></a>4.2. Property `tailscale-probe > probe > intervalSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Delay after each complete probe cycle

### <a name="probe_maxParallel"></a>4.3. Property `tailscale-probe > probe > maxParallel`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum targets tested concurrently

### <a name="probe_pingCount"></a>4.4. Property `tailscale-probe > probe > pingCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** Maximum ping attempts used to establish the final path

### <a name="probe_pingTimeout"></a>4.5. Property `tailscale-probe > probe > pingTimeout`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Timeout for each ping attempt

### <a name="probe_ssh"></a>4.6. Property `tailscale-probe > probe > ssh`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Authenticated synthetic SSH transaction settings

| Property                                       | Pattern | Type    | Deprecated | Definition | Title/Description                                       |
| ---------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------- |
| - [command](#probe_ssh_command )               | No      | string  | No         | -          | Harmless command executed after SSH authentication      |
| - [timeoutSeconds](#probe_ssh_timeoutSeconds ) | No      | integer | No         | -          | End-to-end SSH command timeout                          |
| - [user](#probe_ssh_user )                     | No      | string  | No         | -          | Dedicated operating system user present on every target |

#### <a name="probe_ssh_command"></a>4.6.1. Property `tailscale-probe > probe > ssh > command`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Harmless command executed after SSH authentication

#### <a name="probe_ssh_timeoutSeconds"></a>4.6.2. Property `tailscale-probe > probe > ssh > timeoutSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

**Description:** End-to-end SSH command timeout

#### <a name="probe_ssh_user"></a>4.6.3. Property `tailscale-probe > probe > ssh > user`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Dedicated operating system user present on every target

### <a name="probe_targetHostnamePrefix"></a>4.7. Property `tailscale-probe > probe > targetHostnamePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Tailscale hostname prefix used to discover Reef login nodes

## <a name="resources"></a>5. Property `tailscale-probe > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Container resource requests and limits

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description            |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------- |
| - [exporter](#resources_exporter ) | No      | object | No         | -          | Exporter container resources |
| - [probe](#resources_probe )       | No      | object | No         | -          | Probe container resources    |

### <a name="resources_exporter"></a>5.1. Property `tailscale-probe > resources > exporter`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exporter container resources

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description          |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | -------------------------- |
| - [limits](#resources_exporter_limits )     | No      | object | No         | -          | Exporter resource limits   |
| - [requests](#resources_exporter_requests ) | No      | object | No         | -          | Exporter resource requests |

#### <a name="resources_exporter_limits"></a>5.1.1. Property `tailscale-probe > resources > exporter > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exporter resource limits

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_exporter_limits_cpu )       | No      | string | No         | -          | CPU limit         |
| - [memory](#resources_exporter_limits_memory ) | No      | string | No         | -          | Memory limit      |

##### <a name="resources_exporter_limits_cpu"></a>5.1.1.1. Property `tailscale-probe > resources > exporter > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CPU limit

##### <a name="resources_exporter_limits_memory"></a>5.1.1.2. Property `tailscale-probe > resources > exporter > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

#### <a name="resources_exporter_requests"></a>5.1.2. Property `tailscale-probe > resources > exporter > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Exporter resource requests

| Property                                         | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_exporter_requests_cpu )       | No      | string | No         | -          | Requested CPU     |
| - [memory](#resources_exporter_requests_memory ) | No      | string | No         | -          | Requested memory  |

##### <a name="resources_exporter_requests_cpu"></a>5.1.2.1. Property `tailscale-probe > resources > exporter > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Requested CPU

##### <a name="resources_exporter_requests_memory"></a>5.1.2.2. Property `tailscale-probe > resources > exporter > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Requested memory

### <a name="resources_probe"></a>5.2. Property `tailscale-probe > resources > probe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Probe container resources

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description       |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------------- |
| - [limits](#resources_probe_limits )     | No      | object | No         | -          | Probe resource limits   |
| - [requests](#resources_probe_requests ) | No      | object | No         | -          | Probe resource requests |

#### <a name="resources_probe_limits"></a>5.2.1. Property `tailscale-probe > resources > probe > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Probe resource limits

| Property                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_probe_limits_cpu )       | No      | string | No         | -          | CPU limit         |
| - [memory](#resources_probe_limits_memory ) | No      | string | No         | -          | Memory limit      |

##### <a name="resources_probe_limits_cpu"></a>5.2.1.1. Property `tailscale-probe > resources > probe > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** CPU limit

##### <a name="resources_probe_limits_memory"></a>5.2.1.2. Property `tailscale-probe > resources > probe > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Memory limit

#### <a name="resources_probe_requests"></a>5.2.2. Property `tailscale-probe > resources > probe > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Probe resource requests

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_probe_requests_cpu )       | No      | string | No         | -          | Requested CPU     |
| - [memory](#resources_probe_requests_memory ) | No      | string | No         | -          | Requested memory  |

##### <a name="resources_probe_requests_cpu"></a>5.2.2.1. Property `tailscale-probe > resources > probe > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Requested CPU

##### <a name="resources_probe_requests_memory"></a>5.2.2.2. Property `tailscale-probe > resources > probe > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Requested memory

## <a name="tailscale"></a>6. Property `tailscale-probe > tailscale`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Tailscale node identity settings

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description                                          |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | ---------------------------------------------------------- |
| - [hostnamePrefix](#tailscale_hostnamePrefix ) | No      | string | No         | -          | Prefix used to build the probe's unique Tailscale hostname |
| - [tag](#tailscale_tag )                       | No      | string | No         | -          | Tailnet ACL tag advertised by each probe                   |

### <a name="tailscale_hostnamePrefix"></a>6.1. Property `tailscale-probe > tailscale > hostnamePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Prefix used to build the probe's unique Tailscale hostname

### <a name="tailscale_tag"></a>6.2. Property `tailscale-probe > tailscale > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Tailnet ACL tag advertised by each probe

----------------------------------------------------------------------------------------------------------------------------
