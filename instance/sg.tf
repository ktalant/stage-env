
resource "aws_security_group" "stage_sg" {
  name        = "stage_sg"
  description = "Used for access to the public instances"
  vpc_id      = aws_default_vpc.default.id

  #SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.accessip
  }

  #HTTP

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = var.accessip
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
      name          = "stage-sg"
  }
}





