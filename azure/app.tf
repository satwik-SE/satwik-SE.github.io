
resource "azurerm_public_ip" "satwiktest" {
  name                = "satwiktest"
  resource_group_name = azurerm_resource_group.SecurityTestingRG.name
  location            = azurerm_resource_group.SecurityTestingRG.location
  allocation_method   = "Dynamic"

}
resource "azurerm_application_gateway" "satwiktest" {
    name = var.application_gateway_name
    enable_http2 = false
    autoscale_configuration {
        min_capacity = 0
        max_capacity = 10
    }
    backend_address_pool {
        name = var.backend_address_pool_name
        fqdns = ""
        ip_addresses = "10.2.43.2"
    }
    backend_http_settings {
        name = var.http_setting_name
        port = 80
        protocol = "Http"
    }
    
    frontend_ip_configuration {
        name = var.frontend_ip_configuration_name
        public_ip_address_id = azurerm_public_ip.satwiktest.id
    }

    frontend_port {
        name = var.frontend_port_80
        port = 80
    }

    frontend_port {
        name = var.frontend_port_200
        port = 200
    }

    http_listener {
        name = var.listener_name
        frontend_ip_configuration_name = var.frontend_ip_configuration_name
        frontend_port_name = var.frontend_port_80
        protocol = "Http"
    }

    http_listener {
        name = var.listener_name_2
        frontend_ip_configuration_name = var.frontend_ip_configuration_name
        frontend_port_name = var.frontend_port_200
        protocol = "Http"
    }

    redirect_configuration {
        name  = var.listener_name_2
        redirect_type = "Permanent"
        include_path = true
        include_query_string = true
        target_listener_name = var.listener_name
    }

    request_routing_rules {
        name = var.request_routing_rule_name
        backend_address_pool_name = var.backend_address_pool_name
        backend_http_settings_name = var.http_setting_name
        http_listener_name = var.listener_name
        priority = 1
    }

    request_routing_rules {
        name = var.request_routing_rule_name2
        http_listener_name = var.listener_name_2
        priority = 2
        redirect_configuration_name = var.var.listener_name_2
    }

}