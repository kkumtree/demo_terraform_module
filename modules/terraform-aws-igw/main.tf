resource "aws_internet_gateway" "vpc_igw" {
  tags ={
    Name = var.name_igw
  }

  tags_all ={
    Name = var.name_igw
  }

  vpc_id = var.vpc_id
}