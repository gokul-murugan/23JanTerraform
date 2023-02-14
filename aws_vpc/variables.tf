variable "vpc_cidr_range" {
  description = " VPC CIDR block"
  type = string
}

variable "enable_dns_support" {
  description = "specifies whether the dns support be enabled"
  type = bool
}

variable "vpc_tags" {
  description = "VPC tags"
  type = map(string)
}

variable "pub_subnet_cidr" {
  description = "Public subnets"
  type = string
}