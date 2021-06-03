resource "null_resource" "nullres1"{
  connection{
    type = "ssh"
    user = "ec2-user"
    private_key = file("path")
    host = aws_instance.web.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo yum install php -y",
      "sudo systemctl start httpd",
      "sudo systemctl start httpd"
    ]
  }
}