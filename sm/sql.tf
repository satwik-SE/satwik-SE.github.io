data "azurerm_client_config" "current" {}

resource "aws_apigatewayv2_api" "example" {
  disable_execute_api_endpoint = true
  fail_on_warnings = true
  name                       = "example-websocket-api"
  protocol_type              = "WEBSOCKET"
}