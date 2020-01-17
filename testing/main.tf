provider "aws" {
  region                = "us-west-2"
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "default_vpc"
  }
}

data "aws_subnet" "sub1" {
  vpc_id            = aws_default_vpc.default.id 
}

output "subnet_out" {
  value = data.aws_subnet.sub1.*.id[0]
}
