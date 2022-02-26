variable "cdir" {
  type = string
  default = "192.168.0.0/16"
}

variable "cidr_block" {
    type = string
    default = "192.168.50.0/24"
}

variable "to_port" {
    type = string
    default = "80"
 }

 variable "from_port" {
   type = string
   default = "80"
 }

 variable "protocol" {
    type = string
    default = "tcp"
 }

variable "availability_zone" {
  type = string
  default = "us-east-1c"
}

