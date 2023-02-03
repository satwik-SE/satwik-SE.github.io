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

resource "azurerm_public_ip" "satwiktest" {
  name                = "satwiktf"
  resource_group_name = "SecurityTestingRG"
  location            = "East US"
  allocation_method   = "Static"
  sku = "Standard"

}
locals {
  frontend_ip_configuration_name = var.frontend_ip_configuration_name
  redirect_configuration_name    = var.listener_name_2
  listener = [{
    listener_name = var.listener_name,
    listener_port = var.frontend_port_80
  },
  {
    listener_name = var.listener_name_2,
    listener_port = var.frontend_port_200
  }]
}
resource "azurerm_application_gateway" "satwiktest" {
    # oak9: Select either a predefined or custom SSL (TLS) policy type
    name = var.application_gateway_name
    enable_http2 = false
    resource_group_name = "SecurityTestingRG"
    location            = "East US"
    
    sku {
        name = "Standard_v2"
        tier = "Standard_v2"
    }
    autoscale_configuration {
        min_capacity = 0
        max_capacity = 10
    }
    backend_address_pool {
        name = var.backend_address_pool_name
        ip_addresses = ["10.2.43.2"]
    }
    backend_http_settings {
        name = var.http_setting_name
        port = 80
        protocol = "Https"
        cookie_based_affinity = "Disabled"
    }

    gateway_ip_configuration {
        name = "appGatewayIpConfig"
        subnet_id = "/subscriptions/26e3ffed-afcb-4f7a-a34c-d7905542e0c4/resourceGroups/SecurityTestingRG/providers/Microsoft.Network/virtualNetworks/satwiktest/subnets/default"
    }
    
    frontend_ip_configuration {
        name = local.frontend_ip_configuration_name
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

    dynamic "http_listener" {
        for_each = local.listener
        content {
            name = http_listener.value.listener_name
            frontend_ip_configuration_name = var.frontend_ip_configuration_name
            protocol = "Http"
            frontend_port_name = http_listener.value.listener_port
        }
    }

    redirect_configuration {
        name  = local.redirect_configuration_name
        redirect_type = "Permanent"
        include_path = true
        include_query_string = true
        target_listener_name = var.listener_name
    }

    request_routing_rule {
        name = var.request_routing_rule_name
        backend_address_pool_name = var.backend_address_pool_name
        backend_http_settings_name = var.http_setting_name
        http_listener_name = var.listener_name
        priority = 1
        rule_type = "Basic"
    }

    request_routing_rule {
        name = var.request_routing_rule_name2
        http_listener_name = var.listener_name_2
        priority = 2
        redirect_configuration_name = var.listener_name_2
        rule_type = "Basic"
    }

}