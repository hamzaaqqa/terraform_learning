##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  access_key = ""
  secret_key = ""
  region     = ""
}

##################################################################################
# EBS
##################################################################################
resource "aws_ebs_volume" "EBS01" {
  availability_zone = var.availability_zone
  size = var.size
  type = var.type_ebs

  tags = {
    Name = "ESBV01"
  }
}
##################################################################################
# ATTACH EBS
##################################################################################

resource "aws_volume_attachment" "EBSAV01" {
  device_name = "/dev/sdh"
  instance_id = aws_instance.VMV01.id
  volume_id = aws_ebs_volume.EBS01.id
}