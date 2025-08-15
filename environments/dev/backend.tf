terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  backend "s3" {
    bucket          = "terraform-bucket-infradeployment"
    key             = "environments/dev/terraform.tfstate"
    region          = "ap-south-1"
    dynamodb_table  = "terraform-lock"

  }
}

provider "aws" {
  region = var.aws_region
}