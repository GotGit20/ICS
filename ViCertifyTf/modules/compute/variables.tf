variable "vm_qa" {
  type = object({
    ami                         = string
    instance_type               = string
    availability_zone           = string
    subnet_id                   = string
    private_ip                  = string
    key_name                    = string
    associate_public_ip_address = bool
    security_group_ids          = list(string)
    cpu_credits                 = string
    root_volume_size            = number
    root_volume_type            = string
    name                        = string
  })
}

variable "dev_vm1" {
  type = object({
    ami                         = string
    instance_type               = string
    availability_zone           = string
    subnet_id                   = string
    private_ip                  = string
    key_name                    = string
    associate_public_ip_address = bool
    security_group_ids          = list(string)
    cpu_credits                 = string
    root_volume_size            = number
    root_volume_type            = string
    name                        = string
  })
}
