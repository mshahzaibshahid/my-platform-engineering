terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "dev_namespace" {
  source = "../../modules/k8s-namespace"
  name   = "dev"
  team   = "platform-team"
}
