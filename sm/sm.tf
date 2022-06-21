
resource "aws_secretsmanager_secret" "sm" {
  name                    = var.sm_key
  description             = "default config"
  # policy                  = Policy used by Secrets manager ARN check into iam_role file
  tags                    = {
    Name = "SM"
    Env  = "Dev"
  }
}

resource "aws_secretsmanager_secret_version" "sm-sv" {
  secret_id     = aws_secretsmanager_secret.sm.id
  secret_string = var.sm_value
  depends_on    = [aws_secretsmanager_secret.sm]
}

resource "aws_secretsmanager_secret_version" "sm-svu" {
  secret_id     = aws_secretsmanager_secret.sm.id
  secret_string = var.sm_value
  depends_on    = [aws_secretsmanager_secret.sm]
  lifecycle {
    ignore_changes = [
      secret_string,
      secret_binary,
    ]
  }
}

# Rotate secrets
resource "aws_secretsmanager_secret" "rsm" {
  name                    = var.rsm_key
  description             = "Default config2"
  kms_key_id              = aws_kms_key.kms_key.id
  # policy                  = Policy used by Rotate secrets manager  ARN check into iam_role file
  recovery_window_in_days = 10 
  tags                    ={
    Name = "rsm"
    Env = "dev"
  }
}

resource "aws_secretsmanager_secret_version" "rsm-sv" {
  secret_id     = aws_secretsmanager_secret.rsm.id
  secret_string = var.rsm_value
  depends_on    = [aws_secretsmanager_secret.rsm]
}

resource "aws_secretsmanager_secret_version" "rsm-svu" {
  secret_id     = aws_secretsmanager_secret.rsm.id
  secret_string = var.rsm_value
  depends_on    = [aws_secretsmanager_secret.rsm]

  lifecycle {
    ignore_changes = [
      secret_string,
      secret_binary,
    ]
  }
}

# We can use lemda function configuration for that
# resource "aws_secretsmanager_secret_rotation" "rsm-sr" {
#   secret_id           = aws_secretsmanager_secret.rsm.id
#   rotation_lambda_arn = "arn:aws:lambda:us-east-2:709695003849:function:lambda_test"

#   rotation_rules {
#     automatically_after_days = 10
#   }
# }

resource "aws_kms_key" "kms_key" {
  description              = "KMS key to encrypt/decrypt"
  deletion_window_in_days  = 10
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  is_enabled               = true
}
