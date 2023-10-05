variable "sg_name_web" {
  description = "Name for the web security group"
  default     = "LAB-WEB-SG"
}

variable "sg_name_ssh" {
  description = "Name for the web security group"
  default     = "LAB-SSH-SG"
}

variable "sg_name_alb" {
  description = "Name for the web security group"
  default     = "LAB-ALB0-SG"
}

variable "sg_name_nat" {
  description = "Name for the web security group"
  default     = "LAB-NAT-SG"
}

variable "sg_name_rds" {
  description = "Name for the web security group"
  default     = "LAB-RDS-SG"
}

variable "vpc_id" {
  default = null
}
