resource "aws_vpc" "awsvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws"s3"bucket" "bucket_1" {
  count = 2
  tags = {
    name="test-bucket-${count.index}"
      }
}
