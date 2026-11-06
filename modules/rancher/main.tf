
resource "helm_release" "rancher" {
  name       = "rancher"
  repository = "https://releases.rancher.com/server-charts/stable"
  chart      = "rancher"
  namespace  = "cattle-system"
  create_namespace = true

  # Pin a Rancher chart version compatible with your cluster.
  # version = "YOUR_RANCHER_VERSION"

  wait          = true
  atomic        = true
  cleanup_on_fail = true
  timeout       = 1200

  values = [
    yamlencode({
      hostname         = "rancher.crypterio.co"
      replicas         = 3
      bootstrapPassword = var.rancher_bootstrap_password

      # Kong handles external ingress and TLS.
      ingress = {
        enabled = false
      }

      # TLS terminates at Kong.
      tls = "external"

      # Internal Rancher service.
      service = {
        type = "ClusterIP"
      }
    })
  ]
}

variable "rancher_bootstrap_password" {
  description = "Initial Rancher administrator bootstrap password"
  type        = string
  default     = "fuko09phsurxho"
  sensitive   = true
}
