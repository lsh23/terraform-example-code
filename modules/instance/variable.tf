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
  description = "An identifier of instance_type"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "An identifier of subnet on which instances will be created"
  type        = string
  default     = ""
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance"
  type        = string
  default     = ""
}