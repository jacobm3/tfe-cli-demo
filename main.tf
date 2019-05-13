provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "jmartinson-d41d8cd98f00b204e00998ecf8427e"
  acl    = "private"

  tags = {
    owner = "jmartinson@hashicorp.com"
  }
}
