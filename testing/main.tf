provider "aws" {
  region                = "us-west-2"
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "default_vpc"
  }
}

data "aws_ami" "centos_latest" {
owners      = ["679593333241"]
most_recent = true

  filter {
      name   = "name"
      values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
      name   = "architecture"
      values = ["x86_64"]
  }

  filter {
      name   = "root-device-type"
      values = ["ebs"]
  }
}

resource "aws_key_pair" "stage_keypair" {
  key_name              = var.key_name
  public_key            = file(var.key_path)
}

