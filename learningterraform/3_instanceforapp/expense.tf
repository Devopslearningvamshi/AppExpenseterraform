resource "aws_instance" "frontend_terraform" {
  for_each = var.instance_types
  ami           = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids

tags = {
  Name = each.key
}
}

variable "ami" {

  default = "ami-090252cbe067a9e58"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0feda6e6d231fae8f"]
}

variable "instance_types" {
  default = {

    frontend_tf ={
      instance_type = "t2.micro"
    }
    backend_tf ={
      instance_type = "t2.micro"
    }
    mysql_tf ={
      instance_type = "t2.micro"
    }
  }
}
