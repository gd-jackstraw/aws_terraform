# Request a spot instance at $0.03
resource "aws_spot_instance_request" "cheap_instance" {
  count = 3
  ami           = data.amz_linux2
  spot_price    = "0.03"
  instance_type = var.instance_type

  tags = {
    Name = "CheapWorker"
  }
}
