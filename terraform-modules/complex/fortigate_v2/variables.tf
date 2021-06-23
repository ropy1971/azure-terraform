
### compute

variable "admin_username" {

  type        = string
  default     = ""
  description = ""

}

variable "admin_password" {

  type        = string
  default     = ""
  description = ""

}

variable "appliance_virtual_machine_name" {

  type        = string
  default     = ""
  description = ""

}

variable "appliance_virtual_machine_size" {

  type        = string
  default     = ""
  description = ""

}

variable "os_disk_name" {

  type        = string
  default     = ""
  description = ""

}

variable "os_disk_storage_caching" {

  type        = string
  default     = ""
  description = ""

}

variable "os_disk_storage_account_type" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_inside_nic_name" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_inside_nic_ip_address" {

  type        = string
  default     = ""
  description = ""

}


variable "virtual_machine_inside_nic_subnet_id" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_outside_nic_name" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_outside_nic_ip_address" {

  type        = string
  default     = ""
  description = ""

}


variable "virtual_machine_outside_nic_subnet_id" {

  type        = string
  default     = ""
  description = ""

}

variable "fortigate_version" {

  type        = string
  default     = ""
  description = ""

}




### main

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



// subnet 

variable "inside_subnet_address_prefix" {

  type        = string
  default     = ""
  description = ""

}

variable "outside_subnet_address_prefix" {

  type        = string
  default     = ""
  description = ""

}



// public ip

variable "public_ip_name" {

  type        = string
  default     = ""
  description = ""

}



// storage

variable "storage_account_name" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_tier" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_kind" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_replication_type" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_access" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_https" {

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
