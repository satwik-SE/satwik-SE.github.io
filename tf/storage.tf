resource "azurerm_storage_account" "satwikstorage"{
    resource_group_name = "SecurityTestingRG"
    location = "East US"
    name = "Satwik-storag-test"
    account_tier = "Standard"
    account_replication_type = "LRS"
    
}