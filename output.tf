
output "aws_iam_role_arn" {
  description = ""
  value       = module.iam_role.iam_role_arn
}

output "vpc_id" {
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets_ids" {
  value       = module.vpc.private_subnets_ids
}

output "public_subnets_ids" {
  value       = module.vpc.public_subnets_ids
}

output "internet_gateway_id" {
  value       = module.vpc.internet_gateway_id
}

output "nat_gateway_id" {
  value       = module.vpc.nat_gateway_id
}

output "nat_gateway_subnet_id" {
  value       = module.vpc.nat_gateway_subnet_id
}

output "nat_gateway_private_ip" {
  value       = module.vpc.nat_gateway_private_ip
}

output "nat_gateway_public_ip" {
  value       = module.vpc.nat_gateway_public_ip
}

output "private_nat_gateway_id" {
  value       = module.vpc.private_nat_gateway_id
}

output "public_internet_gateway_id" {
  value       = module.vpc.public_internet_gateway_id
}

output "private_route_tables_id" {
  value       = module.vpc.private_route_tables_id
}

output "public_route_tables_id" {
  value       = module.vpc.public_route_tables_id
}

output "flow_log_id" {
  value       = module.vpc.flow_log_id
}

output "security_group_id_sg" {
  value       = module.sg.security_group_id
}


output "security_group_ingress" {
  value       = module.sg.security_group_ingress
}

output "security_group_egress" {
  value       = module.sg.security_group_egress
}
