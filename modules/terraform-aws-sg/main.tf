resource "aws_security_group" "sg-alb0" {
  description = "Allow 80 for web service"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    from_port       = "80"
    protocol        = "tcp"
    to_port         = "80"
  }

  name = var.sg_name_alb
  tags = {
    Name = var.sg_name_alb
  }

  tags_all = {
    Name = var.sg_name_alb
  }

  vpc_id = var.vpc_id
}

resource "aws_security_group" "sg-ssh" {
  description = "inbound from bastion, alb"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    to_port     = "0"
  }

  ingress {
    description = "SSH 22 from admin"

    cidr_blocks = [ "${data.external.current_ip.result.ip}/32" ]
    from_port   = "22"
    protocol        = "tcp"
    to_port         = "22"
  }

  name = var.sg_name_ssh

  tags = {
    Name = var.sg_name_ssh
  }

  tags_all = {
    Name = var.sg_name_ssh
  }

  vpc_id = var.vpc_id
}

resource "aws_security_group" "sg-web" {
  description = "inbound from bastion, alb"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    to_port     = "0"
  }

  ingress {
    description     = "ALB 80"
    from_port       = "80"
    protocol        = "tcp"
    security_groups = [ aws_security_group.sg-alb0.id ]
    to_port         = "80"
  }

  ingress {
    description = "BASTION 22"
    from_port   = "22"
    protocol        = "tcp"
    security_groups = [ aws_security_group.sg-ssh.id ]
    to_port         = "22"
  }

  name = var.sg_name_web

  tags = {
    Name = var.sg_name_web
  }

  tags_all = {
    Name = var.sg_name_web
  }

  vpc_id = var.vpc_id
}

resource "aws_security_group" "sg-nat" {
  description = "inbound from WEB to connect Internet"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    to_port     = "0"
  }

  ingress {
    description     = "ALL WEB"
    from_port       = "0"
    protocol        = "-1"
    security_groups = [ aws_security_group.sg-web.id ]
    to_port         = "0"
  }

  name = var.sg_name_nat

  tags = {
    Name = var.sg_name_nat
  }

  tags_all = {
    Name = var.sg_name_nat
  }

  vpc_id = var.vpc_id
}

resource "aws_security_group" "sg-rdb" {
  description = "inbound from WEB, SSH to connect RDS"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    to_port     = "0"
  }

  ingress {
    description     = "MySQL WEB"
    from_port       = "3306"
    protocol        = "TCP"
    security_groups = [ aws_security_group.sg-web.id ]
    to_port         = "3306"
  }

  ingress {
    description     = "MySQL SSH"
    from_port       = "3306"
    protocol        = "TCP"
    security_groups = [ aws_security_group.sg-ssh.id ]
    to_port         = "3306"
  }

  name = var.sg_name_rds

  tags = {
    Name = var.sg_name_rds
  }

  tags_all = {
    Name = var.sg_name_rds
  }

  vpc_id = var.vpc_id
}