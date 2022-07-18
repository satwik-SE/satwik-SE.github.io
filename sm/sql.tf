data "azurerm_client_config" "current" {}

resource "aws_apigatewayv2_api" "example" {
  # oak9: DisableSchemaValidation is not configured
  # oak9: DisableSchemaValidation should be set to any of false
  disable_execute_api_endpoint = true
  fail_on_warnings = true
  name                       = "example-websocket-api"
  protocol_type              = "WEBSOCKET"
}