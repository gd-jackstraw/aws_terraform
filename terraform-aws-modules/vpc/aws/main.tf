module "vpc" {
  source  = "terraform-aws-modules/vpc/aws/module_vpc"
  #version = "2.78.0"
  version = "3.0.0"

  locals {
  name = "xyz"
  common_tags = "dns-param"
  }

  # VPC Basic Details

  name = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets  
 
  # Database Subnets

  database_subnets = var.vpc_database_subnets
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  create_database_internet_gateway_route = true

  create_database_nat_gateway_route = true

  # NAT Gateways - Outbound Communication

  enable_nat_gateway = var.vpc_enable_nat_gateway 
  single_nat_gateway = var.vpc_single_nat_gateway
 
  # VPC DNS Parameters

  enable_dns_hostnames = true
  enable_dns_support   = true
 
  tags = local.common_tags
  vpc_tags = local.common_tags
 
  # Additional Tags to Subnets

  public_subnet_tags = {

    Type = "Public Subnets"

  }

  private_subnet_tags = {

    Type = "Private Subnets"

  }  

  database_subnet_tags = {

    Type = "Private Database Subnets"

  }

}

output "vpc_cidr_block_output" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets_output" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets_output" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}


output "azs_output" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}

