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

variable "recovery_sku" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
