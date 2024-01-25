*/
output "vpc_cidr_block_output" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr
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
/*
