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

### kubernetes
variable "kubernetes_cluster_name" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_dns_prefix" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_version" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_sku_tier" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_node_name" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_node_count" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_node_size" {
  type        = string
  default     = ""
  description = ""
}

variable "kubernetes_cluster_identity_type" {
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

### tags
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
