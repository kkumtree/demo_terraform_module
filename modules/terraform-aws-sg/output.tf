output "aws_security_group_sg-alb0_id" {
  value = aws_security_group.sg-alb0.id
}

output "aws_security_group_sg-ssh_id" {
  value = aws_security_group.sg-ssh.id
}

output "aws_security_group_sg-web_id" {
  value = aws_security_group.sg-web.id
}

output "aws_security_group_sg-nat_id" {
  value = aws_security_group.sg-nat.id
}

output "aws_security_group_sg-rdb_id" {
  value = aws_security_group.sg-rdb.id
}