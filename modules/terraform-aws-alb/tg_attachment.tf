resource "aws_lb_target_group_attachment" "alb0" {
  depends_on = [  ]

  for_each = {
    for k, v in var.target_id_tg-alb0 :
    k => v
  }

  target_group_arn = aws_lb_target_group.tg-alb0.arn
  target_id        = each.value
}