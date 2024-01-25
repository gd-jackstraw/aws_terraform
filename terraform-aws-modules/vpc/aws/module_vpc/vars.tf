variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "assignment-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.20.0/24", "10.0.21.0/24"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_database_subnets" {
  description = "Database subnets for VPC"
  type        = list(string)
  default     = ["10.0.50.0/24", "10.0.51.0/24"]
}

variable "vpc_create_database_subnet_group" {
  description = "create database subnet group"
  type = bool
  default = true
}

variable "vpc_create_database_subnet_route_table" {
  description = "create database subnet route table"
  type = bool
  default = true
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone"
  type = bool
  default = false
}


