resource "aws_instance" "instance"{
    ami  = data.aws.ami.ami.image_id
    instance_type = var.instance_type
    vpc_security_group_ids = [data.aws_secutiy_group.selected.id]

tags = {
    Name = var.component
}
}
resource "null_resource" "ansible"{

    provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = var.ssh_user
      password = var.ssh_pass
      host     = aws_instance.instance.public_ip
    }

    inline = [
        "sudo pip3.11 install ansible",
        "ansible-playbook -i localhost , -U https://github.com/Devopslearningvamshi/gocd-expenseapp expense.yml -e env=${var.env} -e role_name= ${var.compenent}"
    ]
    
    }
}

resource "aws_route53_record" "record" {
    name = "${var.compenent}-${var.env}"
    type = "A"
    zone_id = var.zone_id
    records = [aws.instance.instance.private_ip]
    ttl = 30
}
