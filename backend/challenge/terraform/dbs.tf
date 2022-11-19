
resource "aws_db_instance" "challenge" {
  allocated_storage                     = 200
  auto_minor_version_upgrade            = true
  availability_zone                     = "eu-west-1a"
  backup_retention_period               = 7
  backup_window                         = "23:19-23:49"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = true
  db_subnet_group_name                  = aws_db_subnet_group.default_vpc_0c997aaa205447fb8.id
  delete_automated_backups              = true
  engine                                = "postgres"
  engine_version                        = "13.7"
  identifier                            = "challenge"
  instance_class                        = "db.r6g.xlarge"
  kms_key_id                            = "arn:aws:kms:eu-west-1:258952860444:key/f24ff308-67bf-40ea-8153-b9fd63cce13e"
  license_model                         = "postgresql-license"
  maintenance_window                    = "tue:01:07-tue:01:37"
  max_allocated_storage                 = 1000
  monitoring_interval                   = 60
  monitoring_role_arn                   = aws_iam_role.rds_monitoring_role.arn
  multi_az                              = true
  option_group_name                     = "default:postgres-13"
  parameter_group_name                  = aws_db_parameter_group.default_postgres13.id
  performance_insights_enabled          = true
  performance_insights_kms_key_id       = "arn:aws:kms:eu-west-1:258952860444:key/f24ff308-67bf-40ea-8153-b9fd63cce13e"
  performance_insights_retention_period = 7
  port                                  = 5432
  publicly_accessible                   = true
  skip_final_snapshot                   = true
  storage_encrypted                     = true
  storage_type                          = "gp2"
  username                              = "postgres"
  vpc_security_group_ids                = [aws_vpc.ecs_cirrus_cluster___vpc.default_security_group_id]
}

resource "aws_db_instance" "challenge_dev" {
  allocated_storage                     = 200
  auto_minor_version_upgrade            = true
  availability_zone                     = "eu-west-1b"
  backup_retention_period               = 7
  backup_window                         = "23:21-23:51"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = true
  db_subnet_group_name                  = aws_db_subnet_group.default_vpc_0c997aaa205447fb8.id
  delete_automated_backups              = true
  engine                                = "postgres"
  engine_version                        = "13.7"
  identifier                            = "challenge-dev"
  instance_class                        = "db.r6g.large"
  kms_key_id                            = "arn:aws:kms:eu-west-1:258952860444:key/f24ff308-67bf-40ea-8153-b9fd63cce13e"
  license_model                         = "postgresql-license"
  maintenance_window                    = "wed:01:49-wed:02:19"
  max_allocated_storage                 = 1000
  monitoring_interval                   = 60
  monitoring_role_arn                   = aws_iam_role.rds_monitoring_role.arn
  option_group_name                     = "default:postgres-13"
  parameter_group_name                  = aws_db_parameter_group.default_postgres13.id
  performance_insights_enabled          = true
  performance_insights_kms_key_id       = "arn:aws:kms:eu-west-1:258952860444:key/f24ff308-67bf-40ea-8153-b9fd63cce13e"
  performance_insights_retention_period = 7
  port                                  = 5432
  skip_final_snapshot                   = true
  storage_encrypted                     = true
  storage_type                          = "gp2"
  username                              = "postgres"
  vpc_security_group_ids                = [aws_vpc.ecs_cirrus_cluster___vpc.default_security_group_id]
}

resource "aws_db_parameter_group" "default_postgres13" {
  description = "Default parameter group for postgres13"
  family      = "postgres13"
  name        = "default.postgres13"
}

resource "aws_db_subnet_group" "default_vpc_0c997aaa205447fb8" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0c997aaa205447fb8"
  subnet_ids  = [aws_subnet.ecs_cirrus_cluster___public_subnet_2.id, aws_subnet.ecs_cirrus_cluster___public_subnet_1.id]
}
