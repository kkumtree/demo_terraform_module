module "local_module_ec2" {
  source = "../modules/terraform-aws-ec2"
  depends_on = [ 
    module.local_module_vpc, 
    module.local_module_subnet,
    module.local_module_sg,
    module.local_module_igw
  ]

  vpc_id = module.local_module_vpc.aws_vpc_vpc_id
  subnet_pri-a_id = module.local_module_subnet.aws_subnet_pri-a_id
  subnet_pri-c_id = module.local_module_subnet.aws_subnet_pri-c_id
  subnet_pub-a_id = module.local_module_subnet.aws_subnet_pub-a_id
  subnet_pub-c_id = module.local_module_subnet.aws_subnet_pub-c_id
  sg_sg-web_id = module.local_module_sg.aws_security_group_sg-web_id
  sg_sg-nat_id = module.local_module_sg.aws_security_group_sg-nat_id
  sg_sg-ssh_id = module.local_module_sg.aws_security_group_sg-ssh_id

  providers = {
    aws = aws
  }
}

module "local_module_vpc" {
  source = "../modules/terraform-aws-vpc"

  providers = {
    aws = aws
  }
}

module "local_module_subnet" {
  source = "../modules/terraform-aws-subnet"
  depends_on = [ 
    module.local_module_vpc
  ]

  vpc_id = module.local_module_vpc.aws_vpc_vpc_id

  providers = {
    aws = aws
  }
}

module "local_module_sg" {
  source = "../modules/terraform-aws-sg"
  depends_on = [ 
    module.local_module_vpc
  ]

  vpc_id = module.local_module_vpc.aws_vpc_vpc_id

  providers = {
    aws = aws
  }
}

module "local_module_route_table" {
  source = "../modules/terraform-aws-route_table"
  depends_on = [ 
    module.local_module_vpc, 
    module.local_module_subnet,
    module.local_module_igw,
    module.local_module_ec2
  ]

  vpc_id = module.local_module_vpc.aws_vpc_vpc_id
  igw_id = module.local_module_igw.aws_internet_gateway_igw_id
  eni_id_rt-nat-a = module.local_module_ec2.aws_instance_nat-a_eni_id
  eni_id_rt-nat-c = module.local_module_ec2.aws_instance_nat-c_eni_id
  subnet_id_pri-a = module.local_module_subnet.aws_subnet_pri-a_id
  subnet_id_pri-c = module.local_module_subnet.aws_subnet_pri-c_id
  subnet_id_pub-a = module.local_module_subnet.aws_subnet_pub-a_id
  subnet_id_pub-c = module.local_module_subnet.aws_subnet_pub-c_id

  providers = {
    aws = aws
  }
}

module "local_module_igw" {
  source = "../modules/terraform-aws-igw"
  depends_on = [ 
    module.local_module_vpc
  ]

  vpc_id = module.local_module_vpc.aws_vpc_vpc_id

  providers = {
    aws = aws
  }
}

locals {
  target_id_tg-alb0 = {
    for k, v in module.local_module_ec2.generated_ec2_via_module:
    k => v
  }
}
module "local_module_alb" {
  source = "../modules/terraform-aws-alb"
  depends_on = [ 
    module.local_module_vpc, 
    module.local_module_subnet,
    module.local_module_sg,
    module.local_module_ec2
  ]

  vpc_id = module.local_module_vpc.aws_vpc_vpc_id
  subnet_id_pub-a = module.local_module_subnet.aws_subnet_pub-a_id
  subnet_id_pub-c = module.local_module_subnet.aws_subnet_pub-c_id
  aws_security_group_alb0_id = module.local_module_sg.aws_security_group_sg-alb0_id
  target_id_tg-alb0 = local.target_id_tg-alb0

  providers = {
    aws = aws
  }
}