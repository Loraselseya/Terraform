terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.49.0"
    }
  }
  backend "s3" {
    region = "ap-south-1"
    bucket = "terraform-gitlab-project"
    key = "terraform-project/terraform.tfstate"
    encrypt = True
  }
}

provider "aws" {
    region = "ap-south-1"
  # Configuration options
}
