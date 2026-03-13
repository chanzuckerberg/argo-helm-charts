# postgres

**Title:** postgres

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                     | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [postgresql](#postgresql ) | No      | object | No         | -          | -                 |

## <a name="postgresql"></a>1. Property `postgres > postgresql`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                            | Pattern | Type            | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [args](#postgresql_args )                                         | No      | array of string | No         | -          | -                 |
| - [auth](#postgresql_auth )                                         | No      | object          | No         | -          | -                 |
| - [config](#postgresql_config )                                     | No      | object          | No         | -          | -                 |
| - [containerSecurityContext](#postgresql_containerSecurityContext ) | No      | object          | No         | -          | -                 |
| - [extraObjects](#postgresql_extraObjects )                         | No      | array of object | No         | -          | -                 |
| - [extraVolumeMounts](#postgresql_extraVolumeMounts )               | No      | array of object | No         | -          | -                 |
| - [extraVolumes](#postgresql_extraVolumes )                         | No      | array of object | No         | -          | -                 |
| - [image](#postgresql_image )                                       | No      | object          | No         | -          | -                 |
| - [initContainers](#postgresql_initContainers )                     | No      | array of object | No         | -          | -                 |
| - [podSecurityContext](#postgresql_podSecurityContext )             | No      | object          | No         | -          | -                 |

### <a name="postgresql_args"></a>1.1. Property `postgres > postgresql > args`

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

| Each item of this array must be      | Description |
| ------------------------------------ | ----------- |
| [args items](#postgresql_args_items) | -           |

#### <a name="postgresql_args_items"></a>1.1.1. postgres > postgresql > args > args items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="postgresql_auth"></a>1.2. Property `postgres > postgresql > auth`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="postgresql_config"></a>1.3. Property `postgres > postgresql > config`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                         | Pattern | Type            | Deprecated | Definition | Title/Description |
| ------------------------------------------------ | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [extraConfig](#postgresql_config_extraConfig ) | No      | array of string | No         | -          | -                 |

#### <a name="postgresql_config_extraConfig"></a>1.3.1. Property `postgres > postgresql > config > extraConfig`

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

| Each item of this array must be                           | Description |
| --------------------------------------------------------- | ----------- |
| [extraConfig items](#postgresql_config_extraConfig_items) | -           |

##### <a name="postgresql_config_extraConfig_items"></a>1.3.1.1. postgres > postgresql > config > extraConfig > extraConfig items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="postgresql_containerSecurityContext"></a>1.4. Property `postgres > postgresql > containerSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                     | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [allowPrivilegeEscalation](#postgresql_containerSecurityContext_allowPrivilegeEscalation ) | No      | boolean | No         | -          | -                 |
| - [capabilities](#postgresql_containerSecurityContext_capabilities )                         | No      | object  | No         | -          | -                 |
| - [readOnlyRootFilesystem](#postgresql_containerSecurityContext_readOnlyRootFilesystem )     | No      | boolean | No         | -          | -                 |
| - [runAsGroup](#postgresql_containerSecurityContext_runAsGroup )                             | No      | integer | No         | -          | -                 |
| - [runAsNonRoot](#postgresql_containerSecurityContext_runAsNonRoot )                         | No      | boolean | No         | -          | -                 |
| - [runAsUser](#postgresql_containerSecurityContext_runAsUser )                               | No      | integer | No         | -          | -                 |

#### <a name="postgresql_containerSecurityContext_allowPrivilegeEscalation"></a>1.4.1. Property `postgres > postgresql > containerSecurityContext > allowPrivilegeEscalation`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="postgresql_containerSecurityContext_capabilities"></a>1.4.2. Property `postgres > postgresql > containerSecurityContext > capabilities`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type            | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [drop](#postgresql_containerSecurityContext_capabilities_drop ) | No      | array of string | No         | -          | -                 |

##### <a name="postgresql_containerSecurityContext_capabilities_drop"></a>1.4.2.1. Property `postgres > postgresql > containerSecurityContext > capabilities > drop`

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

| Each item of this array must be                                            | Description |
| -------------------------------------------------------------------------- | ----------- |
| [drop items](#postgresql_containerSecurityContext_capabilities_drop_items) | -           |

###### <a name="postgresql_containerSecurityContext_capabilities_drop_items"></a>1.4.2.1.1. postgres > postgresql > containerSecurityContext > capabilities > drop > drop items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="postgresql_containerSecurityContext_readOnlyRootFilesystem"></a>1.4.3. Property `postgres > postgresql > containerSecurityContext > readOnlyRootFilesystem`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="postgresql_containerSecurityContext_runAsGroup"></a>1.4.4. Property `postgres > postgresql > containerSecurityContext > runAsGroup`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

#### <a name="postgresql_containerSecurityContext_runAsNonRoot"></a>1.4.5. Property `postgres > postgresql > containerSecurityContext > runAsNonRoot`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

#### <a name="postgresql_containerSecurityContext_runAsUser"></a>1.4.6. Property `postgres > postgresql > containerSecurityContext > runAsUser`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

### <a name="postgresql_extraObjects"></a>1.5. Property `postgres > postgresql > extraObjects`

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

| Each item of this array must be                      | Description |
| ---------------------------------------------------- | ----------- |
| [extraObjects items](#postgresql_extraObjects_items) | -           |

#### <a name="postgresql_extraObjects_items"></a>1.5.1. postgres > postgresql > extraObjects > extraObjects items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [apiVersion](#postgresql_extraObjects_items_apiVersion ) | No      | string | No         | -          | -                 |
| - [kind](#postgresql_extraObjects_items_kind )             | No      | string | No         | -          | -                 |
| - [metadata](#postgresql_extraObjects_items_metadata )     | No      | object | No         | -          | -                 |
| - [spec](#postgresql_extraObjects_items_spec )             | No      | object | No         | -          | -                 |

##### <a name="postgresql_extraObjects_items_apiVersion"></a>1.5.1.1. Property `postgres > postgresql > extraObjects > extraObjects items > apiVersion`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_extraObjects_items_kind"></a>1.5.1.2. Property `postgres > postgresql > extraObjects > extraObjects items > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_extraObjects_items_metadata"></a>1.5.1.3. Property `postgres > postgresql > extraObjects > extraObjects items > metadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#postgresql_extraObjects_items_metadata_name )           | No      | string | No         | -          | -                 |
| - [namespace](#postgresql_extraObjects_items_metadata_namespace ) | No      | string | No         | -          | -                 |

###### <a name="postgresql_extraObjects_items_metadata_name"></a>1.5.1.3.1. Property `postgres > postgresql > extraObjects > extraObjects items > metadata > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_metadata_namespace"></a>1.5.1.3.2. Property `postgres > postgresql > extraObjects > extraObjects items > metadata > namespace`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_extraObjects_items_spec"></a>1.5.1.4. Property `postgres > postgresql > extraObjects > extraObjects items > spec`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type            | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [dnsNames](#postgresql_extraObjects_items_spec_dnsNames )       | No      | array of string | No         | -          | -                 |
| - [duration](#postgresql_extraObjects_items_spec_duration )       | No      | string          | No         | -          | -                 |
| - [issuerRef](#postgresql_extraObjects_items_spec_issuerRef )     | No      | object          | No         | -          | -                 |
| - [privateKey](#postgresql_extraObjects_items_spec_privateKey )   | No      | object          | No         | -          | -                 |
| - [renewBefore](#postgresql_extraObjects_items_spec_renewBefore ) | No      | string          | No         | -          | -                 |
| - [secretName](#postgresql_extraObjects_items_spec_secretName )   | No      | string          | No         | -          | -                 |
| - [selfSigned](#postgresql_extraObjects_items_spec_selfSigned )   | No      | object          | No         | -          | -                 |

###### <a name="postgresql_extraObjects_items_spec_dnsNames"></a>1.5.1.4.1. Property `postgres > postgresql > extraObjects > extraObjects items > spec > dnsNames`

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

| Each item of this array must be                                      | Description |
| -------------------------------------------------------------------- | ----------- |
| [dnsNames items](#postgresql_extraObjects_items_spec_dnsNames_items) | -           |

###### <a name="postgresql_extraObjects_items_spec_dnsNames_items"></a>1.5.1.4.1.1. postgres > postgresql > extraObjects > extraObjects items > spec > dnsNames > dnsNames items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_duration"></a>1.5.1.4.2. Property `postgres > postgresql > extraObjects > extraObjects items > spec > duration`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_issuerRef"></a>1.5.1.4.3. Property `postgres > postgresql > extraObjects > extraObjects items > spec > issuerRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                      | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [kind](#postgresql_extraObjects_items_spec_issuerRef_kind ) | No      | string | No         | -          | -                 |
| - [name](#postgresql_extraObjects_items_spec_issuerRef_name ) | No      | string | No         | -          | -                 |

###### <a name="postgresql_extraObjects_items_spec_issuerRef_kind"></a>1.5.1.4.3.1. Property `postgres > postgresql > extraObjects > extraObjects items > spec > issuerRef > kind`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_issuerRef_name"></a>1.5.1.4.3.2. Property `postgres > postgresql > extraObjects > extraObjects items > spec > issuerRef > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_privateKey"></a>1.5.1.4.4. Property `postgres > postgresql > extraObjects > extraObjects items > spec > privateKey`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                 | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------ | ------- | ------- | ---------- | ---------- | ----------------- |
| - [algorithm](#postgresql_extraObjects_items_spec_privateKey_algorithm ) | No      | string  | No         | -          | -                 |
| - [size](#postgresql_extraObjects_items_spec_privateKey_size )           | No      | integer | No         | -          | -                 |

###### <a name="postgresql_extraObjects_items_spec_privateKey_algorithm"></a>1.5.1.4.4.1. Property `postgres > postgresql > extraObjects > extraObjects items > spec > privateKey > algorithm`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_privateKey_size"></a>1.5.1.4.4.2. Property `postgres > postgresql > extraObjects > extraObjects items > spec > privateKey > size`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

###### <a name="postgresql_extraObjects_items_spec_renewBefore"></a>1.5.1.4.5. Property `postgres > postgresql > extraObjects > extraObjects items > spec > renewBefore`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_secretName"></a>1.5.1.4.6. Property `postgres > postgresql > extraObjects > extraObjects items > spec > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_extraObjects_items_spec_selfSigned"></a>1.5.1.4.7. Property `postgres > postgresql > extraObjects > extraObjects items > spec > selfSigned`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

### <a name="postgresql_extraVolumeMounts"></a>1.6. Property `postgres > postgresql > extraVolumeMounts`

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

| Each item of this array must be                                | Description |
| -------------------------------------------------------------- | ----------- |
| [extraVolumeMounts items](#postgresql_extraVolumeMounts_items) | -           |

#### <a name="postgresql_extraVolumeMounts_items"></a>1.6.1. postgres > postgresql > extraVolumeMounts > extraVolumeMounts items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                      | Pattern | Type    | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [mountPath](#postgresql_extraVolumeMounts_items_mountPath ) | No      | string  | No         | -          | -                 |
| - [name](#postgresql_extraVolumeMounts_items_name )           | No      | string  | No         | -          | -                 |
| - [readOnly](#postgresql_extraVolumeMounts_items_readOnly )   | No      | boolean | No         | -          | -                 |

##### <a name="postgresql_extraVolumeMounts_items_mountPath"></a>1.6.1.1. Property `postgres > postgresql > extraVolumeMounts > extraVolumeMounts items > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_extraVolumeMounts_items_name"></a>1.6.1.2. Property `postgres > postgresql > extraVolumeMounts > extraVolumeMounts items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_extraVolumeMounts_items_readOnly"></a>1.6.1.3. Property `postgres > postgresql > extraVolumeMounts > extraVolumeMounts items > readOnly`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="postgresql_extraVolumes"></a>1.7. Property `postgres > postgresql > extraVolumes`

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

| Each item of this array must be                      | Description |
| ---------------------------------------------------- | ----------- |
| [extraVolumes items](#postgresql_extraVolumes_items) | -           |

#### <a name="postgresql_extraVolumes_items"></a>1.7.1. postgres > postgresql > extraVolumes > extraVolumes items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                               | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [emptyDir](#postgresql_extraVolumes_items_emptyDir ) | No      | object | No         | -          | -                 |
| - [name](#postgresql_extraVolumes_items_name )         | No      | string | No         | -          | -                 |
| - [secret](#postgresql_extraVolumes_items_secret )     | No      | object | No         | -          | -                 |

##### <a name="postgresql_extraVolumes_items_emptyDir"></a>1.7.1.1. Property `postgres > postgresql > extraVolumes > extraVolumes items > emptyDir`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

##### <a name="postgresql_extraVolumes_items_name"></a>1.7.1.2. Property `postgres > postgresql > extraVolumes > extraVolumes items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_extraVolumes_items_secret"></a>1.7.1.3. Property `postgres > postgresql > extraVolumes > extraVolumes items > secret`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                          | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [secretName](#postgresql_extraVolumes_items_secret_secretName ) | No      | string | No         | -          | -                 |

###### <a name="postgresql_extraVolumes_items_secret_secretName"></a>1.7.1.3.1. Property `postgres > postgresql > extraVolumes > extraVolumes items > secret > secretName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

### <a name="postgresql_image"></a>1.8. Property `postgres > postgresql > image`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                  | Pattern | Type    | Deprecated | Definition | Title/Description |
| --------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [imagePullPolicy](#postgresql_image_imagePullPolicy )   | No      | string  | No         | -          | -                 |
| - [registry](#postgresql_image_registry )                 | No      | string  | No         | -          | -                 |
| - [repository](#postgresql_image_repository )             | No      | string  | No         | -          | -                 |
| - [tag](#postgresql_image_tag )                           | No      | string  | No         | -          | -                 |
| - [useHardenedImage](#postgresql_image_useHardenedImage ) | No      | boolean | No         | -          | -                 |

#### <a name="postgresql_image_imagePullPolicy"></a>1.8.1. Property `postgres > postgresql > image > imagePullPolicy`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="postgresql_image_registry"></a>1.8.2. Property `postgres > postgresql > image > registry`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="postgresql_image_repository"></a>1.8.3. Property `postgres > postgresql > image > repository`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="postgresql_image_tag"></a>1.8.4. Property `postgres > postgresql > image > tag`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

#### <a name="postgresql_image_useHardenedImage"></a>1.8.5. Property `postgres > postgresql > image > useHardenedImage`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="postgresql_initContainers"></a>1.9. Property `postgres > postgresql > initContainers`

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

| Each item of this array must be                          | Description |
| -------------------------------------------------------- | ----------- |
| [initContainers items](#postgresql_initContainers_items) | -           |

#### <a name="postgresql_initContainers_items"></a>1.9.1. postgres > postgresql > initContainers > initContainers items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                               | Pattern | Type            | Deprecated | Definition | Title/Description |
| ---------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------- |
| - [command](#postgresql_initContainers_items_command )                 | No      | array of string | No         | -          | -                 |
| - [image](#postgresql_initContainers_items_image )                     | No      | string          | No         | -          | -                 |
| - [name](#postgresql_initContainers_items_name )                       | No      | string          | No         | -          | -                 |
| - [securityContext](#postgresql_initContainers_items_securityContext ) | No      | object          | No         | -          | -                 |
| - [volumeMounts](#postgresql_initContainers_items_volumeMounts )       | No      | array of object | No         | -          | -                 |

##### <a name="postgresql_initContainers_items_command"></a>1.9.1.1. Property `postgres > postgresql > initContainers > initContainers items > command`

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

| Each item of this array must be                                 | Description |
| --------------------------------------------------------------- | ----------- |
| [command items](#postgresql_initContainers_items_command_items) | -           |

###### <a name="postgresql_initContainers_items_command_items"></a>1.9.1.1.1. postgres > postgresql > initContainers > initContainers items > command > command items

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_initContainers_items_image"></a>1.9.1.2. Property `postgres > postgresql > initContainers > initContainers items > image`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_initContainers_items_name"></a>1.9.1.3. Property `postgres > postgresql > initContainers > initContainers items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="postgresql_initContainers_items_securityContext"></a>1.9.1.4. Property `postgres > postgresql > initContainers > initContainers items > securityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                         | Pattern | Type    | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [runAsNonRoot](#postgresql_initContainers_items_securityContext_runAsNonRoot ) | No      | boolean | No         | -          | -                 |
| - [runAsUser](#postgresql_initContainers_items_securityContext_runAsUser )       | No      | integer | No         | -          | -                 |

###### <a name="postgresql_initContainers_items_securityContext_runAsNonRoot"></a>1.9.1.4.1. Property `postgres > postgresql > initContainers > initContainers items > securityContext > runAsNonRoot`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

###### <a name="postgresql_initContainers_items_securityContext_runAsUser"></a>1.9.1.4.2. Property `postgres > postgresql > initContainers > initContainers items > securityContext > runAsUser`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

##### <a name="postgresql_initContainers_items_volumeMounts"></a>1.9.1.5. Property `postgres > postgresql > initContainers > initContainers items > volumeMounts`

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

| Each item of this array must be                                           | Description |
| ------------------------------------------------------------------------- | ----------- |
| [volumeMounts items](#postgresql_initContainers_items_volumeMounts_items) | -           |

###### <a name="postgresql_initContainers_items_volumeMounts_items"></a>1.9.1.5.1. postgres > postgresql > initContainers > initContainers items > volumeMounts > volumeMounts items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                      | Pattern | Type    | Deprecated | Definition | Title/Description |
| ----------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [mountPath](#postgresql_initContainers_items_volumeMounts_items_mountPath ) | No      | string  | No         | -          | -                 |
| - [name](#postgresql_initContainers_items_volumeMounts_items_name )           | No      | string  | No         | -          | -                 |
| - [readOnly](#postgresql_initContainers_items_volumeMounts_items_readOnly )   | No      | boolean | No         | -          | -                 |

###### <a name="postgresql_initContainers_items_volumeMounts_items_mountPath"></a>1.9.1.5.1.1. Property `postgres > postgresql > initContainers > initContainers items > volumeMounts > volumeMounts items > mountPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_initContainers_items_volumeMounts_items_name"></a>1.9.1.5.1.2. Property `postgres > postgresql > initContainers > initContainers items > volumeMounts > volumeMounts items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="postgresql_initContainers_items_volumeMounts_items_readOnly"></a>1.9.1.5.1.3. Property `postgres > postgresql > initContainers > initContainers items > volumeMounts > volumeMounts items > readOnly`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

### <a name="postgresql_podSecurityContext"></a>1.10. Property `postgres > postgresql > podSecurityContext`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                             | Pattern | Type    | Deprecated | Definition | Title/Description |
| ---------------------------------------------------- | ------- | ------- | ---------- | ---------- | ----------------- |
| - [fsGroup](#postgresql_podSecurityContext_fsGroup ) | No      | integer | No         | -          | -                 |

#### <a name="postgresql_podSecurityContext_fsGroup"></a>1.10.1. Property `postgres > postgresql > podSecurityContext > fsGroup`

|              |           |
| ------------ | --------- |
| **Type**     | `integer` |
| **Required** | No        |

----------------------------------------------------------------------------------------------------------------------------
