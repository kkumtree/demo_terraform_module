resource "aws_main_route_table_association" "vpc-self" {
  route_table_id = aws_route_table.rt-vpc.id
  vpc_id = var.vpc_id
}