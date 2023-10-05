output "aws_main_route_table_association_vpc-self_id"{
  value = aws_main_route_table_association.vpc-self.id
}

output "aws_route_table_association_igw-pub-a_id"{
  value = aws_route_table_association.igw-pub-a.id
}

output "aws_route_table_association_igw-pub-c_id"{
  value = aws_route_table_association.igw-pub-c.id
}

output "aws_route_table_association_nat-pri-a_id"{
  value = aws_route_table_association.nat-pri-a.id
}

output "aws_route_table_association_nat-pri-c_id"{
  value = aws_route_table_association.nat-pri-c.id
}

output "aws_route_table_rt-nat-a_id"{
  value = aws_route_table.rt-nat-a.id
}
  
output "aws_route_table_rt-nat-c_id"{
  value = aws_route_table.rt-nat-c.id
}

output "aws_route_table_rt-igw_id"{
  value = aws_route_table.rt-igw.id
}

output "aws_route_table_rt-vpc_id"{
  value = aws_route_table.rt-vpc.id
}
