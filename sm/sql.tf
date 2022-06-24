data "azurerm_client_config" "current" {}

resource "azurerm_postgresql_server" "postgresql" {
  name                = var.postgresql_server_name
  location            = azurerm_resource_group.foo.location
  resource_group_name = azurerm_resource_group.foo.name
}

resource "azurerm_sql_server" "sql" {
  resource_group_name          = azurerm_resource_group.foo.name
  location                     = azurerm_resource_group.foo.location
  version                      = "12.0"
}

resource "azurerm_mysql_server" "my" {
  name                = var.mysql_server_name
  location            = azurerm_resource_group.foo.location
  resource_group_name = azurerm_resource_group.foo.name
}

resource "azurerm_mssql_server" "ms" {
  name                         = var.mssql_server_name
  resource_group_name          = azurerm_resource_group.foo.name
  location                     = azurerm_resource_group.foo.location
  version                      = "12.0"
  administrator_login          = var.administrator_user
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mariadb_server" "maria" {
  name                = var.database_server_name
  location            = azurerm_resource_group.foo.location
  resource_group_name = azurerm_resource_group.foo.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 51200
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false

  administrator_login          = var.administrator_user
  administrator_login_password = var.administrator_login_password
  version                      = "10.2"
  ssl_enforcement_enabled      = false
  auto_grow_enabled            = true

  public_network_access_enabled   = true
}