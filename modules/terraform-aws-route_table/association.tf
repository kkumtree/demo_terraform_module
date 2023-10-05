resource "aws_route_table_association" "igw-pub-a" {
  route_table_id = aws_route_table.rt-igw.id
  subnet_id = var.subnet_id_pub-a
}

resource "aws_route_table_association" "igw-pub-c" {
  route_table_id = aws_route_table.rt-igw.id
  subnet_id = var.subnet_id_pub-c
}

resource "aws_route_table_association" "nat-pri-a" {
  route_table_id = aws_route_table.rt-nat-a.id
  subnet_id = var.subnet_id_pri-a
}

resource "aws_route_table_association" "nat-pri-c" {
  route_table_id = aws_route_table.rt-nat-c.id
  subnet_id = var.subnet_id_pri-c
}