variable "application_gateway_name" {
    default = "satwiktf"
}

variable "backend_address_pool_name" {
    default = "satwiktf"
}

variable "frontend_port_80" {
    default = "satwiktf_port_80"
}

variable "frontend_port_200" {
    default = "satwiktf_port_200"
}

variable "frontend_ip_configuration_name" {
    default = "satwiktf"
}

variable "http_setting_name" {
    default = "satwiktf"
}

variable "listener_name" {
    default = "satwiktf"
}

variable "listener_name_2" {
    default = "satwiktf2"
}

variable "request_routing_rule_name" {
    default = "satwiktf"
}

variable "request_routing_rule_name2" {
    default = "satwiktf2"
}

variable "listener" {
    type = list(string)
    default = ["satwiktf", "satwiktf2"]
}