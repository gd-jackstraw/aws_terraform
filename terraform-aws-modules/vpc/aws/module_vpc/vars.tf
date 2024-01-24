variable "vpc_name" {}
variable "vpc_availability_zones" {}
variable "vpc_public_subnets" {}
variable "vpc_private_subnets  " {}
variable "vpc_database_subnets" {}
variable "vpc_create_database_subnet_group" {}
variable "vpc_create_database_subnet_route_table" {}
variable "vpc_create_database_subnet_group" {}
variable "vpc_enable_nat_gateway" {}
variable "vpc_single_nat_gateway" {}

locals {
  name = "xyz"
  common_tags = "dns-param"
}
