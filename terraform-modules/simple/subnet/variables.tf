
### variables for Resource Group

variable "resource_group_name" {

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

### variables for Subnet resource

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
