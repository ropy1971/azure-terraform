
### Availability

variable "availability_zone" {

  type        = string
  default     = ""
  description = ""

}

### express route 

variable "express_route_circuit_name" {

  type        = string
  default     = ""
  description = ""

}

variable "express_route_circuit_service_provider_name" {

  type        = string
  default     = ""
  description = ""

}

variable "express_route_circuit_peering_location" {

  type        = string
  default     = ""
  description = ""

}

variable "express_route_circuit_bandwidth" {

  type        = number
  default     = 50
  description = ""

}

variable "express_route_circuit_sku_tier" {

  type        = string
  default     = ""
  description = ""

}

variable "express_route_circuit_sku_family" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_network_gateway_connection_name" {

  type        = string
  default     = ""
  description = ""

}

variable "shared_key" {

  type        = string
  default     = ""
  description = ""

}



### resource group

variable "resource_group_name" {

  type        = string
  default     = ""
  description = ""

}

variable "resource_group_location" {

  type        = string
  default     = ""
  description = ""

}



### network

variable "public_ip_name" {

  type        = string
  default     = ""
  description = ""

}

variable "public_ip_sku" {

  type        = string
  default     = ""
  description = ""

}

variable "public_ip_allocation" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_network_gateway_name" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_network_gateway_type" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_network_gateway_bgp" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_network_gateway_sku" {

  type        = string
  default     = ""
  description = ""

}

variable "subnet_id" {

  type        = string
  default     = ""
  description = ""

}



### tagging

variable "tag_application" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_cost_center" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_deployment_method" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_entity" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_environment" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_location" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_msp" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_owner" {

  type        = string
  default     = ""
  description = ""

}

variable "tag_role" {

  type        = string
  default     = ""
  description = ""

}
