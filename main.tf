provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "jmartinson-demo-bucket"
  acl    = "private"

  tags = {
    owner = "jmartinson@hashicorp.com"
  }
}
