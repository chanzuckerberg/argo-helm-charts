# argo-rollouts

**Title:** argo-rollouts

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                               | Pattern | Type   | Deprecated | Definition | Title/Description                                       |
| -------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------------- |
| - [global](#global )                   | No      | object | No         | -          | Global parameters                                       |
| - [rolloutAnalysis](#rolloutAnalysis ) | No      | object | No         | -          | defines a template that is used to create a analysisRun |
| - [services](#services )               | No      | object | No         | -          | Services to deploy                                      |

## <a name="global"></a>1. Property `argo-rollouts > global`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Global parameters

| Property                            | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ----------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#global_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#global_additionalProperties ) | No      | object | No         | -          | -                                                   |

### <a name="global_strategy"></a>1.1. Property `argo-rollouts > global > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"bluegreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                   | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [bluegreen](#global_strategy_bluegreen ) | No      | object | No         | -          | -                 |

#### <a name="global_strategy_bluegreen"></a>1.1.1. Property `argo-rollouts > global > strategy > bluegreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                   | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| -------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#global_strategy_bluegreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#global_strategy_bluegreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#global_strategy_bluegreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#global_strategy_bluegreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |
| - [](#global_strategy_bluegreen_additionalProperties )                     | No      | object  | No         | -                               | -                                                                                                                       |

##### <a name="global_strategy_bluegreen_activeService"></a>1.1.1.1. Property `argo-rollouts > global > strategy > bluegreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

##### <a name="global_strategy_bluegreen_autoPromotionEnabled"></a>1.1.1.2. Property `argo-rollouts > global > strategy > bluegreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

##### <a name="global_strategy_bluegreen_prePromotionAnalysis"></a>1.1.1.3. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                      | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| --------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#global_strategy_bluegreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#global_strategy_bluegreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#global_strategy_bluegreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata"></a>1.1.1.3.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                          | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| ------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>1.1.1.3.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>1.1.1.3.1.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args"></a>1.1.1.3.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                          | Description |
| ------------------------------------------------------------------------ | ----------- |
| [args items](#global_strategy_bluegreen_prePromotionAnalysis_args_items) | -           |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items"></a>1.1.1.3.2.1. argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#global_strategy_bluegreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#global_strategy_bluegreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_name"></a>1.1.1.3.2.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_value"></a>1.1.1.3.2.1.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom"></a>1.1.1.3.2.1.3. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                             | Pattern | Type             | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>1.1.1.3.2.1.3.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>1.1.1.3.2.1.3.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>1.1.1.3.2.1.3.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates"></a>1.1.1.3.3. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                    | Description |
| ---------------------------------------------------------------------------------- | ----------- |
| [templates items](#global_strategy_bluegreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates_items"></a>1.1.1.3.3.1. argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                        | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ----------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#global_strategy_bluegreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#global_strategy_bluegreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates_items_clusterScope"></a>1.1.1.3.3.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates_items_templateName"></a>1.1.1.3.3.1.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

##### <a name="global_strategy_bluegreen_previewService"></a>1.1.1.4. Property `argo-rollouts > global > strategy > bluegreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

## <a name="rolloutAnalysis"></a>2. Property `argo-rollouts > rolloutAnalysis`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** defines a template that is used to create a analysisRun

| Property                                                       | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| -------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#rolloutAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#rolloutAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#rolloutAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#rolloutAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

### <a name="rolloutAnalysis_analysisRunMetadata"></a>2.1. Property `argo-rollouts > rolloutAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                           | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| ------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#rolloutAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#rolloutAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

#### <a name="rolloutAnalysis_analysisRunMetadata_annotations"></a>2.1.1. Property `argo-rollouts > rolloutAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

#### <a name="rolloutAnalysis_analysisRunMetadata_labels"></a>2.1.2. Property `argo-rollouts > rolloutAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

### <a name="rolloutAnalysis_args"></a>2.2. Property `argo-rollouts > rolloutAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be           | Description |
| ----------------------------------------- | ----------- |
| [args items](#rolloutAnalysis_args_items) | -           |

#### <a name="rolloutAnalysis_args_items"></a>2.2.1. argo-rollouts > rolloutAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#rolloutAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#rolloutAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#rolloutAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

##### <a name="rolloutAnalysis_args_items_name"></a>2.2.1.1. Property `argo-rollouts > rolloutAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="rolloutAnalysis_args_items_value"></a>2.2.1.2. Property `argo-rollouts > rolloutAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

##### <a name="rolloutAnalysis_args_items_valueFrom"></a>2.2.1.3. Property `argo-rollouts > rolloutAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                              | Pattern | Type             | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#rolloutAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#rolloutAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="rolloutAnalysis_args_items_valueFrom_fieldRef"></a>2.2.1.3.1. Property `argo-rollouts > rolloutAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                 | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#rolloutAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="rolloutAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>2.2.1.3.1.1. Property `argo-rollouts > rolloutAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="rolloutAnalysis_args_items_valueFrom_podTemplateHashValue"></a>2.2.1.3.2. Property `argo-rollouts > rolloutAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

### <a name="rolloutAnalysis_templates"></a>2.3. Property `argo-rollouts > rolloutAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                     | Description |
| --------------------------------------------------- | ----------- |
| [templates items](#rolloutAnalysis_templates_items) | -           |

#### <a name="rolloutAnalysis_templates_items"></a>2.3.1. argo-rollouts > rolloutAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                         | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ---------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#rolloutAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#rolloutAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

##### <a name="rolloutAnalysis_templates_items_clusterScope"></a>2.3.1.1. Property `argo-rollouts > rolloutAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

##### <a name="rolloutAnalysis_templates_items_templateName"></a>2.3.1.2. Property `argo-rollouts > rolloutAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

## <a name="services"></a>3. Property `argo-rollouts > services`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** Services to deploy

| Property                      | Pattern | Type   | Deprecated | Definition             | Title/Description |
| ----------------------------- | ------- | ------ | ---------- | ---------------------- | ----------------- |
| - [^.*$](#services_pattern1 ) | Yes     | object | No         | In #/properties/global | Global parameters |

### <a name="services_pattern1"></a>3.1. Pattern Property `argo-rollouts > services > global`
> All properties whose name matches the regular expression
```^.*$``` ([Test](https://regex101.com/?regex=%5E.%2A%24))
must respect the following conditions

|                           |                     |
| ------------------------- | ------------------- |
| **Type**                  | `object`            |
| **Required**              | No                  |
| **Additional properties** | Any type allowed    |
| **Defined in**            | #/properties/global |

**Description:** Global parameters

| Property                                       | Pattern | Type   | Deprecated | Definition | Title/Description                                   |
| ---------------------------------------------- | ------- | ------ | ---------- | ---------- | --------------------------------------------------- |
| - [strategy](#services_pattern1_strategy )     | No      | object | No         | -          | Specifies the rollout strategy for the application. |
| - [](#services_pattern1_additionalProperties ) | No      | object | No         | -          | -                                                   |

#### <a name="services_pattern1_strategy"></a>3.1.1. Property `argo-rollouts > services > ^.*$ > strategy`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |
| **Default**               | `"bluegreen"`    |

**Description:** Specifies the rollout strategy for the application.

| Property                                              | Pattern | Type   | Deprecated | Definition | Title/Description |
| ----------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [bluegreen](#services_pattern1_strategy_bluegreen ) | No      | object | No         | -          | -                 |

##### <a name="services_pattern1_strategy_bluegreen"></a>3.1.1.1. Property `argo-rollouts > services > ^.*$ > strategy > bluegreen`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                              | Pattern | Type    | Deprecated | Definition                      | Title/Description                                                                                                       |
| ------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| - [activeService](#services_pattern1_strategy_bluegreen_activeService )               | No      | string  | No         | -                               | Name of the service that the rollout modifies as the active service.                                                    |
| - [autoPromotionEnabled](#services_pattern1_strategy_bluegreen_autoPromotionEnabled ) | No      | boolean | No         | -                               | indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state. |
| - [prePromotionAnalysis](#services_pattern1_strategy_bluegreen_prePromotionAnalysis ) | No      | object  | No         | In #/properties/rolloutAnalysis | configuration to run analysis before a selector switch                                                                  |
| - [previewService](#services_pattern1_strategy_bluegreen_previewService )             | No      | string  | No         | -                               | Name of the service that the rollout modifies as the preview service.                                                   |
| - [](#services_pattern1_strategy_bluegreen_additionalProperties )                     | No      | object  | No         | -                               | -                                                                                                                       |

###### <a name="services_pattern1_strategy_bluegreen_activeService"></a>3.1.1.1.1. Property `argo-rollouts > services > ^.*$ > strategy > bluegreen > activeService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the active service.

###### <a name="services_pattern1_strategy_bluegreen_autoPromotionEnabled"></a>3.1.1.1.2. Property `argo-rollouts > services > ^.*$ > strategy > bluegreen > autoPromotionEnabled`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** indicates if the rollout should automatically promote the new ReplicaSet to the active service or enter a paused state.

###### <a name="services_pattern1_strategy_bluegreen_prePromotionAnalysis"></a>3.1.1.1.3. Property `argo-rollouts > services > ^.*$ > strategy > bluegreen > prePromotionAnalysis`

|                           |                              |
| ------------------------- | ---------------------------- |
| **Type**                  | `object`                     |
| **Required**              | No                           |
| **Additional properties** | Any type allowed             |
| **Defined in**            | #/properties/rolloutAnalysis |

**Description:** configuration to run analysis before a selector switch

| Property                                                                                      | Pattern | Type            | Deprecated | Definition | Title/Description                                                       |
| --------------------------------------------------------------------------------------------- | ------- | --------------- | ---------- | ---------- | ----------------------------------------------------------------------- |
| - [analysisRunMetadata](#global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata ) | No      | object          | No         | -          | extra labels to add to the AnalysisRun                                  |
| - [args](#global_strategy_bluegreen_prePromotionAnalysis_args )                               | No      | array of object | No         | -          | the arguments that will be added to the AnalysisRuns                    |
| - [templates](#global_strategy_bluegreen_prePromotionAnalysis_templates )                     | No      | array of object | No         | -          | reference to a list of analysis templates to combine for an AnalysisRun |
| - [](#global_strategy_bluegreen_prePromotionAnalysis_additionalProperties )                   | No      | object          | No         | -          | -                                                                       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata"></a>3.1.1.1.3.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > analysisRunMetadata`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** extra labels to add to the AnalysisRun

| Property                                                                                          | Pattern | Type   | Deprecated | Definition | Title/Description                                |
| ------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ------------------------------------------------ |
| - [annotations](#global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_annotations ) | No      | object | No         | -          | additional annotations to add to the AnalysisRun |
| - [labels](#global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_labels )           | No      | object | No         | -          | additional labels to add to the AnalysisRun      |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_annotations"></a>3.1.1.1.3.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > analysisRunMetadata > annotations`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional annotations to add to the AnalysisRun

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_analysisRunMetadata_labels"></a>3.1.1.1.3.1.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > analysisRunMetadata > labels`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

**Description:** additional labels to add to the AnalysisRun

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args"></a>3.1.1.1.3.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** the arguments that will be added to the AnalysisRuns

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                          | Description |
| ------------------------------------------------------------------------ | ----------- |
| [args items](#global_strategy_bluegreen_prePromotionAnalysis_args_items) | -           |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items"></a>3.1.1.1.3.2.1. argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                             | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------ | ------- | ------ | ---------- | ---------- | ----------------- |
| - [name](#global_strategy_bluegreen_prePromotionAnalysis_args_items_name )           | No      | string | No         | -          | -                 |
| - [value](#global_strategy_bluegreen_prePromotionAnalysis_args_items_value )         | No      | string | No         | -          | -                 |
| - [valueFrom](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom ) | No      | object | No         | -          | -                 |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_name"></a>3.1.1.1.3.2.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > name`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_value"></a>3.1.1.1.3.2.1.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > value`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom"></a>3.1.1.1.3.2.1.3. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                             | Pattern | Type             | Deprecated | Definition | Title/Description |
| -------------------------------------------------------------------------------------------------------------------- | ------- | ---------------- | ---------- | ---------- | ----------------- |
| - [fieldRef](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef )                         | No      | object           | No         | -          | -                 |
| - [podTemplateHashValue](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue ) | No      | enum (of string) | No         | -          | -                 |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef"></a>3.1.1.1.3.2.1.3.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef`

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                                | Pattern | Type   | Deprecated | Definition | Title/Description |
| ------------------------------------------------------------------------------------------------------- | ------- | ------ | ---------- | ---------- | ----------------- |
| - [fieldPath](#global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath ) | No      | string | No         | -          | -                 |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_fieldRef_fieldPath"></a>3.1.1.1.3.2.1.3.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom > fieldRef > fieldPath`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_args_items_valueFrom_podTemplateHashValue"></a>3.1.1.1.3.2.1.3.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > args > args items > valueFrom > podTemplateHashValue`

|              |                    |
| ------------ | ------------------ |
| **Type**     | `enum (of string)` |
| **Required** | No                 |

Must be one of:
* "Latest"
* "Stable"

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates"></a>3.1.1.1.3.3. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates`

|              |                   |
| ------------ | ----------------- |
| **Type**     | `array of object` |
| **Required** | No                |

**Description:** reference to a list of analysis templates to combine for an AnalysisRun

|                      | Array restrictions |
| -------------------- | ------------------ |
| **Min items**        | N/A                |
| **Max items**        | N/A                |
| **Items unicity**    | False              |
| **Additional items** | False              |
| **Tuple validation** | See below          |

| Each item of this array must be                                                    | Description |
| ---------------------------------------------------------------------------------- | ----------- |
| [templates items](#global_strategy_bluegreen_prePromotionAnalysis_templates_items) | -           |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates_items"></a>3.1.1.1.3.3.1. argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates > templates items

|                           |                  |
| ------------------------- | ---------------- |
| **Type**                  | `object`         |
| **Required**              | No               |
| **Additional properties** | Any type allowed |

| Property                                                                                        | Pattern | Type    | Deprecated | Definition | Title/Description                                                         |
| ----------------------------------------------------------------------------------------------- | ------- | ------- | ---------- | ---------- | ------------------------------------------------------------------------- |
| - [clusterScope](#global_strategy_bluegreen_prePromotionAnalysis_templates_items_clusterScope ) | No      | boolean | No         | -          | Whether to look for the templateName at cluster scope or namespace scope. |
| - [templateName](#global_strategy_bluegreen_prePromotionAnalysis_templates_items_templateName ) | No      | string  | No         | -          |  name of the AnalysisTemplate to use for the rollout analysis             |

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates_items_clusterScope"></a>3.1.1.1.3.3.1.1. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates > templates items > clusterScope`

|              |           |
| ------------ | --------- |
| **Type**     | `boolean` |
| **Required** | No        |

**Description:** Whether to look for the templateName at cluster scope or namespace scope.

###### <a name="global_strategy_bluegreen_prePromotionAnalysis_templates_items_templateName"></a>3.1.1.1.3.3.1.2. Property `argo-rollouts > global > strategy > bluegreen > prePromotionAnalysis > templates > templates items > templateName`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:**  name of the AnalysisTemplate to use for the rollout analysis

###### <a name="services_pattern1_strategy_bluegreen_previewService"></a>3.1.1.1.4. Property `argo-rollouts > services > ^.*$ > strategy > bluegreen > previewService`

|              |          |
| ------------ | -------- |
| **Type**     | `string` |
| **Required** | No       |

**Description:** Name of the service that the rollout modifies as the preview service.

----------------------------------------------------------------------------------------------------------------------------
