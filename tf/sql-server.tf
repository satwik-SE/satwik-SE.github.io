terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_mssql_server" "satwiktf" {
    resource_group_name = "SecurityTestingRG"
    location = "East US"
    name = "satwik-sql-test"
    version = "12.0"
    administrator_login = "adminaccount"
    administrator_login_password = "BFUthsifn*&%"
}

resource "azurerm_mssql_server_extended_auditing_policy" "example" {
  server_id                               = azurerm_mssql_server.satwiktf.id
  log_monitoring_enabled = true
}