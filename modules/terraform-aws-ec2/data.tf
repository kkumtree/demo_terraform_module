data "aws_ami" "al2023-arm64" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-arm64"]
  }
}

data "aws_ami" "al2018-nat-amd64" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-vpc-nat-*-x86_64-ebs"]
  }
}

data "aws_ami" "al2-amd64" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-*-x86_64-gp2"]
  }
}

data "aws_launch_template" "web-tpl-al2-amd64" {
  name = "LAB-WEB-TPL"
}

data "aws_launch_template" "ssh-tpl-al2023-arm64" {
  name = "LAB-SSH-TPL"
}
