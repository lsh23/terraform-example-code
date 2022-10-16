provider "aws" {
  region = var.region
  #access_key = "" or Use environ variable -> $ export AWS_ACCESS_KEY_ID="anaccesskey"
  #secret_key = "" or Use environ variable -> $ export AWS_SECRET_ACCESS_KEY="asecretkey"
}

module "network"{
    source     = "../modules/netowrk"
    cidr_block = var.cidr_block
}

module "instance"{
    source        = "../modules/instance"
    names         = var.names
    ami           = var.ami
    instance_type = var.instance_type
    key_name      = var.key_name

    subnet_id     = module.network.subnet_id
    depends_on    = [
      module.network
    ]
}

