# Agent Registry operator

This chart installs the Agent Registry operator and its `AgentProfile` and
`Agent` custom resource definitions.

Set `managedNamespaces` to the Argus namespaces the operator may reconcile.
The chart creates one Role and RoleBinding in each namespace. An empty list
limits the operator to its release namespace.

Nonproduction Argo CD applications can source this chart directly from a Git
commit. Published releases use the repository's standard chart release
workflow.
