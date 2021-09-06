resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-week5b-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
