output "vpc_id" {
  value = aws_vpc.PracticVPC.id
}
output "aws_eip" {
  value = aws_eip.natEIP.id
}