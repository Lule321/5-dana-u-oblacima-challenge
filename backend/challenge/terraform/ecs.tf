resource "aws_ecs_cluster" "cirrus_cluster" {
  name = "cirrus-cluster"
  setting {
    name  = "containerInsights"
    value = "disabled"
  }

}

resource "aws_ecs_service" "cirrus_cluster_cirrus_cont_service" {
  cluster = "arn:aws:ecs:eu-west-1:258952860444:cluster/cirrus-cluster"
  deployment_circuit_breaker {
    enable   = false
    rollback = false
  }

  deployment_controller {
    type = "ECS"
  }

  deployment_maximum_percent         = 200
  deployment_minimum_healthy_percent = 100
  desired_count                      = 1
  health_check_grace_period_seconds  = 30000
  iam_role                           = "aws-service-role"
  launch_type                        = "FARGATE"
  load_balancer {
    container_name   = "cirrus-cont"
    container_port   = 80
    target_group_arn = aws_alb_target_group.ecs_cirrus_cluster___targetgroup.id
  }

  name = "cirrus-cont-service"
  network_configuration {
    assign_public_ip = true
    security_groups  = [aws_security_group.ecs_cirrus_cluster___ecs_securitygroup.id]
    subnets          = [aws_subnet.ecs_cirrus_cluster___public_subnet_2.id, aws_subnet.ecs_cirrus_cluster___public_subnet_1.id]
  }

  platform_version    = "LATEST"
  propagate_tags      = "NONE"
  scheduling_strategy = "REPLICA"
  task_definition     = "first-run-task-definition:4"
}



resource "aws_internet_gateway" "ecs_cirrus_cluster___internetgateway" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - InternetGateway"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - InternetGateway"
  }

  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_route_table" "ecs_cirrus_cluster___routetable" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - RouteTable"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - RouteTable"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ecs_cirrus_cluster___internetgateway.id
  }

  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_route_table" "rtb_06654dc967eaae033" {
  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_security_group" "ecs_cirrus_cluster___alb_securitygroup" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - ALB SecurityGroup"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - ALB SecurityGroup"
  }

  description = "ELB Allowed Ports"
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

  name   = "EC2ContainerService-cirrus-cluster-AlbSecurityGroup-1QQFU0VQFS7ZA"
  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_security_group" "ecs_cirrus_cluster___ecs_securitygroup" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - ECS SecurityGroup"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - ECS SecurityGroup"
  }

  description = "ECS Allowed Ports"
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

  ingress {
    from_port       = 1
    protocol        = "tcp"
    security_groups = ["sg-0af7fb6e1f0c82ab6"]
    to_port         = 65535
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  name   = "EC2ContainerService-cirrus-cluster-EcsSecurityGroup-14TW36KDAP9YQ"
  vpc_id = aws_vpc.ecs_cirrus_cluster___vpc.id
}