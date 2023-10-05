resource "aws_subnet" "subnet-pub-a" {
  cidr_block = var.subnet_cidr_pub_a
  map_public_ip_on_launch = "true"
  availability_zone = var.az_seoul_a

    tags = {
        Name = var.subnet_cidr_pub_a
    }

    tags_all = {
        Name = var.subnet_cidr_pub_a
    }

    vpc_id = var.vpc_id
}

resource "aws_subnet" "subnet-pub-c" {
  cidr_block = var.subnet_cidr_pub_c
  map_public_ip_on_launch = "true"
  availability_zone = var.az_seoul_c

    tags = {
        Name = var.subnet_cidr_pub_c
    }

    tags_all = {
        Name = var.subnet_cidr_pub_c
    }

    vpc_id = var.vpc_id
}

resource "aws_subnet" "subnet-pri-a" {
  cidr_block = var.subnet_cidr_pri_a
  map_public_ip_on_launch = "false"
  availability_zone = var.az_seoul_a

    tags = {
        Name = var.subnet_cidr_pri_a
    }

    tags_all = {
        Name = var.subnet_cidr_pri_a
    }

    vpc_id = var.vpc_id
}

resource "aws_subnet" "subnet-pri-c" {
  cidr_block = var.subnet_cidr_pri_c
  map_public_ip_on_launch = "false"
  availability_zone = var.az_seoul_c

    tags = {
        Name = var.subnet_cidr_pri_c
    }

    tags_all = {
        Name = var.subnet_cidr_pri_c
    }

    vpc_id = var.vpc_id
}