### authentication

variable "tenant_id" {
  type        = string
  default     = ""
  description = ""
}

variable "subscription_id" {
  type        = string
  default     = ""
  description = ""
}

variable "subscription_name" {
  type        = string
  default     = ""
  description = ""
}

variable "region" {
  type        = string
  default     = "francecentral"
  description = ""
}

### main

variable "kubernetes_cluster_resource_group_name" {
  type        = string
  default     = ""
  description = ""
}
