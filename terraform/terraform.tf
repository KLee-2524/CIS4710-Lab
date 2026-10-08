terraform {

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "kel-aws-org-2"

    workspaces {
      name = "cis-4710-lab"
    }
  }

  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}