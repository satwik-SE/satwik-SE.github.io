data "azurerm_client_config" "current" {}

resource "aws_kms_key" "foo" {
  enable_key_rotation = true
  key_usage = "ENCRYPT_DECRYPT"
  description              = "KMS key template"
}