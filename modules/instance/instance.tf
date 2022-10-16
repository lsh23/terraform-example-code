terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_network_interface" "network_interface" {
  for_each    = toset(var.names)
  subnet_id   = var.subnet_id
}

resource "aws_instance" "instance" {
  for_each      = toset(var.names)
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  network_interface {
    network_interface_id = aws_network_interface.network_interface[each.key].id
    device_index         = 0
  }

  user_data     = templatefile(
      "../modules/instance/init.sh",
      {
          name = each.value
      }
  )
}