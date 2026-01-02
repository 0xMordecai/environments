terraform {
  required_providers {
    kind = {
      source = "ryanfaircloth/kind"
      version = "2.0.0"
    }
  }
}

provider "kind" {}