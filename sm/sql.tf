data "azurerm_client_config" "current" {}

resource "aws_kms_key" "foo" {
  description              = "KMS key template"
  tags                     = "{'Dev':'Test'}"
}