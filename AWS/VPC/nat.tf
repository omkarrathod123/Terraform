resource "aws_eip" "natEIP" {
  domain = "vpc"
}
resource "aws_nat_gateway" "PracticNAT" {
  allocation_id = aws_eip.natEIP.id
  subnet_id = aws_subnet.publicSUB.id
  connectivity_type = "public"
  
  tags = {
    Name = "PracticNAT"
    Env = "Lab"
  }
}