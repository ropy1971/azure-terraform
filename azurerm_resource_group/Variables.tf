
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
 
variable "TagTesting" {
  type                                 = "string"
  default                              = "Yes"
}
