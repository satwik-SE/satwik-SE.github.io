data "azurerm_client_config" "current" {}

resource "aws_apigatewayv2_api" "example" {
  name                       = "example-websocket-api"
  protocol_type              = "WEBSOCKET"
}