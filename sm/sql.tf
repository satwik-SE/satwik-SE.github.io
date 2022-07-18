data "azurerm_client_config" "current" {}

resource "aws_apigatewayv2_api" "example" {
  fail_on_warnings = true
  name                       = "example-websocket-api"
  protocol_type              = "WEBSOCKET"
}