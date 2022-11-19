resource "aws_iam_access_key" "akiatyswlcmog22au27d" {
  status = "Active"
  user   = aws_iam_user.andrijajovanovic.id
}

resource "aws_iam_access_key" "akiatyswlcmog6kzrbbw" {
  status = "Active"
  user   = aws_iam_user.gavrilovojteski.id
}

resource "aws_iam_access_key" "akiatyswlcmogvxkbpv5" {
  status = "Active"
  user   = aws_iam_user.gavrilovojteski.id
}

resource "aws_iam_access_key" "akiatyswlcmomh4sfr6d" {
  status = "Active"
  user   = aws_iam_user.marijakljestan.id
}

resource "aws_iam_access_key" "akiatyswlcmooi5yr5gs" {
  status = "Active"
  user   = aws_iam_user.markokopanja.id
}

resource "aws_iam_access_key" "akiatyswlcmoppxdu3ny" {
  status = "Active"
  user   = aws_iam_user.marijakljestan.id
}

resource "aws_iam_group" "IIyKe" {
  name = "5dayscompetitor"
  path = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_group" "kMaWw" {
  name = "5daysplus"
  path = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_group_membership" "FaUqB" {
  group = aws_iam_group.IIyKe.id
  name  = ""
  users = [aws_iam_user.andrijajovanovic.id, aws_iam_user.marijakljestan.id, aws_iam_user.markokopanja.id, aws_iam_user.gavrilovojteski.id]
}

resource "aws_iam_group_membership" "zUtXD" {
  group = aws_iam_group.kMaWw.id
  name  = ""
  users = [aws_iam_user.andrijajovanovic.id, aws_iam_user.marijakljestan.id, aws_iam_user.markokopanja.id, aws_iam_user.gavrilovojteski.id]
}

resource "aws_iam_group_policy_attachment" "CLElH" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_group_policy_attachment" "JvIGU" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "KXmCM" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "MOSpi" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = aws_iam_policy.arn_aws_iam__258952860444_policy_ecr_public.id
}

resource "aws_iam_group_policy_attachment" "QTCIl" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = aws_iam_policy.arn_aws_iam__258952860444_policy_iam_access_keys.id
}

resource "aws_iam_group_policy_attachment" "SNBlh" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/CloudFrontFullAccess"
}

resource "aws_iam_group_policy_attachment" "SmnHB" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonAPIGatewayAdministrator"
}

resource "aws_iam_group_policy_attachment" "VGBFV" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.id
}

resource "aws_iam_group_policy_attachment" "fGykI" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "jXQgl" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSDataFullAccess"
}

resource "aws_iam_group_policy_attachment" "kRATF" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

resource "aws_iam_group_policy_attachment" "kuroA" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

resource "aws_iam_group_policy_attachment" "mbMxH" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}

resource "aws_iam_group_policy_attachment" "oKWQM" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}

resource "aws_iam_group_policy_attachment" "ojdXY" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = aws_iam_policy.arn_aws_iam__258952860444_policy_ecr_full.id
}

resource "aws_iam_group_policy_attachment" "qqDEf" {
  group      = aws_iam_group.kMaWw.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonElasticContainerRegistryPublicFullAccess"
}

resource "aws_iam_group_policy_attachment" "vAiaq" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonDocDBFullAccess"
}

resource "aws_iam_group_policy_attachment" "yezui" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
}

resource "aws_iam_group_policy_attachment" "zeBLJ" {
  group      = aws_iam_group.IIyKe.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonSESFullAccess"
}

resource "aws_iam_policy" "arn_aws_iam__258952860444_policy_ecr_full" {
  name   = "ecr-full"
  path   = "/"
  policy = "{\"Statement\":[{\"Action\":\"ecr:*\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_policy" "arn_aws_iam__258952860444_policy_ecr_public" {
  name   = "ecr-public"
  path   = "/"
  policy = "{\"Statement\":[{\"Action\":\"ecr-public:*\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_policy" "arn_aws_iam__258952860444_policy_iam_access_keys" {
  name   = "iam-access-keys"
  path   = "/"
  policy = "{\"Statement\":[{\"Action\":[\"iam:GetUser\",\"iam:CreateAccessKey\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_policy" "arn_aws_iam__258952860444_policy_listaccesskeyspolicy" {
  name   = "ListAccessKeysPolicy"
  path   = "/"
  policy = "{\"Statement\":[{\"Action\":\"iam:ListAccessKeys\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_iam_role" "aws_controltower_administratorexecutionrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::654162626279:role/aws-controltower-AuditAdministratorRole\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = 3600
  name                 = "aws-controltower-AdministratorExecutionRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "aws_controltower_cloudwatchlogsrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"CloudTrailAssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudtrail.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "cloudtrail-policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"logs:CreateLogStream\",\"Resource\":\"arn:aws:logs:eu-west-1:258952860444:log-group:aws-controltower/CloudTrailLogs:*\",\"Effect\":\"Allow\",\"Sid\":\"AWSCloudTrailCreateLogStream\"},{\"Action\":\"logs:PutLogEvents\",\"Resource\":\"arn:aws:logs:eu-west-1:258952860444:log-group:aws-controltower/CloudTrailLogs:*\",\"Effect\":\"Allow\",\"Sid\":\"AWSCloudTrailPutLogEvents\"}]}"
  }

  max_session_duration = 3600
  name                 = "aws-controltower-CloudWatchLogsRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "aws_controltower_configrecorderrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWS_ConfigRole", "arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = 3600
  name                 = "aws-controltower-ConfigRecorderRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "aws_controltower_forwardsnsnotificationrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lambda.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
    name   = "sns"
    policy = "{\"Statement\":[{\"Action\":[\"sns:publish\"],\"Resource\":\"arn:aws:sns:*:654162626279:aws-controltower-AggregateSecurityNotifications\",\"Effect\":\"Allow\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = 3600
  name                 = "aws-controltower-ForwardSnsNotificationRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "aws_controltower_readonlyexecutionrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::654162626279:role/aws-controltower-AuditReadOnlyRole\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  max_session_duration = 3600
  name                 = "aws-controltower-ReadOnlyExecutionRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "awscontroltowerexecution" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::655205861117:root\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = 3600
  name                 = "AWSControlTowerExecution"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "awsreservedsso_awsadministratoraccess_f878437a5459cabb" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::258952860444:saml-provider/AWSSSO_a8ddd506fcbf8c0b_DO_NOT_DELETE\"},\"Action\":[\"sts:AssumeRoleWithSAML\",\"sts:TagSession\"],\"Condition\":{\"StringEquals\":{\"SAML:aud\":\"https://signin.aws.amazon.com/saml\"}}}]}"
  description        = "Provides full access to AWS services and resources"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = 43200
  name                 = "AWSReservedSSO_AWSAdministratorAccess_f878437a5459cabb"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "awsreservedsso_awsorganizationsfullaccess_0feb54879bfd8418" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::258952860444:saml-provider/AWSSSO_a8ddd506fcbf8c0b_DO_NOT_DELETE\"},\"Action\":[\"sts:AssumeRoleWithSAML\",\"sts:TagSession\"],\"Condition\":{\"StringEquals\":{\"SAML:aud\":\"https://signin.aws.amazon.com/saml\"}}}]}"
  description        = "Provides full access to AWS Organizations"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"]
  max_session_duration = 43200
  name                 = "AWSReservedSSO_AWSOrganizationsFullAccess_0feb54879bfd8418"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "awsreservedsso_awspoweruseraccess_49fd3314db1dcb7c" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::258952860444:saml-provider/AWSSSO_a8ddd506fcbf8c0b_DO_NOT_DELETE\"},\"Action\":[\"sts:AssumeRoleWithSAML\",\"sts:TagSession\"],\"Condition\":{\"StringEquals\":{\"SAML:aud\":\"https://signin.aws.amazon.com/saml\"}}}]}"
  description        = "Provides full access to AWS services and resources, but does not allow management of Users and groups"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/PowerUserAccess"]
  max_session_duration = 43200
  name                 = "AWSReservedSSO_AWSPowerUserAccess_49fd3314db1dcb7c"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "awsreservedsso_awsreadonlyaccess_d1ae300d08cfd630" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Federated\":\"arn:aws:iam::258952860444:saml-provider/AWSSSO_a8ddd506fcbf8c0b_DO_NOT_DELETE\"},\"Action\":[\"sts:AssumeRoleWithSAML\",\"sts:TagSession\"],\"Condition\":{\"StringEquals\":{\"SAML:aud\":\"https://signin.aws.amazon.com/saml\"}}}]}"
  description        = "This policy grants permissions to view resources and basic metadata across all AWS services"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"]
  max_session_duration = 43200
  name                 = "AWSReservedSSO_AWSReadOnlyAccess_d1ae300d08cfd630"
  path                 = "/aws-reserved/sso.amazonaws.com/eu-west-1/"
}

resource "aws_iam_role" "awsserviceroleforamazoneks" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"eks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows Amazon EKS to call AWS services on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForAmazonEKS"
  path                 = "/aws-service-role/eks.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforapigateway" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ops.apigateway.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "The Service Linked Role is used by Amazon API Gateway."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForAPIGateway"
  path                 = "/aws-service-role/ops.apigateway.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforapplicationautoscaling_ecsservice" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs.application-autoscaling.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForApplicationAutoScaling_ECSService"
  path                 = "/aws-service-role/ecs.application-autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforecs" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Role to enable Amazon ECS to manage your cluster."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforelasticloadbalancing" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"elasticloadbalancing.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows ELB to call AWS services on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforglobalaccelerator" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"globalaccelerator.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows Global Accelerator to call AWS services on customer's behalf"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "awsservicerolefororganizations" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"organizations.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforrds" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows Amazon RDS to manage AWS resources on your behalf"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforsso" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"sso.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "awsserviceroleforsupport" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"support.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Enables resource access for AWS to provide billing, administrative and support services"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "awsservicerolefortrustedadvisor" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"trustedadvisor.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = 3600
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "ecs_to_rds_role" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs-tasks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows ECS tasks to call AWS services on your behalf."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = 3600
  name                 = "ecs-to-rds-role"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "ecsautoscalerole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"application-autoscaling.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"]
  max_session_duration = 3600
  name                 = "ecsAutoscaleRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "ecstaskexecutionrole" {
  assume_role_policy = "{\"Version\":\"2008-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"ecs-tasks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = 3600
  name                 = "ecsTaskExecutionRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "kubernetesrole" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"eks.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  description        = "Allows access to other AWS service resources that are required to operate clusters managed by EKS."
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
  max_session_duration = 3600
  name                 = "KubernetesRole"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role" "rds_monitoring_role" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"monitoring.rds.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  inline_policy {
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = 3600
  name                 = "rds-monitoring-role"
  path                 = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_role_policy" "aws_controltower_cloudwatchlogsrole_cloudtrail_policy" {
  name   = "cloudtrail-policy"
  policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"logs:CreateLogStream\",\"Resource\":\"arn:aws:logs:eu-west-1:258952860444:log-group:aws-controltower/CloudTrailLogs:*\",\"Effect\":\"Allow\",\"Sid\":\"AWSCloudTrailCreateLogStream\"},{\"Action\":\"logs:PutLogEvents\",\"Resource\":\"arn:aws:logs:eu-west-1:258952860444:log-group:aws-controltower/CloudTrailLogs:*\",\"Effect\":\"Allow\",\"Sid\":\"AWSCloudTrailPutLogEvents\"}]}"
  role   = "aws-controltower-CloudWatchLogsRole"
}

resource "aws_iam_role_policy" "aws_controltower_forwardsnsnotificationrole_sns" {
  name   = "sns"
  policy = "{\"Statement\":[{\"Action\":[\"sns:publish\"],\"Resource\":\"arn:aws:sns:*:654162626279:aws-controltower-AggregateSecurityNotifications\",\"Effect\":\"Allow\"}]}"
  role   = "aws-controltower-ForwardSnsNotificationRole"
}

resource "aws_iam_role_policy_attachment" "aws_controltower_administratorexecutionrole_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.aws_controltower_administratorexecutionrole.id
}

resource "aws_iam_role_policy_attachment" "aws_controltower_configrecorderrole_arn_aws_iam__aws_policy_readonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = aws_iam_role.aws_controltower_configrecorderrole.id
}

resource "aws_iam_role_policy_attachment" "aws_controltower_configrecorderrole_arn_aws_iam__aws_policy_service_role_aws_configrole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
  role       = aws_iam_role.aws_controltower_configrecorderrole.id
}

resource "aws_iam_role_policy_attachment" "aws_controltower_forwardsnsnotificationrole_arn_aws_iam__aws_policy_service_role_awslambdabasicexecutionrole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role_policy.aws_controltower_forwardsnsnotificationrole_sns.role
}

resource "aws_iam_role_policy_attachment" "aws_controltower_readonlyexecutionrole_arn_aws_iam__aws_policy_readonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  role       = aws_iam_role.aws_controltower_readonlyexecutionrole.id
}

resource "aws_iam_role_policy_attachment" "awscontroltowerexecution_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.awscontroltowerexecution.id
}

resource "aws_iam_role_policy_attachment" "awsreservedsso_awsadministratoraccess_f878437a5459cabb_arn_aws_iam__aws_policy_administratoraccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.awsreservedsso_awsadministratoraccess_f878437a5459cabb.id
}

resource "aws_iam_role_policy_attachment" "awsreservedsso_awsorganizationsfullaccess_0feb54879bfd8418_arn_aws_iam__aws_policy_awsorganizationsfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSOrganizationsFullAccess"
  role       = aws_iam_role.awsreservedsso_awsorganizationsfullaccess_0feb54879bfd8418.id
}

resource "aws_iam_role_policy_attachment" "awsreservedsso_awspoweruseraccess_49fd3314db1dcb7c_arn_aws_iam__aws_policy_poweruseraccess" {
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
  role       = aws_iam_role.awsreservedsso_awspoweruseraccess_49fd3314db1dcb7c.id
}

resource "aws_iam_role_policy_attachment" "awsreservedsso_awsreadonlyaccess_d1ae300d08cfd630_arn_aws_iam__aws_policy_job_function_viewonlyaccess" {
  policy_arn = "arn:aws:iam::aws:policy/job-function/ViewOnlyAccess"
  role       = aws_iam_role.awsreservedsso_awsreadonlyaccess_d1ae300d08cfd630.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforamazoneks_arn_aws_iam__aws_policy_aws_service_role_amazoneksservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforamazoneks.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforapigateway_arn_aws_iam__aws_policy_aws_service_role_apigatewayservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/APIGatewayServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforapigateway.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforapplicationautoscaling_ecsservice_arn_aws_iam__aws_policy_aws_service_role_awsapplicationautoscalingecsservicepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSApplicationAutoscalingECSServicePolicy"
  role       = aws_iam_role.awsserviceroleforapplicationautoscaling_ecsservice.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforecs_arn_aws_iam__aws_policy_aws_service_role_amazonecsservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforecs.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforelasticloadbalancing_arn_aws_iam__aws_policy_aws_service_role_awselasticloadbalancingservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforelasticloadbalancing.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforglobalaccelerator_arn_aws_iam__aws_policy_aws_service_role_awsglobalacceleratorslrpolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
  role       = aws_iam_role.awsserviceroleforglobalaccelerator.id
}

resource "aws_iam_role_policy_attachment" "awsservicerolefororganizations_arn_aws_iam__aws_policy_aws_service_role_awsorganizationsservicetrustpolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = aws_iam_role.awsservicerolefororganizations.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforrds_arn_aws_iam__aws_policy_aws_service_role_amazonrdsservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforrds.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforsso_arn_aws_iam__aws_policy_aws_service_role_awsssoservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforsso.id
}

resource "aws_iam_role_policy_attachment" "awsserviceroleforsupport_arn_aws_iam__aws_policy_aws_service_role_awssupportservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = aws_iam_role.awsserviceroleforsupport.id
}

resource "aws_iam_role_policy_attachment" "awsservicerolefortrustedadvisor_arn_aws_iam__aws_policy_aws_service_role_awstrustedadvisorservicerolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = aws_iam_role.awsservicerolefortrustedadvisor.id
}

resource "aws_iam_role_policy_attachment" "ecs_to_rds_role_arn_aws_iam__aws_policy_amazonrdsfullaccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = aws_iam_role.ecs_to_rds_role.id
}

resource "aws_iam_role_policy_attachment" "ecsautoscalerole_arn_aws_iam__aws_policy_service_role_amazonec2containerserviceautoscalerole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceAutoscaleRole"
  role       = aws_iam_role.ecsautoscalerole.id
}

resource "aws_iam_role_policy_attachment" "ecstaskexecutionrole_arn_aws_iam__aws_policy_service_role_amazonecstaskexecutionrolepolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = aws_iam_role.ecstaskexecutionrole.id
}

resource "aws_iam_role_policy_attachment" "kubernetesrole_arn_aws_iam__aws_policy_amazoneksclusterpolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.kubernetesrole.id
}

resource "aws_iam_role_policy_attachment" "rds_monitoring_role_arn_aws_iam__aws_policy_service_role_amazonrdsenhancedmonitoringrole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = aws_iam_role.rds_monitoring_role.id
}

resource "aws_iam_saml_provider" "arn_aws_iam__258952860444_saml_provider_awssso_a8ddd506fcbf8c0b_do_not_delete" {
  name                   = "AWSSSO_a8ddd506fcbf8c0b_DO_NOT_DELETE"
  saml_metadata_document = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://portal.sso.eu-west-1.amazonaws.com/saml/assertion/NjU1MjA1ODYxMTE3X2lucy0yNTE4MGE2NTgwZDk1MjY1\">    <md:IDPSSODescriptor WantAuthnRequestsSigned=\"false\" protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\">        <md:KeyDescriptor use=\"signing\">            <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">                <ds:X509Data>                    <ds:X509Certificate>MIIDBjCCAe6gAwIBAgIEOJt+BTANBgkqhkiG9w0BAQsFADBFMRYwFAYDVQQDDA1hbWF6b25hd3MuY29tMQ0wCwYDVQQLDARJREFTMQ8wDQYDVQQKDAZBbWF6b24xCzAJBgNVBAYTAlVTMB4XDTIyMTAxNzEwMjAyMVoXDTI3MTAxNzEwMjAyMVowRTEWMBQGA1UEAwwNYW1hem9uYXdzLmNvbTENMAsGA1UECwwESURBUzEPMA0GA1UECgwGQW1hem9uMQswCQYDVQQGEwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALv7b5XIGuf8+O5Vy6Sd4RaNKYo/WzrNDGLh5rVx4tAc7yw6UxncsLHB8w9ExKFABh5g+3j5ps7o7AY2JaFB56AfMwE04mHM3tb6/VDDqyEWLdmowztqQSangyQiDJUIdmwdbsrBtTn5rbHDkgxyivdOJV2wHS+wJZ6Xy2/c6JV4qRMAox4deZgd39h45+pAmjUAhesP7zvdlt2Y3dj9+sJYIyRIAMf+QYWh1/N5/SRX2R0Iv4T16t7zT46386JIN/U02lixqTM0SgZlzLa+q/kK1evF4l9criIIQA5DehQVbosD3SsqzF50u9bgHo7R4gkNfP0nGtUl16QoxLT4CuECAwEAATANBgkqhkiG9w0BAQsFAAOCAQEARAqoeX9da+fjuEd4wSfANEDpujDW+rl4YXms+iu3aH5U+lfN1gWIpEleCRrfZgtFrvh//e8MeKcITQByPRaiNwYNK7aAP7P77zDPBkcjp5+K/+2haJrqpvMdkc3ShTIJPxONREc9+5LjtsiodTVMmuiwSFbWTvkAO5XhK28BDD6ZMte1KjDmIaSlvR56Msq+xzibVKKsYRNsOFfRgbbxg+jrN8aqjwINexWHOOP7f0GvPGnmkTbmn+YnA71RgynxleB4sQLbgDimhqYdr+CZUmp8n3eEh7QHpT393BpCbwndnb9ecZbUyQxf/o4DTOvAHfupsoYJHiPtY7wBqiRcaA==</ds:X509Certificate>                </ds:X509Data>            </ds:KeyInfo>        </md:KeyDescriptor>        <md:SingleLogoutService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://portal.sso.eu-west-1.amazonaws.com/saml/logout/NjU1MjA1ODYxMTE3X2lucy0yNTE4MGE2NTgwZDk1MjY1\"/>        <md:SingleLogoutService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://portal.sso.eu-west-1.amazonaws.com/saml/logout/NjU1MjA1ODYxMTE3X2lucy0yNTE4MGE2NTgwZDk1MjY1\"/>        <md:NameIDFormat>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</md:NameIDFormat>        <md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://portal.sso.eu-west-1.amazonaws.com/saml/assertion/NjU1MjA1ODYxMTE3X2lucy0yNTE4MGE2NTgwZDk1MjY1\"/>        <md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://portal.sso.eu-west-1.amazonaws.com/saml/assertion/NjU1MjA1ODYxMTE3X2lucy0yNTE4MGE2NTgwZDk1MjY1\"/>    </md:IDPSSODescriptor></md:EntityDescriptor>"
}

resource "aws_iam_user" "andrijajovanovic" {
  name = "andrijajovanovic"
  path = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_user" "gavrilovojteski" {
  name = "gavrilovojteski"
  path = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_user" "marijakljestan" {
  name = "marijakljestan"
  path = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_user" "markokopanja" {
  name = "markokopanja"
  path = aws_iam_policy.arn_aws_iam__258952860444_policy_listaccesskeyspolicy.path
}

resource "aws_iam_user_policy_attachment" "andrijajovanovic_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.andrijajovanovic.id
}

resource "aws_iam_user_policy_attachment" "gavrilovojteski_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.gavrilovojteski.id
}

resource "aws_iam_user_policy_attachment" "marijakljestan_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.marijakljestan.id
}

resource "aws_iam_user_policy_attachment" "markokopanja_arn_aws_iam__aws_policy_iamuserchangepassword" {
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  user       = aws_iam_user.markokopanja.id
}