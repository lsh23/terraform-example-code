output "instance_private_ip_info" {
    value = tomap(
        {
            for k, instance in aws_instance.instance:
                k => format("%s", instance.private_ip)
        }
    )
}

locals {
  instance_uuid_list = join(", ", [for instance in aws_instance.instance : instance.id])
}

output "instance_uuid_info" {
  value = local.instance_uuid_list
}