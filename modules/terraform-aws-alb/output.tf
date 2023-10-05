output "aws_lb_listener_alb0_id" {
  value = aws_lb.alb0.id
}

output "aws_lb_target_group_attachment_alb0_id" {
  value = [ for instance_id in aws_lb_target_group_attachment.alb0 : instance_id.target_id ]
}

output "aws_lb_target_group_alb0_id" {
  value = aws_lb_target_group.tg-alb0.id
}

output "aws_lb_alb0_id" {
  value = aws_lb.alb0.id
}