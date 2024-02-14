terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

#provider "aws" {
#  region  = var.sso_region
#  profile = "default"
#  #access_key = var.aws_access_key_id
#  #secret_key = var.aws_secret_access_key
#}