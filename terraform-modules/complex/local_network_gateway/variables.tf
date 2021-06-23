

### local network gateway

variable "local_network_gateway_name" {

  type        = string
  default     = ""
  description = ""

}

variable "gateway_ip_address" {

  type        = string
  description = ""

}

variable "address_space" {

  type        = list(string)
  description = ""

}

variable "asn" {

  type        = string
  default     = ""
  description = ""

}

variable "bgp_peering_address" {

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



### virtual network gateway

variable "virtual_network_gateway_id" {

  type        = string
  default     = ""
  description = ""

}



### virtual network gateway connection

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
