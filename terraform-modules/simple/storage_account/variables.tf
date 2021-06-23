
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

### storage

variable "storage_account_name" {

  type        = string
  default     = ""
  description = ""

}

variable "storage_account_tier" {

  type        = string
  default     = "Standard"
  description = ""

}

variable "storage_account_kind" {

  type        = string
  default     = "StorageV2"
  description = ""

}

variable "storage_account_type" {

  type        = string
  default     = "LRS"
  description = ""

}

variable "storage_account_access" {

  type        = string
  default     = "Cool"
  description = ""

}

variable "storage_account_https" {

  type        = string
  default     = "true"
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
