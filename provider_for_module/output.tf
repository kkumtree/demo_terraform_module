output "local_module_output_ec2" {
  value =  module.local_module_ec2.aws_instance_web-a_id
}

output "local_module_output_vpc" {
  value =  module.local_module_vpc.aws_vpc_vpc_id
}

output "local_module_output_subnet" {
  value =  module.local_module_subnet.aws_subnet_pri-a_id
}

output "local_module_output_sg_sg-alb0" {
  value =  module.local_module_sg.aws_security_group_sg-alb0_id
}

output "local_module_output_sg_sg-ssh" {
  value =  module.local_module_sg.aws_security_group_sg-ssh_id
}

output "local_module_output_sg_sg-web" {
  value =  module.local_module_sg.aws_security_group_sg-web_id
}

output "local_module_output_sg_sg-nat" {
  value =  module.local_module_sg.aws_security_group_sg-nat_id
}

output "local_module_output_sg_sg-rdb" {
  value =  module.local_module_sg.aws_security_group_sg-rdb_id
}

output "local_module_output_route_table_rt-nat-a" {
  value =  module.local_module_route_table.aws_route_table_rt-nat-a_id
}

output "local_module_output_route_table_rt-nat-c" {
  value =  module.local_module_route_table.aws_route_table_rt-nat-c_id
}

output "local_module_output_route_table_rt-igw" {
  value =  module.local_module_route_table.aws_route_table_rt-igw_id
}

output "local_module_output_route_table_rt-vpc" {
  value =  module.local_module_route_table.aws_route_table_rt-vpc_id
}

output "local_module_output_route_table_association_nat-pri-a" {
  value =  module.local_module_route_table.aws_route_table_association_nat-pri-a_id
}

output "local_module_output_route_table_association_nat-pri-c" {
  value =  module.local_module_route_table.aws_route_table_association_nat-pri-c_id
}

output "local_module_output_route_table_association_igw-pub-a" {
  value =  module.local_module_route_table.aws_route_table_association_igw-pub-a_id
}

output "local_module_output_route_table_association_igw-pub-c" {
  value =  module.local_module_route_table.aws_route_table_association_igw-pub-c_id
}

output "local_module_output_route_table_association_vpc-self" {
  value =  module.local_module_route_table.aws_main_route_table_association_vpc-self_id
}

output "local_module_output_igw" {
  value =  module.local_module_igw.aws_internet_gateway_igw_id
}

