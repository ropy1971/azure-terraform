variable "azure_tenant_ID" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
variable "azure_subscription_ID" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
variable "azure_client_ID" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
variable "azure_client_secret" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
variable "azure_environment" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
variable "azure_region" {
    type                                    = "string"
    default                                 = ""
    description                             = ""
}
variable "tag_application" {
    type                                = "string"
    default                             = "TBD"    
    description                         = ""  
}
variable "tag_cost_center" {
    type                                = "string"
    default                             = "TBD"    
    description                         = ""  
}

variable "tag_customer" {
    type                                = "string"
    default                             = "n/a"    
    description                         = ""  
}

variable "tag_deployment_method" {
    type                                = "string"
    default                             = "Terraform"    
    description                         = ""  
}

variable "tag_deployment_version" {
    type                                = "string"
    default                             = ""    
    description                         = ""  
}

variable "tag_environment" {
    type                                = "string"
    default                             = "n/a"    
    description                         = ""  
}

variable "tag_operator" {
    type                                = "string"
    default                             = "me"    
    description                         = ""  
}

variable "tag_production" {
    type                                = "string"
    default                             = "TBD"    
    description                         = ""  
}
