output "vpc" {
    value = aws_vpc.main
}

output "aws_flow_log" {
    value = aws_flow_log.vpc_flow_log
}

output "igw" {
    value = aws_internet_gateway.igw
}
