terraform {
  required_providers {
    kind = {
        source = "unicell"
        version = "0.0.2-u2"
    }
  }
}

provider "kind" {}