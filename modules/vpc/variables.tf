# modules/vpc_module/main.tf

variable "vpc_name" {
  description = "Name for the VPC"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "enable_flow_logs" {
  default = false
}

variable "log_destination" {
    default = null
}