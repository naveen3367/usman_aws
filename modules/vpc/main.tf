resource "aws_vpc" "main" {
  cidr_block          = var.vpc_cidr_block
  enable_dns_support  = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_flow_log" "vpc_flow_log" {
  count                = var.enable_flow_logs ? 1 : 0
  log_destination      = var.log_destination
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.main.id
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}