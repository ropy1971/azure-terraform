
### variables for Resource Group

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

### variables for Virtual Network resource

variable "virtual_network_name" {

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

### variables for Subnet resource

variable "subnet_address_prefix" {

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
