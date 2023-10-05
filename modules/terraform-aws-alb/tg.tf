resource "aws_lb_target_group" "tg-alb0" {
  health_check {
    enabled             = "true"
    healthy_threshold   = "5"
    interval            = "30"
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name = var.name_tg-alb0
  port = "80"
  protocol = "HTTP"
  protocol_version = "HTTP1"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  target_type = "instance"
  vpc_id = var.vpc_id
}