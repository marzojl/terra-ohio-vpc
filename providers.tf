# --- root/providers.tf ---

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "remote" { # Terraform Cloud Backend
    organization = "marzojl-terra"

    workspaces {
      name = "ohio-vpc"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}