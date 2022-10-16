variable "region" {
  description = "Region code"
  type        = string
  default     = "ap-northeast-2"
}

variable "names" {
  description = "List of Name to be used on all the resources as identifier"
  type        = list(string)
  default     = []
}

variable "ami" {
  description = "A UUID of ami"
  type        = string
  default     = "ami-0c76973fbe0ee100c"
}

variable "instance_type" {
  description = "An identifier of instance type"
  type        = string
  default     = "t2.micro"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "172.16.0.0/24"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance"
  type        = string
  default     = ""
}