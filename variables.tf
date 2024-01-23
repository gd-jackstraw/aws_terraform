variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_ACCESS_KEY" {}

variable "aws_region" {
  description = "Region in which AWS resource is to be created"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t3.micro"
}
