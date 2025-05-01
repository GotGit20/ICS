variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "assign_generated_ipv6_cidr_block" {
  type    = bool
  default = false
}

variable "enable_network_address_usage_metrics" {
  type    = bool
  default = false
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "tags" {
  type    = map(string)
  default = {}
}