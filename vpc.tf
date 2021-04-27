resource "aws_vpc" "new_vpc" {
  cidr_block                        = var.vpc_primary_cidr_block
  instance_tenancy                  = var.vpc_instance_tenancy
  enable_dns_support                = var.vpc_enable_dns_support
  enable_dns_hostnames              = var.vpc_enable_dns_hostnames
  enable_classiclink                = var.vpc_enable_classiclink
  enable_classiclink_dns_support    = var.vpc_enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block  = var.vpc_assign_generated_ipv6_cidr_block
  tags                              = var.vpc_tags
}

resource "aws_vpc_ipv4_cidr_block_association" "new_cidr_association" {
    for_each    = var.vpc_secondary_cidr_block
    vpc_id      = aws_vpc.new_vpc
    cidr_block  = each.value  
} 