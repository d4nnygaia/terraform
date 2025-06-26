terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = var.region
  access_key = var.acces_key
  secret_key = var.secret_key
}

resource "aws_s3_bucket" "example" {
  bucket = var.nombres3

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}