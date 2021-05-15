resource aws_instance "web"{
  ami = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  security_groups = [ "launch-wizard-11" ]
  key_name = "k8s"
  tags = {
    Name = "webserver"
  }
}
resource "aws_ebs_volume" "et1"{
  availability_zone = aws_instance.web.availability_zone
  size = 1
  tags = {
    Name = "myvoll"
  }
}
resource "aws_volume_attachment" "vol_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.et1.id
  instance_id = aws_instance.web.id
}
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
resource "null_resource" "nullres2"{
  connection{
    type = "ssh"
    user = "ec2-user"
    private_key = file("path")
    host = aws_instance.web.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo mkfs.ext4 /dev/xvdh",
      "sudo mount /dev/xvdh /var/www/html",
      "sudo yum install git -y",
      "sudo git clone https://github.com/vimallinuxworld13/gitphptest.git  /var/www/html/web"
    ]
  }
} resource "null_resource" "nullres3"{
  provisioner "local-exec"{
    command = "chrome http://13.233.139.153/web/index.php"
  }
}