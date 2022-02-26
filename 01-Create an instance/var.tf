variable "vm_type" {
  description = "This is type amazon VM"
  type = string
  default = "ami-033b95fb8079dc481"
}

variable "instance_type" {
    description = "this is type of instance"
    type = string
    default = "t2.micro" 
}

variable "availability_zone" {
  type = string
  default = "us-east-1c"
}