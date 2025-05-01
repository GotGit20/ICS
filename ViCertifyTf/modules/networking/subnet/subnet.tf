resource "aws_subnet" "vicertify_subnet" {
  for_each = var.subnets

  vpc_id                                         = var.vpc_id
  cidr_block                                     = each.value.cidr_block
  availability_zone                              = each.value.availability_zone
  assign_ipv6_address_on_creation                = each.value.assign_ipv6_address_on_creation
  enable_dns64                                   = each.value.enable_dns64
  enable_resource_name_dns_a_record_on_launch    = each.value.enable_resource_name_dns_a_record_on_launch
  enable_resource_name_dns_aaaa_record_on_launch = each.value.enable_resource_name_dns_aaaa_record_on_launch
  ipv6_native                                    = each.value.ipv6_native
  map_public_ip_on_launch                        = each.value.map_public_ip_on_launch
  private_dns_hostname_type_on_launch            = each.value.private_dns_hostname_type_on_launch

  tags = each.value.tags
}