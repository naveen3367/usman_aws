variable "tags" {
  description = "tags for the Subnet"
  default = {}
}

variable "availability_zone" {
  description = "Availability Name for the Subnet"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the Subnet"
}

variable "vpc_id" {
  description = "ID of the VPC in which the subnet will be created"
}

variable "route_table_id" {
  
}