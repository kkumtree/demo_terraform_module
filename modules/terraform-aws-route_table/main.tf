resource "aws_route_table" "rt-nat-a" {
  route {
    cidr_block = "0.0.0.0/0"
    network_interface_id = var.eni_id_rt-nat-a
  }

  tags = {
    Name = var.name_rt-nat-a
  }

  tags_all = {
    Name = var.name_rt-nat-a
  }

  vpc_id = var.vpc_id
}

resource "aws_route_table" "rt-nat-c" {
  route {
    cidr_block = "0.0.0.0/0"
    network_interface_id = var.eni_id_rt-nat-c
  }

  tags = {
    Name = var.name_rt-nat-c
  }

  tags_all = {
    Name = var.eni_id_rt-nat-c
  }

  vpc_id = var.vpc_id
}

resource "aws_route_table" "rt-igw" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = var.name_rt-igw
  }

  tags_all = {
    Name = var.name_rt-igw
  }

  vpc_id = var.vpc_id
}

# Main Route Table
resource "aws_route_table" "rt-vpc" {
  vpc_id = var.vpc_id
}