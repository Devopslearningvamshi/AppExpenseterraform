#this code help to find the security group id for the instance
data "aws_security_group" "selected" {
  name = "allow-all"
}
output "sg" {
  value = data.aws_security_group.selected
}
