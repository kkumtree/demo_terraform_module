output "aws_instance_web-a_id" {
  value = aws_instance.web-a.id
}

output "aws_instance_web-c_id" {
  value = aws_instance.web-c.id
}

output "aws_instance_nat-a_id" {
  value = aws_instance.nat-a.id
}

output "aws_instance_nat-c_id" {
  value = aws_instance.nat-c.id
}

output "aws_instance_ssh_id" {
  value = aws_instance.ssh.id
}

/* output "aws_instance_ssh-c_id" {
  value = aws_instance.ssh-c.id
} */

locals {
  aws_instance_web-a_id = aws_instance.web-a.id
  aws_instance_web-c_id = aws_instance.web-c.id
  aws_instance_nat-a_id = aws_instance.nat-a.id
  aws_instance_nat-c_id = aws_instance.nat-c.id
  aws_instance_ssh_id = aws_instance.ssh.id
  /* aws_instance_ssh-c_id = aws_instance.ssh-c.id */
}

output "generated_ec2_via_module" {
  value = {
    web-a = aws_instance.web-a.id
    web-c = aws_instance.web-c.id
    nat-a = aws_instance.nat-a.id
    nat-c = aws_instance.nat-c.id
    ssh = aws_instance.ssh.id
    /* ssh-c = aws_instance.ssh-c.id */
  }
}

output "aws_instance_nat-a_eni_id" {
  value = aws_instance.nat-a.primary_network_interface_id
}

output "aws_instance_nat-c_eni_id" {
  value = aws_instance.nat-c.primary_network_interface_id
}