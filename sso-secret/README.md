# SSO secret helm chart

A Helm chart for creating an SSO secret (via an External Secret).

## Parameters

### Global parameters

| Name              | Description                                                                         | Value           |
| ----------------- | ----------------------------------------------------------------------------------- | --------------- |
| `clusterName`     | Name of the cluster to configure the sso secret for                                 | `my-cluster`    |
| `secretName`      | Name of the secret to create (both external secret and kubernetes secret resources) | `my-sso-secret` |
| `applicationName` | Name of the application to configure the sso secret for                             | `my-app`        |
