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

output "result" {
  value = aws_instance.os1.availability_zone
}
output "result1" {
  value = aws_instance.os1.instance_state
}
