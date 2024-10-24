# Argus config helm chart

A Helm chart for injecting Argus configuration into a deployment.

## Parameters

### Global parameters


### App context (provided by Argus API)

| Name                                          | Description                                        | Value |
| --------------------------------------------- | -------------------------------------------------- | ----- |
| `global.appContext.envContextConfigMapName`   | App environment level configuration configmap name | `""`  |
| `global.appContext.stackContextConfigMapName` | Stack level configuration configmap name           | `""`  |

### App secrets (provided by Argus API)

| Name                                         | Description                                                     | Value     |
| -------------------------------------------- | --------------------------------------------------------------- | --------- |
| `global.appSecrets.envSecret.secretName`     | Environment-level Kube secret name to write External Secrets to | `""`      |
| `global.appSecrets.envSecret.secretKey`      | Environment-level secret key to map External Secrets from       | `""`      |
| `global.appSecrets.stackSecret.secretName`   | Stack-level Kube secret name to write External Secrets to       | `""`      |
| `global.appSecrets.stackSecret.secretKey`    | Stack-level secret key to map External Secrets from             | `""`      |
| `global.appSecrets.clusterSecret.secretName` | Cluster-level Kube secret name to write External Secrets to     | `""`      |
| `global.appSecrets.clusterSecret.secretKey`  | Cluster-level secret key to map External Secrets from           | `""`      |
| `global.deploymentStage`                     | Deployment stage (eg: rdev, staging, prod)                      | `staging` |

### global.ingress Ingress configuration

| Name                  | Description  | Value            |
| --------------------- | ------------ | ---------------- |
| `global.ingress.host` | Ingress host | `foo.example.co` |
