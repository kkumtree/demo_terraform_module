variable "eni_id_rt-nat-a" {
  description = "primary network interface id for nat-a"
  default = null
}

variable "eni_id_rt-nat-c" {
  description = "primary network interface id for nat-c"
  default = null
}

variable "name_rt-nat-a" {
  default = "RT-LAB-NAT-A"
}

variable "name_rt-nat-c" {
  default = "RT-LAB-NAT-C"
}

variable "name_rt-igw" {
  default = "RT-LAB-IGW"
}

variable "vpc_id" {
  default = null
}

variable "igw_id" {
  default = null
}

# association

variable "subnet_id_pub-a" {
  default = null
}

variable "subnet_id_pub-c" {
  default = null
}

variable "subnet_id_pri-a" {
  default = null
}

variable "subnet_id_pri-c" {
  default = null
}