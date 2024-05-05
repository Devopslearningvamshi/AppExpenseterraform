
#Declaring the var with values

variable "x" {
  default = 500
}
variable "y_list" {
  default=["apple","pineapple","grapes"]
}


#this output command
output "x" {
  value = var.x
}
output "y" {
  value = var.y_list
}


#declaring the env using the two files in the prd and dev files

variable "env" {}
  output "env"{
  value = var.env
}



#below common will get values from the common.auto.tfvars files
variable "common" {}
output "common" {
  value = var.common
}