terraform {
  required_version = ">= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.24.1"
    }
  }
  cloud {
    organization="SOLCOMPUTING"
    workspaces {
      name=%WORKSPACEINFRA%#replace.WORKSPACEINFRA
    }
  }
}

