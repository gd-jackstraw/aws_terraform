resource "aws_vpc" "awsvpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_s3_bucket" "bucket_1" {
  count = 2
  tags = {
    name="test-bucket-${count.index}"
      }
}
