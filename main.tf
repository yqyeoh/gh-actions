terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "yq/gh-actions-3-1"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "yq-gh-actions-ci"
  tags = {
    Purpose = "github-actions-workshop"
  }
}
