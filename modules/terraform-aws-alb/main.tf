resource "aws_lb" "alb0" {
  desync_mitigation_mode = "defensive"
  internal = "false"
  ip_address_type = "ipv4"
  load_balancer_type = "application"
  name               = var.name_alb0
  security_groups    = [ var.aws_security_group_alb0_id ]

  /* subnet_mapping {
    subnet_id = var.subnet_id_pub-a
  }

  subnet_mapping {
    subnet_id = var.subnet_id_pub-c  
  } */

  subnets = [
    var.subnet_id_pub-a,
    var.subnet_id_pub-c
  ]
}