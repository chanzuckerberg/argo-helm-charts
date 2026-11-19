# agent-registry-operator

**Title:** agent-registry-operator

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [affinity](#affinity )                 | No      | object | No         | -          | -                 |
| - [agent](#agent )                       | No      | object | No         | -          | -                 |
| - [image](#image )                       | No      | object | No         | -          | -                 |
| - [imagePullSecrets](#imagePullSecrets ) | No      | array  | No         | -          | -                 |
| - [nodeSelector](#nodeSelector )         | No      | object | No         | -          | -                 |
| - [providers](#providers )               | No      | object | No         | -          | -                 |
| - [resources](#resources )               | No      | object | No         | -          | -                 |
| - [serviceAccount](#serviceAccount )     | No      | object | No         | -          | -                 |
| - [tolerations](#tolerations )           | No      | array  | No         | -          | -                 |
| - [watchNamespaces](#watchNamespaces )   | No      | array  | No         | -          | -                 |

## <a name="affinity"></a>1. Property `agent-registry-operator > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="agent"></a>2. Property `agent-registry-operator > agent`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [runtime](#agent_runtime ) | No      | object | No         | -          | -                 |

### <a name="agent_runtime"></a>2.1. Property `agent-registry-operator > agent > runtime`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [anthropicAudience](#agent_runtime_anthropicAudience )                   | No      | string  | No         | -          | -                 |
| - [anthropicOrganizationID](#agent_runtime_anthropicOrganizationID )       | No      | string  | No         | -          | -                 |
| - [awsRegion](#agent_runtime_awsRegion )                                   | No      | string  | No         | -          | -                 |
| - [config](#agent_runtime_config )                                         | No      | object  | No         | -          | -                 |
| - [enabled](#agent_runtime_enabled )                                       | No      | boolean | No         | -          | -                 |
| - [engPortalProfilesURL](#agent_runtime_engPortalProfilesURL )             | No      | string  | No         | -          | -                 |
| - [image](#agent_runtime_image )                                           | No      | string  | No         | -          | -                 |
| - [nodeArchitecture](#agent_runtime_nodeArchitecture )                     | No      | string  | No         | -          | -                 |
| - [otelHeadersSecretName](#agent_runtime_otelHeadersSecretName )           | No      | string  | No         | -          | -                 |
| - [tailscaleAudience](#agent_runtime_tailscaleAudience )                   | No      | string  | No         | -          | -                 |
| - [tailscaleClientID](#agent_runtime_tailscaleClientID )                   | No      | string  | No         | -          | -                 |
| - [tailscaleIdentityConfigMap](#agent_runtime_tailscaleIdentityConfigMap ) | No      | string  | No         | -          | -                 |
| - [tailscaleTag](#agent_runtime_tailscaleTag )                             | No      | string  | No         | -          | -                 |
| - [workspaceStorageClass](#agent_runtime_workspaceStorageClass )           | No      | string  | No         | -          | -                 |

#### <a name="agent_runtime_anthropicAudience"></a>2.1.1. Property `agent-registry-operator > agent > runtime > anthropicAudience`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_anthropicOrganizationID"></a>2.1.2. Property `agent-registry-operator > agent > runtime > anthropicOrganizationID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_awsRegion"></a>2.1.3. Property `agent-registry-operator > agent > runtime > awsRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_config"></a>2.1.4. Property `agent-registry-operator > agent > runtime > config`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                               | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [git-branch-guard.sh](#agent_runtime_config_git-branch-guardsh )     | No      | string | No         | -          | -                 |
| - [managed-settings.json](#agent_runtime_config_managed-settingsjson ) | No      | string | No         | -          | -                 |
| - [ssh-guard.sh](#agent_runtime_config_ssh-guardsh )                   | No      | string | No         | -          | -                 |

##### <a name="agent_runtime_config_git-branch-guardsh"></a>2.1.4.1. Property `agent-registry-operator > agent > runtime > config > git-branch-guard.sh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="agent_runtime_config_managed-settingsjson"></a>2.1.4.2. Property `agent-registry-operator > agent > runtime > config > managed-settings.json`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="agent_runtime_config_ssh-guardsh"></a>2.1.4.3. Property `agent-registry-operator > agent > runtime > config > ssh-guard.sh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_enabled"></a>2.1.5. Property `agent-registry-operator > agent > runtime > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="agent_runtime_engPortalProfilesURL"></a>2.1.6. Property `agent-registry-operator > agent > runtime > engPortalProfilesURL`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_image"></a>2.1.7. Property `agent-registry-operator > agent > runtime > image`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_nodeArchitecture"></a>2.1.8. Property `agent-registry-operator > agent > runtime > nodeArchitecture`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_otelHeadersSecretName"></a>2.1.9. Property `agent-registry-operator > agent > runtime > otelHeadersSecretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_tailscaleAudience"></a>2.1.10. Property `agent-registry-operator > agent > runtime > tailscaleAudience`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_tailscaleClientID"></a>2.1.11. Property `agent-registry-operator > agent > runtime > tailscaleClientID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_tailscaleIdentityConfigMap"></a>2.1.12. Property `agent-registry-operator > agent > runtime > tailscaleIdentityConfigMap`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_tailscaleTag"></a>2.1.13. Property `agent-registry-operator > agent > runtime > tailscaleTag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_workspaceStorageClass"></a>2.1.14. Property `agent-registry-operator > agent > runtime > workspaceStorageClass`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="image"></a>3. Property `agent-registry-operator > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [pullPolicy](#image_pullPolicy ) | No      | string | No         | -          | -                 |
| - [repository](#image_repository ) | No      | string | No         | -          | -                 |
| - [tag](#image_tag )               | No      | string | No         | -          | -                 |

### <a name="image_pullPolicy"></a>3.1. Property `agent-registry-operator > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="image_repository"></a>3.2. Property `agent-registry-operator > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="image_tag"></a>3.3. Property `agent-registry-operator > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="imagePullSecrets"></a>4. Property `agent-registry-operator > imagePullSecrets`

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

## <a name="nodeSelector"></a>5. Property `agent-registry-operator > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="providers"></a>6. Property `agent-registry-operator > providers`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [anthropic](#providers_anthropic ) | No      | object | No         | -          | -                 |
| - [aws](#providers_aws )             | No      | object | No         | -          | -                 |
| - [tailscale](#providers_tailscale ) | No      | object | No         | -          | -                 |

### <a name="providers_anthropic"></a>6.1. Property `agent-registry-operator > providers > anthropic`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#providers_anthropic_enabled ) | No      | boolean | No         | -          | -                 |

#### <a name="providers_anthropic_enabled"></a>6.1.1. Property `agent-registry-operator > providers > anthropic > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="providers_aws"></a>6.2. Property `agent-registry-operator > providers > aws`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                         | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [clusterOIDCProvider](#providers_aws_clusterOIDCProvider )                     | No      | string  | No         | -          | -                 |
| - [enabled](#providers_aws_enabled )                                             | No      | boolean | No         | -          | -                 |
| - [permissionsBoundaryPolicyName](#providers_aws_permissionsBoundaryPolicyName ) | No      | string  | No         | -          | -                 |
| - [provisionerRoleName](#providers_aws_provisionerRoleName )                     | No      | string  | No         | -          | -                 |
| - [region](#providers_aws_region )                                               | No      | string  | No         | -          | -                 |

#### <a name="providers_aws_clusterOIDCProvider"></a>6.2.1. Property `agent-registry-operator > providers > aws > clusterOIDCProvider`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_enabled"></a>6.2.2. Property `agent-registry-operator > providers > aws > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="providers_aws_permissionsBoundaryPolicyName"></a>6.2.3. Property `agent-registry-operator > providers > aws > permissionsBoundaryPolicyName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_provisionerRoleName"></a>6.2.4. Property `agent-registry-operator > providers > aws > provisionerRoleName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_region"></a>6.2.5. Property `agent-registry-operator > providers > aws > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="providers_tailscale"></a>6.3. Property `agent-registry-operator > providers > tailscale`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#providers_tailscale_enabled ) | No      | boolean | No         | -          | -                 |

#### <a name="providers_tailscale_enabled"></a>6.3.1. Property `agent-registry-operator > providers > tailscale > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="resources"></a>7. Property `agent-registry-operator > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#resources_requests ) | No      | object | No         | -          | -                 |

### <a name="resources_limits"></a>7.1. Property `agent-registry-operator > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_limits_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_limits_cpu"></a>7.1.1. Property `agent-registry-operator > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_limits_memory"></a>7.1.2. Property `agent-registry-operator > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="resources_requests"></a>7.2. Property `agent-registry-operator > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_requests_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_requests_cpu"></a>7.2.1. Property `agent-registry-operator > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_requests_memory"></a>7.2.2. Property `agent-registry-operator > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="serviceAccount"></a>8. Property `agent-registry-operator > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [annotations](#serviceAccount_annotations ) | No      | object | No         | -          | -                 |
| - [name](#serviceAccount_name )               | No      | string | No         | -          | -                 |

### <a name="serviceAccount_annotations"></a>8.1. Property `agent-registry-operator > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="serviceAccount_name"></a>8.2. Property `agent-registry-operator > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="tolerations"></a>9. Property `agent-registry-operator > tolerations`

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

## <a name="watchNamespaces"></a>10. Property `agent-registry-operator > watchNamespaces`

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
