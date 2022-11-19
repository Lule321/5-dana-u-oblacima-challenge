resource "aws_alb" "ecs_cirrus_cluster___alb" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - ALB"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - ALB"
  }

  access_logs {
    bucket = ""
  }

  desync_mitigation_mode           = "defensive"
  enable_cross_zone_load_balancing = true
  enable_http2                     = true
  idle_timeout                     = 60
  ip_address_type                  = "ipv4"
  load_balancer_type               = "application"
  name                             = "EC2Co-EcsEl-6AP45ZPOA4TL"
  security_groups                  = ["sg-0af7fb6e1f0c82ab6"]
  subnet_mapping {
    subnet_id = aws_subnet.ecs_cirrus_cluster___public_subnet_2.id
  }

  subnet_mapping {
    subnet_id = aws_subnet.ecs_cirrus_cluster___public_subnet_1.id
  }

  subnets = ["subnet-04b2640fe8f34929a", "subnet-0a9c0db3340731f5f"]
}

resource "aws_alb_listener" "arn_aws_elasticloadbalancing_eu_west_1_258952860444_listener_app_ec2co_ecsel_6ap45zpoa4tl_c54db979cf337312_f5898e507420c331" {
  default_action {
    target_group_arn = aws_alb_target_group.ecs_cirrus_cluster___targetgroup.id
    type             = "forward"
  }

  load_balancer_arn = aws_alb.ecs_cirrus_cluster___alb.id
  port              = 80
  protocol          = "HTTP"
}

resource "aws_alb_listener_rule" "arn_aws_elasticloadbalancing_eu_west_1_258952860444_listener_rule_app_ec2co_ecsel_6ap45zpoa4tl_c54db979cf337312_f5898e507420c331_08024dca2f07f8f3" {
  action {
    target_group_arn = aws_alb_target_group.ecs_cirrus_cluster___targetgroup.id
    type             = "forward"
  }

  condition    = []
  listener_arn = aws_alb_listener.arn_aws_elasticloadbalancing_eu_west_1_258952860444_listener_app_ec2co_ecsel_6ap45zpoa4tl_c54db979cf337312_f5898e507420c331.id
  priority     = 99999
}

resource "aws_alb_target_group" "ecs_cirrus_cluster___targetgroup" {
  tags = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - TargetGroup"
  }

  tags_all = {
    Description = "Created for ECS cluster cirrus-cluster"
    Name        = "ECS cirrus-cluster - TargetGroup"
  }

  deregistration_delay = "300"
  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = aws_db_instance.challenge_dev.allocated_storage
    path                = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  load_balancing_algorithm_type = "round_robin"
  name                          = "EC2Co-Defau-B7SE68CFNE9Z"
  port                          = 80
  protocol                      = "HTTP"
  protocol_version              = "HTTP1"
  stickiness {
    cookie_duration = 86400
    type            = "lb_cookie"
  }

  target_type = "ip"
  vpc_id      = aws_vpc.ecs_cirrus_cluster___vpc.id
}

resource "aws_alb_target_group_attachment" "OtDUL" {
  port             = 80
  target_group_arn = aws_alb_target_group.ecs_cirrus_cluster___targetgroup.id
  target_id        = "10.0.0.54"
}