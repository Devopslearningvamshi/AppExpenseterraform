resource "aws_instance" "frontend_terrafrom"{
    ami  =var.ami
    instance_type =  var.instance_type
    vpc_security_group_ids = var.vpc_security_groups
    tags ={
        Name="Frontend_tf"
    }
}
variable "ami"{
    default = "ami-05f020f5935e52dc4"

}
variable "instance_type"{
    default="t2.micro"
}
variable "security_group"{
    default="sg-0feda6e6d231fae8f"
}
variable "instance_types"{
    default{
        Frontend_tf ={
            instance_type="t2.micro"

        }
    }
}