resource "aws_subnet" "main" {
  cidr_block          = var.subnet_cidr_block
  vpc_id              = var.vpc_id
  availability_zone   = var.availability_zone
  map_public_ip_on_launch = true

  tags = var.tags
}


resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main.id
  route_table_id = var.route_table_id
}