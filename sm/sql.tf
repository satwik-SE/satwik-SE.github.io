data "azurerm_client_config" "current" {}





resource "azurerm_sql_server" "foo" {
  resource_group_name          = azurerm_resource_group.foo.name
  location                     = azurerm_resource_group.foo.location
  version                      = "12.0"
}