##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  region = ""
    secret_key = ""
  access_key = ""
}

##################################################################################
# INSTANCE
##################################################################################

resource "aws_instance" "VMV01" {
    ami = var.vm_type
    instance_type = var.instance_type
    monitoring = "true"
    subnet_id = aws_subnet.subnet1.id
    availability_zone = var.availability_zone
    private_ip = "192.168.50.100"
      tags = {
    Name = "VM1"      
    Terraform   = "true"
    Environment = "dev"
  }
  
}