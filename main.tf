provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-155782"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}