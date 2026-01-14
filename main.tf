terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "terraformtestbucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}