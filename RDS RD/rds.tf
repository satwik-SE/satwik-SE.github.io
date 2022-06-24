resource "aws_db_instance" "instance" {
  # oak9: AssociatedRoles.RoleArn is not configured
  # oak9: MonitoringRoleArn is not configured
  # oak9: CACertificateIdentifier is not configured
  # oak9: MasterUserPassword is not configured
  # oak9: MasterUsername is not configured
  # oak9: DBSecurityGroups is not configured
  # oak9: VPCSecurityGroups is not configured
  depends_on              = [aws_security_group.default]
  identifier              = var.identifier
  allocated_storage       = 10
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  name                    = var.db_name
  username                = var.username
  password                = var.password
  vpc_security_group_ids  = [aws_security_group.default.id]
  db_subnet_group_name    = aws_db_subnet_group.default.id
  parameter_group_name    = aws_db_parameter_group.parameter_group.id
  storage_encrypted       = true
  apply_immediately       = true
  max_allocated_storage   = 20
  deletion_protection     = false
  skip_final_snapshot    = true
  final_snapshot_identifier = "DELETE"
  tags = {
    Environment = "dev"
    Name   = "rds_cluster"
  }
}

# The feature name S3_INTEGRATION is not valid for the engine MySQL Community Edition.
# resource "aws_db_instance_role_association" "instance" {
#   db_instance_identifier = aws_db_instance.default.id
#   feature_name           = "S3_INTEGRATION"
#   role_arn               = aws_iam_role.rds_s3_role.arn
# }

resource "aws_db_parameter_group" "instance" {
  name        = "default-mysql57"
  family      = "mysql5.7"
  description = "default_mysql57"
  
 tags = {
    Environment = "dev"
    Name   = "db_parameter_group"
  }
}

resource "aws_db_proxy" "instance" {
  name                   = "db-proxy"
  debug_logging          = false
  engine_family          = "MYSQL"
  idle_client_timeout    = 1800
  require_tls            = true
  role_arn               = aws_iam_role.db_proxy_role.arn
  vpc_security_group_ids = [aws_security_group.default.id]
  vpc_subnet_ids         = [aws_subnet.subnet_1[0].id,aws_subnet.subnet_1[1].id]

  auth {
    auth_scheme = "SECRETS"
    description = "example"
    iam_auth    = "DISABLED"
    secret_arn  = aws_secretsmanager_secret.db_secrets.arn
  }

  tags = {
    Name = "db_proxy"
    Env  = "dev"
  }
}

resource "aws_db_proxy_default_target_group" "instance" {
  db_proxy_name = aws_db_proxy.db_proxy.name
  connection_pool_config {
    connection_borrow_timeout    = 300
    init_query                   = ""
    max_connections_percent      = 90
    max_idle_connections_percent = 50
    session_pinning_filters      = []
  }
}
resource "aws_db_subnet_group" "instance" {
  name        = "main_subnet_group"
  description = "Our main group of subnets"
  subnet_ids  = [aws_subnet.subnet_1[0].id,aws_subnet.subnet_1[1].id]
}

resource "aws_sns_topic" "instance" {
  # oak9: aws_sns_topic_subscription.endpoint is not configured
  # oak9: aws_sns_topic_subscription.endpoint should be set to any of https,email,email-json,sms,sqs,application,lambda
  # oak9: aws_sns_topic_subscription.protocol is not configured
  # oak9: aws_sns_topic_subscription.protocol should be set to any of https,email,email-json,sms,sqs,application,lambda
  name = "rds-events"
}

resource "aws_db_event_subscription" "instance" {
  name      = "rds-event-sub"
  sns_topic = aws_sns_topic.default.arn
  source_type = "db-instance"
  source_ids  = [aws_db_instance.default.id]
  event_categories = [
    "availability",
    "deletion",
    "failover",
    "failure",
    "low storage",
    "maintenance",
    "notification",
    "read replica",
    "recovery",
    "restoration",
  ]
}

resource "aws_db_option_group" "instance" {
  # oak9: OptionConfigurations.VpcSecurityGroupMemberships is not configured
  # oak9: OptionConfigurations.DBSecurityGroupMemberships is not configured
  name                     = "option-group-test-terraform"
  option_group_description = "Terraform Option Group"
  engine_name              = "sqlserver-ee"
  major_engine_version     = "11.00"
  option {
    option_name = "SQLSERVER_BACKUP_RESTORE"

    option_settings {
      name  = "IAM_ROLE_ARN"
      value = aws_iam_role.db_proxy_role.arn
    }
  }
  option {
    option_name = "TDE"
  }
}