resource "aws_vpc" "vpc" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "private_subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.10.0.0/24"
}


#resource "aws_security_group" "ecs_security_group" {
#  name        = "ecs_security_group"
#  description = "ECS Allowed Ports"
#  vpc_id      = aws_vpc.vpc.id
#
#  ingress {
#    protocol    = "tcp"
#    from_port   = 22
#    to_port     = 22
#    cidr_blocks = ["73.252.146.186/32"]
#  }
#  egress {
#    protocol    = -1
#    from_port   = 0
#    to_port     = 0
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#}

