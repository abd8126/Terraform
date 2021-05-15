provider "aws" {
  region = "ap-south-1"
  profile = "default"
}
resource "aws_instance" "os1" {
  ami = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform"
  }
}

output "resutt" {
  value = "aws_instance.os1.availability_zone"
}