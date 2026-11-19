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
| - [image](#image )                       | No      | object | No         | -          | -                 |
| - [imagePullSecrets](#imagePullSecrets ) | No      | array  | No         | -          | -                 |
| - [nodeSelector](#nodeSelector )         | No      | object | No         | -          | -                 |
| - [providers](#providers )               | No      | object | No         | -          | -                 |
| - [resources](#resources )               | No      | object | No         | -          | -                 |
| - [runtime](#runtime )                   | No      | object | No         | -          | -                 |
| - [serviceAccount](#serviceAccount )     | No      | object | No         | -          | -                 |
| - [tolerations](#tolerations )           | No      | array  | No         | -          | -                 |
| - [watchNamespaces](#watchNamespaces )   | No      | array  | No         | -          | -                 |

## <a name="affinity"></a>1. Property `agent-registry-operator > affinity`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="image"></a>2. Property `agent-registry-operator > image`

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

### <a name="image_pullPolicy"></a>2.1. Property `agent-registry-operator > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="image_repository"></a>2.2. Property `agent-registry-operator > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="image_tag"></a>2.3. Property `agent-registry-operator > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="imagePullSecrets"></a>3. Property `agent-registry-operator > imagePullSecrets`

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

## <a name="nodeSelector"></a>4. Property `agent-registry-operator > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="providers"></a>5. Property `agent-registry-operator > providers`

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

### <a name="providers_anthropic"></a>5.1. Property `agent-registry-operator > providers > anthropic`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#providers_anthropic_enabled ) | No      | boolean | No         | -          | -                 |

#### <a name="providers_anthropic_enabled"></a>5.1.1. Property `agent-registry-operator > providers > anthropic > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="providers_aws"></a>5.2. Property `agent-registry-operator > providers > aws`

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

#### <a name="providers_aws_clusterOIDCProvider"></a>5.2.1. Property `agent-registry-operator > providers > aws > clusterOIDCProvider`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_enabled"></a>5.2.2. Property `agent-registry-operator > providers > aws > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="providers_aws_permissionsBoundaryPolicyName"></a>5.2.3. Property `agent-registry-operator > providers > aws > permissionsBoundaryPolicyName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_provisionerRoleName"></a>5.2.4. Property `agent-registry-operator > providers > aws > provisionerRoleName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_region"></a>5.2.5. Property `agent-registry-operator > providers > aws > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="providers_tailscale"></a>5.3. Property `agent-registry-operator > providers > tailscale`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#providers_tailscale_enabled ) | No      | boolean | No         | -          | -                 |

#### <a name="providers_tailscale_enabled"></a>5.3.1. Property `agent-registry-operator > providers > tailscale > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="resources"></a>6. Property `agent-registry-operator > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#resources_requests ) | No      | object | No         | -          | -                 |

### <a name="resources_limits"></a>6.1. Property `agent-registry-operator > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_limits_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_limits_cpu"></a>6.1.1. Property `agent-registry-operator > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_limits_memory"></a>6.1.2. Property `agent-registry-operator > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="resources_requests"></a>6.2. Property `agent-registry-operator > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_requests_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_requests_cpu"></a>6.2.1. Property `agent-registry-operator > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_requests_memory"></a>6.2.2. Property `agent-registry-operator > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="runtime"></a>7. Property `agent-registry-operator > runtime`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                             | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [anthropicAudience](#runtime_anthropicAudience )                   | No      | string  | No         | -          | -                 |
| - [anthropicOrganizationID](#runtime_anthropicOrganizationID )       | No      | string  | No         | -          | -                 |
| - [awsRegion](#runtime_awsRegion )                                   | No      | string  | No         | -          | -                 |
| - [config](#runtime_config )                                         | No      | object  | No         | -          | -                 |
| - [enabled](#runtime_enabled )                                       | No      | boolean | No         | -          | -                 |
| - [engPortalProfilesURL](#runtime_engPortalProfilesURL )             | No      | string  | No         | -          | -                 |
| - [image](#runtime_image )                                           | No      | string  | No         | -          | -                 |
| - [namespaces](#runtime_namespaces )                                 | No      | array   | No         | -          | -                 |
| - [nodeArchitecture](#runtime_nodeArchitecture )                     | No      | string  | No         | -          | -                 |
| - [otelHeadersSecretName](#runtime_otelHeadersSecretName )           | No      | string  | No         | -          | -                 |
| - [tailscaleAudience](#runtime_tailscaleAudience )                   | No      | string  | No         | -          | -                 |
| - [tailscaleClientID](#runtime_tailscaleClientID )                   | No      | string  | No         | -          | -                 |
| - [tailscaleIdentityConfigMap](#runtime_tailscaleIdentityConfigMap ) | No      | string  | No         | -          | -                 |
| - [tailscaleTag](#runtime_tailscaleTag )                             | No      | string  | No         | -          | -                 |
| - [workspaceStorageClass](#runtime_workspaceStorageClass )           | No      | string  | No         | -          | -                 |

### <a name="runtime_anthropicAudience"></a>7.1. Property `agent-registry-operator > runtime > anthropicAudience`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_anthropicOrganizationID"></a>7.2. Property `agent-registry-operator > runtime > anthropicOrganizationID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_awsRegion"></a>7.3. Property `agent-registry-operator > runtime > awsRegion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_config"></a>7.4. Property `agent-registry-operator > runtime > config`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [git-branch-guard.sh](#runtime_config_git-branch-guardsh )     | No      | string | No         | -          | -                 |
| - [managed-settings.json](#runtime_config_managed-settingsjson ) | No      | string | No         | -          | -                 |
| - [ssh-guard.sh](#runtime_config_ssh-guardsh )                   | No      | string | No         | -          | -                 |

#### <a name="runtime_config_git-branch-guardsh"></a>7.4.1. Property `agent-registry-operator > runtime > config > git-branch-guard.sh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="runtime_config_managed-settingsjson"></a>7.4.2. Property `agent-registry-operator > runtime > config > managed-settings.json`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="runtime_config_ssh-guardsh"></a>7.4.3. Property `agent-registry-operator > runtime > config > ssh-guard.sh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_enabled"></a>7.5. Property `agent-registry-operator > runtime > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="runtime_engPortalProfilesURL"></a>7.6. Property `agent-registry-operator > runtime > engPortalProfilesURL`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_image"></a>7.7. Property `agent-registry-operator > runtime > image`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_namespaces"></a>7.8. Property `agent-registry-operator > runtime > namespaces`

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

### <a name="runtime_nodeArchitecture"></a>7.9. Property `agent-registry-operator > runtime > nodeArchitecture`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_otelHeadersSecretName"></a>7.10. Property `agent-registry-operator > runtime > otelHeadersSecretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_tailscaleAudience"></a>7.11. Property `agent-registry-operator > runtime > tailscaleAudience`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_tailscaleClientID"></a>7.12. Property `agent-registry-operator > runtime > tailscaleClientID`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_tailscaleIdentityConfigMap"></a>7.13. Property `agent-registry-operator > runtime > tailscaleIdentityConfigMap`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_tailscaleTag"></a>7.14. Property `agent-registry-operator > runtime > tailscaleTag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="runtime_workspaceStorageClass"></a>7.15. Property `agent-registry-operator > runtime > workspaceStorageClass`

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
