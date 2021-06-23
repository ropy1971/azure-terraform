
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

### virtual network

variable "virtual_network_name" {

  type        = string
  default     = ""
  description = ""

}

### subnet 

variable "subnet_name" {

  type        = string
  default     = ""
  description = ""

}

variable "subnet_address_prefix" {

  type        = string
  default     = ""
  description = ""

}

### network security group

variable "network_security_group_name" {

  type        = string
  default     = ""
  description = ""

}

variable "subnet_id" {

  type        = string
  default     = ""
  description = ""

}

variable "network_security_group_id" {

  type        = string
  default     = ""
  description = ""

}


### route table

variable "route_table_name" {

  type        = string
  default     = ""
  description = ""

}

variable "disable_bgp_route_propagation" {

  type        = bool
  default     = false
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
