variable "subnet_cidr_pub_a" {
  description = "CIDR block for the public subnet A"
  default     =  "192.168.0.0/24"
}

variable "subnet_cidr_pub_c" {
  description = "CIDR block for the public subnet A"
  default     =  "192.168.1.0/24"
}

variable "subnet_cidr_pri_a" {
  description = "CIDR block for the private subnet A"
  default     =  "192.168.2.0/23"
}

variable "subnet_cidr_pri_c" {
  description = "CIDR block for the private subnet A"
  default     =  "192.168.4.0/23"
}

variable "subnet_name_pub_a" {
  description = "CIDR block for the public subnet A"
  default     =  "LAB-SUB-PUB-A"
}

variable "subnet_name_pub_c" {
  description = "CIDR block for the public subnet A"
  default     =  "LAB-SUB-PUB-C"
}

variable "subnet_name_pri_a" {
  description = "CIDR block for the private subnet A"
  default     =  "LAB-SUB-PRI-A"
}

variable "subnet_name_pri_c" {
  description = "CIDR block for the private subnet A"
  default     =  "LAB-SUB-PRI-C"
}

variable "az_seoul_a" {
  description = "Availability zone for the instances"
  default = "ap-northeast-2a"
}

variable "az_seoul_c" {
  description = "Availability zone for the instances"
  default = "ap-northeast-2c"
}

variable "az_mumbai_a" {
  description = "Availability zone for the instances"
  default = "ap-south-1a"
}

variable "az_mumbai_c" {
  description = "Availability zone for the instances"
  default = "ap-south-1c"
}

variable "vpc_id" {
  description = "CIDR block for the public subnet A"
  default     =  null
}