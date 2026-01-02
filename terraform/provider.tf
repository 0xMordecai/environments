terraform {
  required_providers {
    kind = {
      source = "ryanfaircloth/kind"
      version = "2.0.0"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.7.0"
    }
  }
}

provider "kind" {}
provider "kubectl" {}