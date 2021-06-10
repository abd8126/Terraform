 resource "aws_instance" "os1" {
   ami = "ami-010aff33ed5991201"
   instance_type = var.instance
   count = var.istest ? 0 : 1
 }