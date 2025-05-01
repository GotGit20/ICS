variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnets" {
  description = "Map of subnet configurations"
  type = map(object({
    cidr_block                                     = string
    availability_zone                              = string
    assign_ipv6_address_on_creation                = bool
    enable_dns64                                   = bool
    enable_lni_at_device_index                     = optional(number)
    enable_resource_name_dns_a_record_on_launch    = bool
    enable_resource_name_dns_aaaa_record_on_launch = bool
    ipv6_native                                    = bool
    map_customer_owned_ip_on_launch                = bool
    customer_owned_ipv4_pool                       = optional(string)
    outpost_arn                                    = optional(string)
    map_public_ip_on_launch                        = bool
    private_dns_hostname_type_on_launch            = string
    tags                                           = map(string)
  }))
}