# modules/compute/instances.tf

resource "aws_instance" "vm_qa_server" {
  ami                         = var.vm_qa.ami
  instance_type               = var.vm_qa.instance_type
  availability_zone           = var.vm_qa.availability_zone
  subnet_id                   = var.vm_qa.subnet_id
  private_ip                  = var.vm_qa.private_ip
  key_name                    = var.vm_qa.key_name
  associate_public_ip_address = var.vm_qa.associate_public_ip_address
  vpc_security_group_ids      = var.vm_qa.security_group_ids

  credit_specification {
    cpu_credits = var.vm_qa.cpu_credits
  }

  root_block_device {
    volume_size = var.vm_qa.root_volume_size
    volume_type = var.vm_qa.root_volume_type
    delete_on_termination = true
  }

  tags = {
    Name = var.vm_qa.name
  }
}

resource "aws_instance" "dev_vm1" {
  ami                         = var.dev_vm1.ami
  instance_type               = var.dev_vm1.instance_type
  availability_zone           = var.dev_vm1.availability_zone
  subnet_id                   = var.dev_vm1.subnet_id
  private_ip                  = var.dev_vm1.private_ip
  key_name                    = var.dev_vm1.key_name
  associate_public_ip_address = var.dev_vm1.associate_public_ip_address
  vpc_security_group_ids      = var.dev_vm1.security_group_ids

  credit_specification {
    cpu_credits = var.dev_vm1.cpu_credits
  }

  root_block_device {
    volume_size = var.dev_vm1.root_volume_size
    volume_type = var.dev_vm1.root_volume_type
    delete_on_termination = true
  }

  tags = {
    Name = var.dev_vm1.name
  }
}