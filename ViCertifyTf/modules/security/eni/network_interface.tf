resource "aws_network_interface" "tfer--eni-0b30f1ba2f92d4db1" {
  attachment {
    device_index = "0"
    instance     = "i-014cc7e6a8e1bd98e"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.0.151"
  private_ip_list    = ["172.31.0.151"]
  private_ips        = ["172.31.0.151"]
  private_ips_count  = "0"
  security_groups    = ["sg-0c0672823b686a51c"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0ac9f289223056a32"
}

resource "aws_network_interface" "tfer--eni-0b38509d9703ce44c" {
  attachment {
    device_index = "0"
    instance     = "i-035fccbba40fcacf0"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.25.36"
  private_ip_list    = ["172.31.25.36"]
  private_ips        = ["172.31.25.36"]
  private_ips_count  = "0"
  security_groups    = ["sg-0c0672823b686a51c"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0927cff1399a2a533"
}
