
### compute

variable "virtual_machine_name" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_nic" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_nic_id" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_size" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_image_publisher" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_image_offer" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_image_sku" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_image_version" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_os_disk_name" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_os_disk_caching" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_os_disk_create" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_os_disk_type" {

  type        = string
  default     = ""
  description = ""

}

variable "virtual_machine_os_disk_size" {

  type        = string
  default     = ""
  description = ""

}

variable "admin_account" {

  type        = string
  default     = ""
  description = ""

}

variable "admin_password" {

  type        = string
  default     = ""
  description = ""

}

variable "provision_vm_agent" {

  type        = string
  default     = ""
  description = ""

}

variable "enable_automatic_upgrades" {

  type        = string
  default     = ""
  description = ""

}

variable "time_zone" {

  type        = string
  default     = ""
  description = ""

}

variable "boot_diagnostics" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_primary_endpoint" {

  type        = string
  default     = ""
  description = ""

}

variable "availability_zone" {

  type        = string
  default     = ""
  description = ""

}

variable "delete_on_termination" {

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
