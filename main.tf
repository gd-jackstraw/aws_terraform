

resource "aws_s3_bucket" "bucket_1" {
  count = 2
  tags = {
    name="test-bucket-${count.index}"
      }
}
