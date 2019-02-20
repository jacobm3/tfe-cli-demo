provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami          = "ami-2757f631"
  instance_type = "t2.small"
  count        = 1

  tags {
    "owner" = "jacobm"
    "Name" = "dev-demo-instance"
    "asdf" = 72
  }
}
