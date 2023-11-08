terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # This is an example, make sure to check for the latest version.
    }
  }
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
  # It's best practice to configure the AWS provider through environment variables or IAM roles.
}

data "aws_caller_identity" "current" {
    provider = aws

}

locals {
  account_id = data.aws_caller_identity.current.account_id
}
