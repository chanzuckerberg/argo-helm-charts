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
| - [api](#api )                           | No      | object | No         | -          | -                 |
| - [image](#image )                       | No      | object | No         | -          | -                 |
| - [imagePullSecrets](#imagePullSecrets ) | No      | array  | No         | -          | -                 |
| - [nodeSelector](#nodeSelector )         | No      | object | No         | -          | -                 |
| - [providers](#providers )               | No      | object | No         | -          | -                 |
| - [resources](#resources )               | No      | object | No         | -          | -                 |
| - [serviceAccount](#serviceAccount )     | No      | object | No         | -          | -                 |
| - [stack](#stack )                       | No      | object | No         | -          | -                 |
| - [tolerations](#tolerations )           | No      | array  | No         | -          | -                 |
| - [tunDevicePlugin](#tunDevicePlugin )   | No      | object | No         | -          | -                 |
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
| - [config](#agent_runtime_config )                                         | No      | object  | No         | -          | -                 |
| - [defaultAwsRegion](#agent_runtime_defaultAwsRegion )                     | No      | string  | No         | -          | -                 |
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

#### <a name="agent_runtime_config"></a>2.1.3. Property `agent-registry-operator > agent > runtime > config`

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

##### <a name="agent_runtime_config_git-branch-guardsh"></a>2.1.3.1. Property `agent-registry-operator > agent > runtime > config > git-branch-guard.sh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="agent_runtime_config_managed-settingsjson"></a>2.1.3.2. Property `agent-registry-operator > agent > runtime > config > managed-settings.json`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="agent_runtime_config_ssh-guardsh"></a>2.1.3.3. Property `agent-registry-operator > agent > runtime > config > ssh-guard.sh`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="agent_runtime_defaultAwsRegion"></a>2.1.4. Property `agent-registry-operator > agent > runtime > defaultAwsRegion`

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

## <a name="api"></a>3. Property `agent-registry-operator > api`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [config](#api_config )   | No      | object  | No         | -          | -                 |
| - [enabled](#api_enabled ) | No      | boolean | No         | -          | -                 |

### <a name="api_config"></a>3.1. Property `agent-registry-operator > api > config`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="api_enabled"></a>3.2. Property `agent-registry-operator > api > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="image"></a>4. Property `agent-registry-operator > image`

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

### <a name="image_pullPolicy"></a>4.1. Property `agent-registry-operator > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="image_repository"></a>4.2. Property `agent-registry-operator > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="image_tag"></a>4.3. Property `agent-registry-operator > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="imagePullSecrets"></a>5. Property `agent-registry-operator > imagePullSecrets`

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

## <a name="nodeSelector"></a>6. Property `agent-registry-operator > nodeSelector`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

## <a name="providers"></a>7. Property `agent-registry-operator > providers`

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

### <a name="providers_anthropic"></a>7.1. Property `agent-registry-operator > providers > anthropic`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [brokerAudience](#providers_anthropic_brokerAudience )   | No      | string  | No         | -          | -                 |
| - [brokerTokenFile](#providers_anthropic_brokerTokenFile ) | No      | string  | No         | -          | -                 |
| - [brokerURL](#providers_anthropic_brokerURL )             | No      | string  | No         | -          | -                 |
| - [enabled](#providers_anthropic_enabled )                 | No      | boolean | No         | -          | -                 |
| - [resourcePrefix](#providers_anthropic_resourcePrefix )   | No      | string  | No         | -          | -                 |

#### <a name="providers_anthropic_brokerAudience"></a>7.1.1. Property `agent-registry-operator > providers > anthropic > brokerAudience`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_anthropic_brokerTokenFile"></a>7.1.2. Property `agent-registry-operator > providers > anthropic > brokerTokenFile`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_anthropic_brokerURL"></a>7.1.3. Property `agent-registry-operator > providers > anthropic > brokerURL`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_anthropic_enabled"></a>7.1.4. Property `agent-registry-operator > providers > anthropic > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="providers_anthropic_resourcePrefix"></a>7.1.5. Property `agent-registry-operator > providers > anthropic > resourcePrefix`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="providers_aws"></a>7.2. Property `agent-registry-operator > providers > aws`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                         | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#providers_aws_enabled )                                             | No      | boolean | No         | -          | -                 |
| - [permissionsBoundaryPolicyName](#providers_aws_permissionsBoundaryPolicyName ) | No      | string  | No         | -          | -                 |
| - [provisionerRoleName](#providers_aws_provisionerRoleName )                     | No      | string  | No         | -          | -                 |
| - [region](#providers_aws_region )                                               | No      | string  | No         | -          | -                 |

#### <a name="providers_aws_enabled"></a>7.2.1. Property `agent-registry-operator > providers > aws > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="providers_aws_permissionsBoundaryPolicyName"></a>7.2.2. Property `agent-registry-operator > providers > aws > permissionsBoundaryPolicyName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_provisionerRoleName"></a>7.2.3. Property `agent-registry-operator > providers > aws > provisionerRoleName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="providers_aws_region"></a>7.2.4. Property `agent-registry-operator > providers > aws > region`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="providers_tailscale"></a>7.3. Property `agent-registry-operator > providers > tailscale`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                   | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#providers_tailscale_enabled ) | No      | boolean | No         | -          | -                 |

#### <a name="providers_tailscale_enabled"></a>7.3.1. Property `agent-registry-operator > providers > tailscale > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

## <a name="resources"></a>8. Property `agent-registry-operator > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#resources_requests ) | No      | object | No         | -          | -                 |

### <a name="resources_limits"></a>8.1. Property `agent-registry-operator > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_limits_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_limits_cpu"></a>8.1.1. Property `agent-registry-operator > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_limits_memory"></a>8.1.2. Property `agent-registry-operator > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="resources_requests"></a>8.2. Property `agent-registry-operator > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#resources_requests_memory ) | No      | string | No         | -          | -                 |

#### <a name="resources_requests_cpu"></a>8.2.1. Property `agent-registry-operator > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="resources_requests_memory"></a>8.2.2. Property `agent-registry-operator > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="serviceAccount"></a>9. Property `agent-registry-operator > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [annotations](#serviceAccount_annotations ) | No      | object | No         | -          | -                 |
| - [name](#serviceAccount_name )               | No      | string | No         | -          | -                 |

### <a name="serviceAccount_annotations"></a>9.1. Property `agent-registry-operator > serviceAccount > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [eks.amazonaws.com/token-expiration](#serviceAccount_annotations_eksamazonawscom/token-expiration ) | No      | string | No         | -          | -                 |

#### <a name="serviceAccount_annotations_eksamazonawscom/token-expiration"></a>9.1.1. Property `agent-registry-operator > serviceAccount > annotations > eks.amazonaws.com/token-expiration`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="serviceAccount_name"></a>9.2. Property `agent-registry-operator > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="stack"></a>10. Property `agent-registry-operator > stack`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                       | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [global](#stack_global )     | No      | object | No         | -          | -                 |
| - [services](#stack_services ) | No      | object | No         | -          | -                 |

### <a name="stack_global"></a>10.1. Property `agent-registry-operator > stack > global`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type    | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [autoscaling](#stack_global_autoscaling )           | No      | object  | No         | -          | -                 |
| - [fullnameOverride](#stack_global_fullnameOverride ) | No      | string  | No         | -          | -                 |
| - [grafanaDashboard](#stack_global_grafanaDashboard ) | No      | object  | No         | -          | -                 |
| - [ingress](#stack_global_ingress )                   | No      | object  | No         | -          | -                 |
| - [replicaCount](#stack_global_replicaCount )         | No      | integer | No         | -          | -                 |
| - [securityPolicies](#stack_global_securityPolicies ) | No      | object  | No         | -          | -                 |

#### <a name="stack_global_autoscaling"></a>10.1.1. Property `agent-registry-operator > stack > global > autoscaling`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                        | Pattern | Type    | Deprecated | Definition | Title/Description |
| ----------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#stack_global_autoscaling_enabled ) | No      | boolean | No         | -          | -                 |

##### <a name="stack_global_autoscaling_enabled"></a>10.1.1.1. Property `agent-registry-operator > stack > global > autoscaling > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="stack_global_fullnameOverride"></a>10.1.2. Property `agent-registry-operator > stack > global > fullnameOverride`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="stack_global_grafanaDashboard"></a>10.1.3. Property `agent-registry-operator > stack > global > grafanaDashboard`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#stack_global_grafanaDashboard_enabled ) | No      | boolean | No         | -          | -                 |

##### <a name="stack_global_grafanaDashboard_enabled"></a>10.1.3.1. Property `agent-registry-operator > stack > global > grafanaDashboard > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="stack_global_ingress"></a>10.1.4. Property `agent-registry-operator > stack > global > ingress`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                    | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [enabled](#stack_global_ingress_enabled ) | No      | boolean | No         | -          | -                 |

##### <a name="stack_global_ingress_enabled"></a>10.1.4.1. Property `agent-registry-operator > stack > global > ingress > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="stack_global_replicaCount"></a>10.1.5. Property `agent-registry-operator > stack > global > replicaCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

#### <a name="stack_global_securityPolicies"></a>10.1.6. Property `agent-registry-operator > stack > global > securityPolicies`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [api-auth](#stack_global_securityPolicies_api-auth ) | No      | object | No         | -          | -                 |

##### <a name="stack_global_securityPolicies_api-auth"></a>10.1.6.1. Property `agent-registry-operator > stack > global > securityPolicies > api-auth`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cors](#stack_global_securityPolicies_api-auth_cors ) | No      | object | No         | -          | -                 |
| - [jwt](#stack_global_securityPolicies_api-auth_jwt )   | No      | object | No         | -          | -                 |

###### <a name="stack_global_securityPolicies_api-auth_cors"></a>10.1.6.1.1. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                             | Pattern | Type            | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------ | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [allowCredentials](#stack_global_securityPolicies_api-auth_cors_allowCredentials ) | No      | boolean         | No         | -          | -                 |
| - [allowHeaders](#stack_global_securityPolicies_api-auth_cors_allowHeaders )         | No      | array of string | No         | -          | -                 |
| - [allowMethods](#stack_global_securityPolicies_api-auth_cors_allowMethods )         | No      | array of string | No         | -          | -                 |
| - [allowOrigins](#stack_global_securityPolicies_api-auth_cors_allowOrigins )         | No      | array           | No         | -          | -                 |
| - [enabled](#stack_global_securityPolicies_api-auth_cors_enabled )                   | No      | boolean         | No         | -          | -                 |
| - [exposeHeaders](#stack_global_securityPolicies_api-auth_cors_exposeHeaders )       | No      | array of string | No         | -          | -                 |

###### <a name="stack_global_securityPolicies_api-auth_cors_allowCredentials"></a>10.1.6.1.1.1. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors > allowCredentials`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_global_securityPolicies_api-auth_cors_allowHeaders"></a>10.1.6.1.1.2. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors > allowHeaders`

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

| Each item of this array must be                                                       | Description |
| ------------------------------------------------------------------------------------- | ----------- |
| [allowHeaders items](#stack_global_securityPolicies_api-auth_cors_allowHeaders_items) | -           |

###### <a name="stack_global_securityPolicies_api-auth_cors_allowHeaders_items"></a>10.1.6.1.1.2.1. agent-registry-operator > stack > global > securityPolicies > api-auth > cors > allowHeaders > allowHeaders items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_global_securityPolicies_api-auth_cors_allowMethods"></a>10.1.6.1.1.3. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors > allowMethods`

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

| Each item of this array must be                                                       | Description |
| ------------------------------------------------------------------------------------- | ----------- |
| [allowMethods items](#stack_global_securityPolicies_api-auth_cors_allowMethods_items) | -           |

###### <a name="stack_global_securityPolicies_api-auth_cors_allowMethods_items"></a>10.1.6.1.1.3.1. agent-registry-operator > stack > global > securityPolicies > api-auth > cors > allowMethods > allowMethods items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_global_securityPolicies_api-auth_cors_allowOrigins"></a>10.1.6.1.1.4. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors > allowOrigins`

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

###### <a name="stack_global_securityPolicies_api-auth_cors_enabled"></a>10.1.6.1.1.5. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_global_securityPolicies_api-auth_cors_exposeHeaders"></a>10.1.6.1.1.6. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > cors > exposeHeaders`

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

| Each item of this array must be                                                         | Description |
| --------------------------------------------------------------------------------------- | ----------- |
| [exposeHeaders items](#stack_global_securityPolicies_api-auth_cors_exposeHeaders_items) | -           |

###### <a name="stack_global_securityPolicies_api-auth_cors_exposeHeaders_items"></a>10.1.6.1.1.6.1. agent-registry-operator > stack > global > securityPolicies > api-auth > cors > exposeHeaders > exposeHeaders items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_global_securityPolicies_api-auth_jwt"></a>10.1.6.1.2. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > jwt`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                              | Pattern | Type            | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [enabled](#stack_global_securityPolicies_api-auth_jwt_enabled )     | No      | boolean         | No         | -          | -                 |
| - [providers](#stack_global_securityPolicies_api-auth_jwt_providers ) | No      | array of object | No         | -          | -                 |

###### <a name="stack_global_securityPolicies_api-auth_jwt_enabled"></a>10.1.6.1.2.1. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > jwt > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_global_securityPolicies_api-auth_jwt_providers"></a>10.1.6.1.2.2. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > jwt > providers`

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

| Each item of this array must be                                                | Description |
| ------------------------------------------------------------------------------ | ----------- |
| [providers items](#stack_global_securityPolicies_api-auth_jwt_providers_items) | -           |

###### <a name="stack_global_securityPolicies_api-auth_jwt_providers_items"></a>10.1.6.1.2.2.1. agent-registry-operator > stack > global > securityPolicies > api-auth > jwt > providers > providers items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [issuer](#stack_global_securityPolicies_api-auth_jwt_providers_items_issuer )               | No      | string | No         | -          | -                 |
| - [name](#stack_global_securityPolicies_api-auth_jwt_providers_items_name )                   | No      | string | No         | -          | -                 |
| - [remoteJWKSUri](#stack_global_securityPolicies_api-auth_jwt_providers_items_remoteJWKSUri ) | No      | string | No         | -          | -                 |

###### <a name="stack_global_securityPolicies_api-auth_jwt_providers_items_issuer"></a>10.1.6.1.2.2.1.1. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > jwt > providers > providers items > issuer`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_global_securityPolicies_api-auth_jwt_providers_items_name"></a>10.1.6.1.2.2.1.2. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > jwt > providers > providers items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_global_securityPolicies_api-auth_jwt_providers_items_remoteJWKSUri"></a>10.1.6.1.2.2.1.3. Property `agent-registry-operator > stack > global > securityPolicies > api-auth > jwt > providers > providers items > remoteJWKSUri`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="stack_services"></a>10.2. Property `agent-registry-operator > stack > services`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [api](#stack_services_api ) | No      | object | No         | -          | -                 |

#### <a name="stack_services_api"></a>10.2.1. Property `agent-registry-operator > stack > services > api`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type            | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [args](#stack_services_api_args )                       | No      | array of string | No         | -          | -                 |
| - [gateway](#stack_services_api_gateway )                 | No      | object          | No         | -          | -                 |
| - [image](#stack_services_api_image )                     | No      | object          | No         | -          | -                 |
| - [livenessProbe](#stack_services_api_livenessProbe )     | No      | object          | No         | -          | -                 |
| - [readinessProbe](#stack_services_api_readinessProbe )   | No      | object          | No         | -          | -                 |
| - [resources](#stack_services_api_resources )             | No      | object          | No         | -          | -                 |
| - [securityContext](#stack_services_api_securityContext ) | No      | object          | No         | -          | -                 |
| - [service](#stack_services_api_service )                 | No      | object          | No         | -          | -                 |
| - [serviceAccount](#stack_services_api_serviceAccount )   | No      | object          | No         | -          | -                 |
| - [volumeMounts](#stack_services_api_volumeMounts )       | No      | array of object | No         | -          | -                 |
| - [volumes](#stack_services_api_volumes )                 | No      | array of object | No         | -          | -                 |

##### <a name="stack_services_api_args"></a>10.2.1.1. Property `agent-registry-operator > stack > services > api > args`

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

| Each item of this array must be              | Description |
| -------------------------------------------- | ----------- |
| [args items](#stack_services_api_args_items) | -           |

###### <a name="stack_services_api_args_items"></a>10.2.1.1.1. agent-registry-operator > stack > services > api > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_gateway"></a>10.2.1.2. Property `agent-registry-operator > stack > services > api > gateway`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type            | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [enabled](#stack_services_api_gateway_enabled )               | No      | boolean         | No         | -          | -                 |
| - [host](#stack_services_api_gateway_host )                     | No      | string          | No         | -          | -                 |
| - [paths](#stack_services_api_gateway_paths )                   | No      | array of object | No         | -          | -                 |
| - [securityPolicy](#stack_services_api_gateway_securityPolicy ) | No      | string          | No         | -          | -                 |

###### <a name="stack_services_api_gateway_enabled"></a>10.2.1.2.1. Property `agent-registry-operator > stack > services > api > gateway > enabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_services_api_gateway_host"></a>10.2.1.2.2. Property `agent-registry-operator > stack > services > api > gateway > host`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_gateway_paths"></a>10.2.1.2.3. Property `agent-registry-operator > stack > services > api > gateway > paths`

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
| [paths items](#stack_services_api_gateway_paths_items) | -           |

###### <a name="stack_services_api_gateway_paths_items"></a>10.2.1.2.3.1. agent-registry-operator > stack > services > api > gateway > paths > paths items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                        | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#stack_services_api_gateway_paths_items_path )         | No      | string | No         | -          | -                 |
| - [pathType](#stack_services_api_gateway_paths_items_pathType ) | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_gateway_paths_items_path"></a>10.2.1.2.3.1.1. Property `agent-registry-operator > stack > services > api > gateway > paths > paths items > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_gateway_paths_items_pathType"></a>10.2.1.2.3.1.2. Property `agent-registry-operator > stack > services > api > gateway > paths > paths items > pathType`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_gateway_securityPolicy"></a>10.2.1.2.4. Property `agent-registry-operator > stack > services > api > gateway > securityPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_image"></a>10.2.1.3. Property `agent-registry-operator > stack > services > api > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [repository](#stack_services_api_image_repository ) | No      | string | No         | -          | -                 |
| - [tag](#stack_services_api_image_tag )               | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_image_repository"></a>10.2.1.3.1. Property `agent-registry-operator > stack > services > api > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_image_tag"></a>10.2.1.3.2. Property `agent-registry-operator > stack > services > api > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_livenessProbe"></a>10.2.1.4. Property `agent-registry-operator > stack > services > api > livenessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [httpGet](#stack_services_api_livenessProbe_httpGet ) | No      | object | No         | -          | -                 |

###### <a name="stack_services_api_livenessProbe_httpGet"></a>10.2.1.4.1. Property `agent-registry-operator > stack > services > api > livenessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type   | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#stack_services_api_livenessProbe_httpGet_path ) | No      | string | No         | -          | -                 |
| - [port](#stack_services_api_livenessProbe_httpGet_port ) | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_livenessProbe_httpGet_path"></a>10.2.1.4.1.1. Property `agent-registry-operator > stack > services > api > livenessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_livenessProbe_httpGet_port"></a>10.2.1.4.1.2. Property `agent-registry-operator > stack > services > api > livenessProbe > httpGet > port`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_readinessProbe"></a>10.2.1.5. Property `agent-registry-operator > stack > services > api > readinessProbe`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [httpGet](#stack_services_api_readinessProbe_httpGet ) | No      | object | No         | -          | -                 |

###### <a name="stack_services_api_readinessProbe_httpGet"></a>10.2.1.5.1. Property `agent-registry-operator > stack > services > api > readinessProbe > httpGet`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [path](#stack_services_api_readinessProbe_httpGet_path ) | No      | string | No         | -          | -                 |
| - [port](#stack_services_api_readinessProbe_httpGet_port ) | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_readinessProbe_httpGet_path"></a>10.2.1.5.1.1. Property `agent-registry-operator > stack > services > api > readinessProbe > httpGet > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_readinessProbe_httpGet_port"></a>10.2.1.5.1.2. Property `agent-registry-operator > stack > services > api > readinessProbe > httpGet > port`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_resources"></a>10.2.1.6. Property `agent-registry-operator > stack > services > api > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#stack_services_api_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#stack_services_api_resources_requests ) | No      | object | No         | -          | -                 |

###### <a name="stack_services_api_resources_limits"></a>10.2.1.6.1. Property `agent-registry-operator > stack > services > api > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#stack_services_api_resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#stack_services_api_resources_limits_memory ) | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_resources_limits_cpu"></a>10.2.1.6.1.1. Property `agent-registry-operator > stack > services > api > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_resources_limits_memory"></a>10.2.1.6.1.2. Property `agent-registry-operator > stack > services > api > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_resources_requests"></a>10.2.1.6.2. Property `agent-registry-operator > stack > services > api > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#stack_services_api_resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#stack_services_api_resources_requests_memory ) | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_resources_requests_cpu"></a>10.2.1.6.2.1. Property `agent-registry-operator > stack > services > api > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_resources_requests_memory"></a>10.2.1.6.2.2. Property `agent-registry-operator > stack > services > api > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_securityContext"></a>10.2.1.7. Property `agent-registry-operator > stack > services > api > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                    | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [allowPrivilegeEscalation](#stack_services_api_securityContext_allowPrivilegeEscalation ) | No      | boolean | No         | -          | -                 |
| - [capabilities](#stack_services_api_securityContext_capabilities )                         | No      | object  | No         | -          | -                 |
| - [readOnlyRootFilesystem](#stack_services_api_securityContext_readOnlyRootFilesystem )     | No      | boolean | No         | -          | -                 |
| - [runAsNonRoot](#stack_services_api_securityContext_runAsNonRoot )                         | No      | boolean | No         | -          | -                 |
| - [runAsUser](#stack_services_api_securityContext_runAsUser )                               | No      | integer | No         | -          | -                 |

###### <a name="stack_services_api_securityContext_allowPrivilegeEscalation"></a>10.2.1.7.1. Property `agent-registry-operator > stack > services > api > securityContext > allowPrivilegeEscalation`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_services_api_securityContext_capabilities"></a>10.2.1.7.2. Property `agent-registry-operator > stack > services > api > securityContext > capabilities`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [drop](#stack_services_api_securityContext_capabilities_drop ) | No      | array of string | No         | -          | -                 |

###### <a name="stack_services_api_securityContext_capabilities_drop"></a>10.2.1.7.2.1. Property `agent-registry-operator > stack > services > api > securityContext > capabilities > drop`

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

| Each item of this array must be                                           | Description |
| ------------------------------------------------------------------------- | ----------- |
| [drop items](#stack_services_api_securityContext_capabilities_drop_items) | -           |

###### <a name="stack_services_api_securityContext_capabilities_drop_items"></a>10.2.1.7.2.1.1. agent-registry-operator > stack > services > api > securityContext > capabilities > drop > drop items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_securityContext_readOnlyRootFilesystem"></a>10.2.1.7.3. Property `agent-registry-operator > stack > services > api > securityContext > readOnlyRootFilesystem`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_services_api_securityContext_runAsNonRoot"></a>10.2.1.7.4. Property `agent-registry-operator > stack > services > api > securityContext > runAsNonRoot`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_services_api_securityContext_runAsUser"></a>10.2.1.7.5. Property `agent-registry-operator > stack > services > api > securityContext > runAsUser`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

##### <a name="stack_services_api_service"></a>10.2.1.8. Property `agent-registry-operator > stack > services > api > service`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                    | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [port](#stack_services_api_service_port ) | No      | integer | No         | -          | -                 |

###### <a name="stack_services_api_service_port"></a>10.2.1.8.1. Property `agent-registry-operator > stack > services > api > service > port`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

##### <a name="stack_services_api_serviceAccount"></a>10.2.1.9. Property `agent-registry-operator > stack > services > api > serviceAccount`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                     | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [automount](#stack_services_api_serviceAccount_automount ) | No      | boolean | No         | -          | -                 |
| - [create](#stack_services_api_serviceAccount_create )       | No      | boolean | No         | -          | -                 |
| - [name](#stack_services_api_serviceAccount_name )           | No      | string  | No         | -          | -                 |

###### <a name="stack_services_api_serviceAccount_automount"></a>10.2.1.9.1. Property `agent-registry-operator > stack > services > api > serviceAccount > automount`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_services_api_serviceAccount_create"></a>10.2.1.9.2. Property `agent-registry-operator > stack > services > api > serviceAccount > create`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="stack_services_api_serviceAccount_name"></a>10.2.1.9.3. Property `agent-registry-operator > stack > services > api > serviceAccount > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="stack_services_api_volumeMounts"></a>10.2.1.10. Property `agent-registry-operator > stack > services > api > volumeMounts`

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

| Each item of this array must be                              | Description |
| ------------------------------------------------------------ | ----------- |
| [volumeMounts items](#stack_services_api_volumeMounts_items) | -           |

###### <a name="stack_services_api_volumeMounts_items"></a>10.2.1.10.1. agent-registry-operator > stack > services > api > volumeMounts > volumeMounts items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [mountPath](#stack_services_api_volumeMounts_items_mountPath ) | No      | string  | No         | -          | -                 |
| - [name](#stack_services_api_volumeMounts_items_name )           | No      | string  | No         | -          | -                 |
| - [readOnly](#stack_services_api_volumeMounts_items_readOnly )   | No      | boolean | No         | -          | -                 |

###### <a name="stack_services_api_volumeMounts_items_mountPath"></a>10.2.1.10.1.1. Property `agent-registry-operator > stack > services > api > volumeMounts > volumeMounts items > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_volumeMounts_items_name"></a>10.2.1.10.1.2. Property `agent-registry-operator > stack > services > api > volumeMounts > volumeMounts items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_volumeMounts_items_readOnly"></a>10.2.1.10.1.3. Property `agent-registry-operator > stack > services > api > volumeMounts > volumeMounts items > readOnly`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

##### <a name="stack_services_api_volumes"></a>10.2.1.11. Property `agent-registry-operator > stack > services > api > volumes`

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

| Each item of this array must be                    | Description |
| -------------------------------------------------- | ----------- |
| [volumes items](#stack_services_api_volumes_items) | -           |

###### <a name="stack_services_api_volumes_items"></a>10.2.1.11.1. agent-registry-operator > stack > services > api > volumes > volumes items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [configMap](#stack_services_api_volumes_items_configMap ) | No      | object | No         | -          | -                 |
| - [emptyDir](#stack_services_api_volumes_items_emptyDir )   | No      | object | No         | -          | -                 |
| - [name](#stack_services_api_volumes_items_name )           | No      | string | No         | -          | -                 |
| - [projected](#stack_services_api_volumes_items_projected ) | No      | object | No         | -          | -                 |

###### <a name="stack_services_api_volumes_items_configMap"></a>10.2.1.11.1.1. Property `agent-registry-operator > stack > services > api > volumes > volumes items > configMap`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                    | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#stack_services_api_volumes_items_configMap_name ) | No      | string | No         | -          | -                 |

###### <a name="stack_services_api_volumes_items_configMap_name"></a>10.2.1.11.1.1.1. Property `agent-registry-operator > stack > services > api > volumes > volumes items > configMap > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_volumes_items_emptyDir"></a>10.2.1.11.1.2. Property `agent-registry-operator > stack > services > api > volumes > volumes items > emptyDir`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

###### <a name="stack_services_api_volumes_items_name"></a>10.2.1.11.1.3. Property `agent-registry-operator > stack > services > api > volumes > volumes items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_volumes_items_projected"></a>10.2.1.11.1.4. Property `agent-registry-operator > stack > services > api > volumes > volumes items > projected`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type            | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [sources](#stack_services_api_volumes_items_projected_sources ) | No      | array of object | No         | -          | -                 |

###### <a name="stack_services_api_volumes_items_projected_sources"></a>10.2.1.11.1.4.1. Property `agent-registry-operator > stack > services > api > volumes > volumes items > projected > sources`

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

| Each item of this array must be                                            | Description |
| -------------------------------------------------------------------------- | ----------- |
| [sources items](#stack_services_api_volumes_items_projected_sources_items) | -           |

###### <a name="stack_services_api_volumes_items_projected_sources_items"></a>10.2.1.11.1.4.1.1. agent-registry-operator > stack > services > api > volumes > volumes items > projected > sources > sources items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [serviceAccountToken](#stack_services_api_volumes_items_projected_sources_items_serviceAccountToken ) | No      | object | No         | -          | -                 |

###### <a name="stack_services_api_volumes_items_projected_sources_items_serviceAccountToken"></a>10.2.1.11.1.4.1.1.1. Property `agent-registry-operator > stack > services > api > volumes > volumes items > projected > sources > sources items > serviceAccountToken`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                                | Pattern | Type    | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [audience](#stack_services_api_volumes_items_projected_sources_items_serviceAccountToken_audience )                   | No      | string  | No         | -          | -                 |
| - [expirationSeconds](#stack_services_api_volumes_items_projected_sources_items_serviceAccountToken_expirationSeconds ) | No      | integer | No         | -          | -                 |
| - [path](#stack_services_api_volumes_items_projected_sources_items_serviceAccountToken_path )                           | No      | string  | No         | -          | -                 |

###### <a name="stack_services_api_volumes_items_projected_sources_items_serviceAccountToken_audience"></a>10.2.1.11.1.4.1.1.1.1. Property `agent-registry-operator > stack > services > api > volumes > volumes items > projected > sources > sources items > serviceAccountToken > audience`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="stack_services_api_volumes_items_projected_sources_items_serviceAccountToken_expirationSeconds"></a>10.2.1.11.1.4.1.1.1.2. Property `agent-registry-operator > stack > services > api > volumes > volumes items > projected > sources > sources items > serviceAccountToken > expirationSeconds`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

###### <a name="stack_services_api_volumes_items_projected_sources_items_serviceAccountToken_path"></a>10.2.1.11.1.4.1.1.1.3. Property `agent-registry-operator > stack > services > api > volumes > volumes items > projected > sources > sources items > serviceAccountToken > path`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="tolerations"></a>11. Property `agent-registry-operator > tolerations`

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

## <a name="tunDevicePlugin"></a>12. Property `agent-registry-operator > tunDevicePlugin`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                       | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [deviceCount](#tunDevicePlugin_deviceCount ) | No      | integer | No         | -          | -                 |
| - [image](#tunDevicePlugin_image )             | No      | object  | No         | -          | -                 |
| - [resources](#tunDevicePlugin_resources )     | No      | object  | No         | -          | -                 |

### <a name="tunDevicePlugin_deviceCount"></a>12.1. Property `agent-registry-operator > tunDevicePlugin > deviceCount`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

### <a name="tunDevicePlugin_image"></a>12.2. Property `agent-registry-operator > tunDevicePlugin > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [pullPolicy](#tunDevicePlugin_image_pullPolicy ) | No      | string | No         | -          | -                 |
| - [repository](#tunDevicePlugin_image_repository ) | No      | string | No         | -          | -                 |
| - [tag](#tunDevicePlugin_image_tag )               | No      | string | No         | -          | -                 |

#### <a name="tunDevicePlugin_image_pullPolicy"></a>12.2.1. Property `agent-registry-operator > tunDevicePlugin > image > pullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="tunDevicePlugin_image_repository"></a>12.2.2. Property `agent-registry-operator > tunDevicePlugin > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="tunDevicePlugin_image_tag"></a>12.2.3. Property `agent-registry-operator > tunDevicePlugin > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="tunDevicePlugin_resources"></a>12.3. Property `agent-registry-operator > tunDevicePlugin > resources`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                           | Pattern | Type   | Deprecated | Definition | Title/Description |
| -------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [limits](#tunDevicePlugin_resources_limits )     | No      | object | No         | -          | -                 |
| - [requests](#tunDevicePlugin_resources_requests ) | No      | object | No         | -          | -                 |

#### <a name="tunDevicePlugin_resources_limits"></a>12.3.1. Property `agent-registry-operator > tunDevicePlugin > resources > limits`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#tunDevicePlugin_resources_limits_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#tunDevicePlugin_resources_limits_memory ) | No      | string | No         | -          | -                 |

##### <a name="tunDevicePlugin_resources_limits_cpu"></a>12.3.1.1. Property `agent-registry-operator > tunDevicePlugin > resources > limits > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="tunDevicePlugin_resources_limits_memory"></a>12.3.1.2. Property `agent-registry-operator > tunDevicePlugin > resources > limits > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="tunDevicePlugin_resources_requests"></a>12.3.2. Property `agent-registry-operator > tunDevicePlugin > resources > requests`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [cpu](#tunDevicePlugin_resources_requests_cpu )       | No      | string | No         | -          | -                 |
| - [memory](#tunDevicePlugin_resources_requests_memory ) | No      | string | No         | -          | -                 |

##### <a name="tunDevicePlugin_resources_requests_cpu"></a>12.3.2.1. Property `agent-registry-operator > tunDevicePlugin > resources > requests > cpu`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="tunDevicePlugin_resources_requests_memory"></a>12.3.2.2. Property `agent-registry-operator > tunDevicePlugin > resources > requests > memory`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

## <a name="watchNamespaces"></a>13. Property `agent-registry-operator > watchNamespaces`

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
