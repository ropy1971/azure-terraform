
### main

variable "resource_group_name" {

  type        = string
  default     = ""
  description = ""

}

### monitor

variable "monitor_action_group_name" {

  type        = string
  default     = ""
  description = ""

}

variable "monitor_action_group_shortname" {

  type        = string
  default     = ""
  description = ""

}

variable "contact_name" {

  type        = string
  default     = ""
  description = ""

}

variable "contact_email_address" {

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
