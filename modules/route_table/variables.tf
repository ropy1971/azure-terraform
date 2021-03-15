
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

### network

variable "route_table_name" {

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
