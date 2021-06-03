resource "aws_ebs_volume" "et1"{
  availability_zone = aws_instance.web.availability_zone
  size = 1
  tags = {
    Name = "myvoll"
  }
}