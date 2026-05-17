terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23"
    }
  }
}

variable "name" {}
variable "team" {}

resource "kubernetes_namespace" "this" {
  metadata {
    name = var.name
    labels = {
      team       = var.team
      managed-by = "terraform"
    }
  }
}

resource "kubernetes_resource_quota" "this" {
  metadata {
    name      = "${var.name}-quota"
    namespace = kubernetes_namespace.this.metadata[0].name
  }
  spec {
    hard = {
      "requests.cpu"    = "2"
      "requests.memory" = "4Gi"
      "limits.cpu"      = "4"
      "limits.memory"   = "8Gi"
    }
  }
}
