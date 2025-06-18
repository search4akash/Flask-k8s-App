terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Deploy your Flask app (Kubernetes Deployment)
resource "kubernetes_manifest" "flask_app" {
  manifest = yamldecode(file("${path.module}/../k8s/deployment.yaml"))
}

# Expose it with a NodePort service
resource "kubernetes_manifest" "flask_service" {
  manifest = yamldecode(file("${path.module}/../k8s/service.yaml"))
}
