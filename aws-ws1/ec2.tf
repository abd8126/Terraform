resource aws_instance "web"{
  ami = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  security_groups = [ "launch-wizard-11" ]
  key_name = "k8s"
  tags = {
    Name = "webserver"
  }
}