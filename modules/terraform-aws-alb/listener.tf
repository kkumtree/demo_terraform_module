resource "aws_lb_listener" "alb0" {
  default_action {
    target_group_arn = aws_lb_target_group.tg-alb0.arn
    type             = "forward"
  }

  load_balancer_arn = aws_lb.alb0.arn
  port              = "80"
  protocol          = "HTTP"
}