# Platform Pulse — GitOps repo

Helm chart for the Platform Pulse dashboard. ArgoCD watches
`charts/platform-pulse` and syncs it to the EKS cluster. The app repo's
CI updates `image.tag` in `charts/platform-pulse/values.yaml` on each build.
