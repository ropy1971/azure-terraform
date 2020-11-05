
### dns

variable "dns_mx_record_name" {

  type        = string
  default     = ""
  description = ""

}

variable "dns_zone_name" {

  type        = string
  default     = ""
  description = ""

}

variable "dns_mx_record" {

  type        = string
  default     = ""
  description = ""

}

variable "dns_mx_record_priority" {

  type        = number
  default     = 1
  description = ""

}

variable "dns_mx_record_ttl" {

  type        = number
  default     = 3600
  description = ""

}

### main

variable "resource_group_name" {

  type        = string
  default     = ""
  description = ""

}
