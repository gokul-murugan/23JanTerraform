# aws_vpc.this
resource "aws_vpc" "this" {
  cidr_block         = var.vpc_cidr_range 
  enable_dns_support = var.enable_dns_support

  tags = var.vpc_tags
}

# aws_subnet.public
resource "aws_subnet" "public" { 
  vpc_id     = aws_vpc.this.id
  cidr_block = var.pub_subnet_cidr
}

output "vpc_id" {
  value = aws_vpc.this.id
}