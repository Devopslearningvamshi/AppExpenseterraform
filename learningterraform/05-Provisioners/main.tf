resource "aws_instance" "testing_provisioners" {
  ami                    = "ami-090252cbe067a9e58"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}
data "aws_security_group" "selected"{
  name = "allow all"
}
