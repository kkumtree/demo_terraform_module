variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Name for the VPC"
  default     = "LAB-VPC"
}