resource "aws_instance" "web-a" {
  ami = data.aws_ami.al2-amd64.id
  associate_public_ip_address = "false"

  iam_instance_profile = var.iam_instance_profile_web
  instance_type = var.instance_type_amd64
  key_name = var.key_name

  /* launch_template {
    id     = data.aws_launch_template.web-tpl-al2-amd64.id
    version = "$Latest"
  } */

  subnet_id = var.subnet_pri-a_id

  tags = { 
    Name = var.instance_tag_name_web-a
  }

  tags_all = { 
    Name = var.instance_tag_name_web-a
  }

  vpc_security_group_ids = [ var.sg_sg-web_id ]

  lifecycle {
    ignore_changes = [
      tags,
      ami,
    ]
  }
}

resource "aws_instance" "web-c" {
  ami = data.aws_ami.al2-amd64.id
  associate_public_ip_address = "false"

  iam_instance_profile = var.iam_instance_profile_web
  instance_type = var.instance_type_amd64
  key_name = var.key_name

  /* launch_template {
    id     = data.aws_launch_template.web-tpl-al2-amd64.id
    version = "$Latest"
  } */

  subnet_id = var.subnet_pri-c_id

  tags = { 
    Name = var.instance_tag_name_web-a
  }

  tags_all = { 
    Name = var.instance_tag_name_web-a
  }

  vpc_security_group_ids = [ var.sg_sg-web_id ]

  lifecycle {
    ignore_changes = [
      tags,
      ami,
    ]
  }
}

resource "aws_instance" "nat-a" {
  ami = data.aws_ami.al2018-nat-amd64.id
  associate_public_ip_address = "false"

  instance_type = var.instance_type_amd64
  key_name = var.key_name

  subnet_id = var.subnet_pub-a_id

  tags = { 
    Name = var.instance_tag_name_nat-a
  }

  tags_all = { 
    Name = var.instance_tag_name_nat-a
  }

  vpc_security_group_ids = [ var.sg_sg-nat_id ]

  lifecycle {
    ignore_changes = [
      tags,
      ami,
    ]
  }
}

resource "aws_instance" "nat-c" {
  ami = data.aws_ami.al2018-nat-amd64.id
  associate_public_ip_address = "false"

  instance_type = var.instance_type_amd64
  key_name = var.key_name

  subnet_id = var.subnet_pub-c_id

  tags = { 
    Name = var.instance_tag_name_nat-c
  }

  tags_all = { 
    Name = var.instance_tag_name_nat-c
  }

  vpc_security_group_ids = [ var.sg_sg-nat_id ]

  lifecycle {
    ignore_changes = [
      tags,
      ami,
    ]
  }
}

resource "aws_instance" "ssh" {
  ami = data.aws_ami.al2023-arm64.id
  associate_public_ip_address = "true"

  instance_type = var.instance_type_arm64
  key_name = var.key_name

  metadata_options {
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
  }

  tags = { 
    Name = var.instance_tag_name_ssh
  }

  tags_all = { 
    Name = var.instance_tag_name_ssh
  }
  
  source_dest_check = "true"
  subnet_id = var.subnet_pub-a_id
  vpc_security_group_ids = [ var.sg_sg-ssh_id ]

  lifecycle {
    ignore_changes = [
      tags,
      ami,
    ]
  }
}

/* resource "aws_instance" "ssh-c" {
  ami = data.aws_ami.al2023-arm64.id
  associate_public_ip_address = "true"

  instance_type = var.instance_type_arm64
  key_name = var.key_name

  launch_template {
    id     = data.aws_launch_template.ssh-tpl-al2023-arm64.id
    version = "$Latest"
  }

  subnet_id = var.subnet_pub-c_id

  tags = { 
    Name = var.instance_tag_name_ssh-c
  }

  tags_all = { 
    Name = var.instance_tag_name_ssh-c
  }

  vpc_security_group_ids = [ var.sg_sg-ssh_id ]
} */