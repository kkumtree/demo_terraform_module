variable "instance_type_amd64" {
  description = "Instance type for AMD64 instances"
  default = "t3.micro"
}
  
variable "instance_type_arm64" {
  description = "Instance type for ARM64 instances"
  default = "t4g.small"
}

variable "iam_instance_profile_web" {
  description = "IAM instance profile for web instances"
  default = "LAB-WEB-DYNA"
}

variable "key_name" {
  description = "Key name for lab instances"
  default = "BSOP-04-E450-LUBUNTU"
}

variable "instance_tag_name_web-a" {
  description = "Instance tag name"
  default = "LAB-WEB-A"
}

variable "instance_tag_name_web-c" {
  description = "Instance tag name"
  default = "LAB-WEB-C"
}
variable "instance_tag_name_nat-a" {
  description = "Instance tag name"
  default = "LAB-NAT-A"
}

variable "instance_tag_name_nat-c" {
  description = "Instance tag name"
  default = "LAB-NAT-C"
}

variable "instance_tag_name_ssh" {
  description = "Instance tag name"
  default = "LAB-SSH"
}

/* variable "instance_tag_name_ssh-c" {
  description = "Instance tag name"
  default = "LAB-SSH-C"
} */

variable "vpc_id" {
  description = "Security group IDs for web instances"
  default = null
}

variable "subnet_pri-a_id" {
  description = "Subnet name for private subnet A"
  default = null
}

variable "subnet_pri-c_id" {
  description = "Subnet name for private subnet C"
  default = null
}

variable "subnet_pub-a_id" {
  description = "Subnet name for public subnet A"
  default = null
}

variable "subnet_pub-c_id" {
  description = "Subnet name for public subnet C"
  default = null
}

variable "sg_sg-web_id" {
  description = "Security group IDs for web instances"
  default = null
}

variable "sg_sg-nat_id" {
  description = "Security group IDs for nat instances"
  default = null
}

variable "sg_sg-ssh_id" {
  description = "Security group IDs for ssh instances"
  default = null
}

variable "sg_sg-alb0_id" {
  description = "Security group IDs for alb instances"
  default = null
}

variable "sg_sg-rds_id" {
  description = "Security group IDs for rds instances"
  default = null
}