##################################################################################
# PROVIDERS
##################################################################################
provider "aws" {
  region = ""
    secret_key = ""
  access_key = ""
}

##################################################################################
# VPC
##################################################################################

resource "aws_vpc" "VPC1" {
  cidr_block = var.cdir
  enable_dns_hostnames = "true"
    tags = {

      Name = "VPC01"
  }
}
##################################################################################
# Subnet
##################################################################################
resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.VPC1.id
  availability_zone = var.availability_zone
  cidr_block = var.cidr_block
  
  tags = {

      Name = "SubnetV01"
  }

}

##################################################################################
# Security Group 
##################################################################################
resource "aws_security_group" "ASG1" {
 description = "Security Group 1"
 name = "Allow SSH"
 vpc_id = aws_vpc.VPC1.id   

  tags = {

      Name = "ASGV01"
  }
  
   # HTTP access from anywhere
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
