

resource "kubernetes_ingress_v1" "rancher" {
  metadata {
    name      = "ingress-route-rancher"
    namespace = "cattle-system"

    annotations = {
      "konghq.com/protocols"  = "https"
      "konghq.com/strip-path" = "false"
    }
  }

  spec {
    ingress_class_name = "kong"

    tls {
      hosts       = ["rancher.crypterio.co"]
      secret_name = "rancher-tls"
    }

    rule {
      host = "rancher.crypterio.co"

      http {
        path {
          path      = "/"
          path_type = "Prefix"

          backend {
            service {
              name = "rancher"

              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}
