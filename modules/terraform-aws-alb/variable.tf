variable "name_alb0" {
  default = "LAB-ALB-ALB0"
}

variable "name_tg-alb0" {
  default = "LAB-TG-ALB0"
}

variable "subnet_id_pub-a" {
  default = null
}
  
variable "subnet_id_pub-c" {
  default = null
}

variable "aws_security_group_alb0_id" {
  default = null
}
  
variable "vpc_id" {
  default = null
}

variable "target_id_tg-alb0" {
  /* instance ids in targeted subnet */
  default = {
    instance_lorem_id = "i-psum"
  }
}