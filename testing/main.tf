provider "aws" {
  region                = "us-west-2"
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "default_vpc"
  }
}
