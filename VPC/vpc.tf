resource "aws_vpc" "PracticVPC" {
  cidr_block = var.VPC_cidr_block
  instance_tenancy = "default"
  tags = {
    Name = "PracticVPC"
    Env = "Lab"
  }
}
resource "aws_internet_gateway" "PracticIG" {
  vpc_id = aws_vpc.PracticVPC.id
  tags = {
    Name = "PracticIG"
    Env = "Lab"
  }
}