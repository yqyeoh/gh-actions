terraform {
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
  bucket_prefix = "yq-gh-actions"
  tags = {
    Purpose = "github-actions-workshop"
  }
}
