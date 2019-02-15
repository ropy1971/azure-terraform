
variable "SubscriptionID" {
  type                                 = "string"
}

variable "TenantID" {
  type                                 = "string"
}

variable "ClientID" {
  type                                 = "string"
}

variable "ClientSecret" {
  type                                 = "string"
}

variable "Region" {
  type                                 = "string"
  default                              = "westeurope"
}

variable "ResourceGroupName" {
  type                                 = "string"
}

variable "SqlAdminName" {
  type                                 = "string"
}

variable "SqlAdminPassword" {
  type                                 = "string"
}