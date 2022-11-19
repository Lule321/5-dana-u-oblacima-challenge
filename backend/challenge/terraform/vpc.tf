resource "aws_security_group" "sg_068428e54d02acff5" {
  description = "2022-11-19T16:00:29.082Z"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "ec2-6311"
  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_security_group" "sg_0ba3a76a4cc9f61a1" {
  description = "default VPC security group"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    cidr_blocks     = ["0.0.0.0/0"]
    from_port       = 0
    protocol        = "-1"
    security_groups = ["sg-06045a92f860cf1ba"]
    to_port         = 0
  }

  name   = "default"
  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_subnet" "ecs_cirrus_cluster___public_subnet_1" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - Public Subnet 1"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - Public Subnet 1"
  }

  availability_zone                   = aws_db_instance.challenge.availability_zone
  cidr_block                          = "10.0.0.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_subnet" "ecs_cirrus_cluster___public_subnet_2" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - Public Subnet 2"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - Public Subnet 2"
  }

  availability_zone                   = aws_db_instance.challenge_dev.availability_zone
  cidr_block                          = "10.0.1.0/24"
  private_dns_hostname_type_on_launch = "ip-name"
  vpc_id                              = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_vpc" "ecs_cirrus_cluster___vpc" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - VPC"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - VPC"
  }

  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"
}

resource "aws_route53_resolver_rule_association" "rslvr_autodefined_assoc_vpc_0c997aaa205447fb8_internet_resolver" {
  name             = "System Rule Association"
  resolver_rule_id = "rslvr-autodefined-rr-internet-resolver"
  vpc_id           = aws_vpc.ecs_cirrus_cluster___vpc.id
}