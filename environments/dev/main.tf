provider "aws" {
  region  = "us-east-1"
  profile = "dev"
}

module "vpc" {
  source = "../../modules/networking/vpc"

  cidr_block                           = "172.31.0.0/16"
  enable_dns_support                   = true
  enable_dns_hostnames                 = true
  assign_generated_ipv6_cidr_block     = false
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"

  tags = {
    Name = "vicertify-vpc"
  }
}


module "subnets" {
  source = "../../modules/networking/subnet"

  vpc_id  = module.vpc.vpc_id

  subnets = {
    subnet1 = {
      cidr_block                                     = "172.31.16.0/20"
      availability_zone                              = "us-east-1d"
      assign_ipv6_address_on_creation                = false
      enable_dns64                                   = false
      enable_lni_at_device_index                     = null
      enable_resource_name_dns_a_record_on_launch    = false
      enable_resource_name_dns_aaaa_record_on_launch = false
      ipv6_native                                    = false
      map_customer_owned_ip_on_launch                = false
      customer_owned_ipv4_pool                       = null
      outpost_arn                                    = null
      map_public_ip_on_launch                        = true
      private_dns_hostname_type_on_launch            = "ip-name"
      tags                                           = { Name = "subnet-1" }
    }

    subnet2 = {
      cidr_block                                     = "172.31.80.0/20"
      availability_zone                              = "us-east-1c"
      assign_ipv6_address_on_creation                = false
      enable_dns64                                   = false
      enable_lni_at_device_index                     = null
      enable_resource_name_dns_a_record_on_launch    = false
      enable_resource_name_dns_aaaa_record_on_launch = false
      ipv6_native                                    = false
      map_customer_owned_ip_on_launch                = false
      customer_owned_ipv4_pool                       = null
      outpost_arn                                    = null
      map_public_ip_on_launch                        = true
      private_dns_hostname_type_on_launch            = "ip-name"
      tags                                           = { Name = "subnet-2" }
    }

    subnet3 = {
      cidr_block                                     = "172.31.48.0/20"
      availability_zone                              = "us-east-1e"
      assign_ipv6_address_on_creation                = false
      enable_dns64                                   = false
      enable_lni_at_device_index                     = null
      enable_resource_name_dns_a_record_on_launch    = false
      enable_resource_name_dns_aaaa_record_on_launch = false
      ipv6_native                                    = false
      map_customer_owned_ip_on_launch                = false
      customer_owned_ipv4_pool                       = null
      outpost_arn                                    = null
      map_public_ip_on_launch                        = true
      private_dns_hostname_type_on_launch            = "ip-name"
      tags                                           = { Name = "subnet-3" }
    }

    subnet4 = {
      cidr_block                                     = "172.31.32.0/20"
      availability_zone                              = "us-east-1a"
      assign_ipv6_address_on_creation                = false
      enable_dns64                                   = false
      enable_lni_at_device_index                     = null
      enable_resource_name_dns_a_record_on_launch    = false
      enable_resource_name_dns_aaaa_record_on_launch = false
      ipv6_native                                    = false
      map_customer_owned_ip_on_launch                = false
      customer_owned_ipv4_pool                       = null
      outpost_arn                                    = null
      map_public_ip_on_launch                        = true
      private_dns_hostname_type_on_launch            = "ip-name"
      tags                                           = { Name = "subnet-4" }
    }

    subnet5 = {
      cidr_block                                     = "172.31.0.0/20"
      availability_zone                              = "us-east-1b"
      assign_ipv6_address_on_creation                = false
      enable_dns64                                   = false
      enable_lni_at_device_index                     = null
      enable_resource_name_dns_a_record_on_launch    = false
      enable_resource_name_dns_aaaa_record_on_launch = false
      ipv6_native                                    = false
      map_customer_owned_ip_on_launch                = false
      customer_owned_ipv4_pool                       = null
      outpost_arn                                    = null
      map_public_ip_on_launch                        = true
      private_dns_hostname_type_on_launch            = "ip-name"
      tags                                           = { Name = "subnet-5" }
    }

    subnet6 = {
      cidr_block                                     = "172.31.64.0/20"
      availability_zone                              = "us-east-1f"
      assign_ipv6_address_on_creation                = false
      enable_dns64                                   = false
      enable_lni_at_device_index                     = null
      enable_resource_name_dns_a_record_on_launch    = false
      enable_resource_name_dns_aaaa_record_on_launch = false
      ipv6_native                                    = false
      map_customer_owned_ip_on_launch                = false
      customer_owned_ipv4_pool                       = null
      outpost_arn                                    = null
      map_public_ip_on_launch                        = true
      private_dns_hostname_type_on_launch            = "ip-name"
      tags                                           = { Name = "subnet-6" }
    }
  }
}

module "route_table" {
  source = "../../modules/networking/route_table"

  vpc_id = module.vpc.vpc_id

  routes = [
    {
      cidr_block = "0.0.0.0/0"
      gateway_id = "igw-04e1c66cb64db2b20"  # Or make this a variable if dynamic
    }
  ]

  tags = {
    Name = "vicertify_route_table-route-table"
  }
}

module "default_network_acl" {
  source = "../../modules/networking/nacl"

  default_network_acl_id = module.vpc.default_network_acl_id
  subnet_ids = [
    for id in [
      module.subnets.subnet_ids["subnet1"],
      module.subnets.subnet_ids["subnet2"],
      module.subnets.subnet_ids["subnet3"],
      module.subnets.subnet_ids["subnet4"],
      module.subnets.subnet_ids["subnet5"],
      module.subnets.subnet_ids["subnet6"]
    ] : id if id != null
  ]

  ingress_rules = [
    {
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
      rule_no    = 100
      icmp_type  = 0
      icmp_code  = 0
    }
  ]

  egress_rules = [
    {
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
      rule_no    = 100
      icmp_type  = 0
      icmp_code  = 0
    }
  ]

  tags = {
    Name = "default-nacl"
  }
}

module "security_group" {
  source = "../../modules/security/sg"

  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "SGforALL"
  }

  ingress_rules = [
    {
      cidr_blocks = ["103.10.132.155/32"]
      description = "Vamsi-config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["106.219.183.76/32"]
      description = "Sindhu-config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["165.225.124.117/32"]
      description = "ANju-config"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["165.225.124.117/32"]
      description = "Anju-Config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["172.59.74.144/32"]
      description = "Varun-config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["49.36.187.114/32"]
      description = "ANJU-CONFIG"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["49.37.209.59/32"]
      description = "Siva-Config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["49.37.209.59/32"]
      description = "Siva-config"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["70.106.195.139/32"]
      description = "Sen-office_openwifi"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    }
  ]

  egress_rules = [
    {
      cidr_blocks = ["103.10.132.155/32"]
      description = "Vamsi-Config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["106.219.183.76/32"]
      description = "Sindhu-Config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["165.225.124.117/32"]
      description = "Anju-Config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["165.225.124.117/32"]
      description = "Anju-config"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["172.59.74.144/32"]
      description = "Varun-Config"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      self        = false
    },
    {
      cidr_blocks = ["49.36.187.114/32"]
      description = "ANJU"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["49.37.211.241/32"]
      description = "Siva-Config"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      self        = false
    },
    {
      cidr_blocks = ["49.37.211.241/32"]
      description = "Siva-Config"
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      self        = false
    }
  ]
}

module "internet_gateway" {
  source = "../../modules/networking/igw"

  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "vicertify-igw"
  }
}

module "email_domain" {
  source          = "../../modules/email"
  domain_name     = "vicertify.us"
  route53_zone_id = "Z05801763B81TE4WSRN6U" # Your actual hosted zone ID
  region          = "us-east-1"
}

module "instances" {
  source = "../../modules/compute"

  vm_qa = {
    ami                         = "ami-0a73e96a849c232cc"
    instance_type               = "t3.large"
    availability_zone           = "us-east-1b"
    subnet_id                   = module.subnets.subnet_ids["subnet5"]
    private_ip                  = "172.31.0.151"
    key_name                    = "VM_QA_key1"
    associate_public_ip_address = true
    security_group_ids          = [module.security_group.id]
    cpu_credits                 = "unlimited"
    root_volume_size            = 100
    root_volume_type            = "gp2"
    name                        = "VM_QA_Server"
  }

  dev_vm1 = {
    ami                         = "ami-0a73e96a849c232cc"
    instance_type               = "t3.large"
    availability_zone           = "us-east-1d"
    subnet_id                   = module.subnets.subnet_ids["subnet1"]
    private_ip                  = "172.31.25.36"
    key_name                    = "New_VM"
    associate_public_ip_address = true
    security_group_ids          = [module.security_group.id]
    cpu_credits                 = "unlimited"
    root_volume_size            = 50
    root_volume_type            = "gp2"
    name                        = "Dev_VM1"
  }
}