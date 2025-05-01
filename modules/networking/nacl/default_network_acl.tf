variable "default_network_acl_id" {
  description = "The ID of the default network ACL"
  type        = string
}

resource "aws_default_network_acl" "vicertify_network_acl" {
  default_network_acl_id = var.default_network_acl_id
  subnet_ids = var.subnet_ids

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      action     = egress.value.action
      cidr_block = egress.value.cidr_block
      from_port  = egress.value.from_port
      to_port    = egress.value.to_port
      protocol   = egress.value.protocol
      rule_no    = egress.value.rule_no
      icmp_type  = egress.value.icmp_type
      icmp_code  = egress.value.icmp_code
    }
  }

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      action     = ingress.value.action
      cidr_block = ingress.value.cidr_block
      from_port  = ingress.value.from_port
      to_port    = ingress.value.to_port
      protocol   = ingress.value.protocol
      rule_no    = ingress.value.rule_no
      icmp_type  = ingress.value.icmp_type
      icmp_code  = ingress.value.icmp_code
    }
  }

  tags = var.tags
}