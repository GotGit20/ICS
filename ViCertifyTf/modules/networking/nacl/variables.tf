variable "subnet_ids" {
  type = list(string)
}

variable "egress_rules" {
  type = list(object({
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
    protocol   = string
    rule_no    = number
    icmp_type  = number
    icmp_code  = number
  }))
}

variable "ingress_rules" {
  type = list(object({
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
    protocol   = string
    rule_no    = number
    icmp_type  = number
    icmp_code  = number
  }))
}

variable "tags" {
  type    = map(string)
  default = {}
}