variable "tenant_id" {
  type                                 = "string"
}

variable "subscription_id" {
  type                                 = "string"
}

variable "client_id" {
  type                                 = "string"
}

variable "client_secret" {
  type                                 = "string"
}

variable "resource_group_name" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}

variable "region" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}

variable "notification_hub_name" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}

variable "notification_hub" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}

variable "namespace_type" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}

variable "namespace_sku" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}




