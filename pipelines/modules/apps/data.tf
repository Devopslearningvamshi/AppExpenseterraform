data "aws_ami" "example" {
  most_recent = true
  name_regex = "RHEL-9-DevOps-Practice"
  Owners   = [ "973714476881" ]
}
data "aws_secutiy_group" "selected"{
    name = "allow all"
}

