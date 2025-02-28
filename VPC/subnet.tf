resource "aws_subnet" "publicSUB" {
  vpc_id = aws_vpc.PracticVPC.id
  cidr_block = var.Public_cidr_block
  availability_zone = "ap-south-1b"

  tags = {
    Name = "publicSub"
    Env = "Lab"
  }
}
resource "aws_subnet" "privateSUB" {
  vpc_id = aws_vpc.PracticVPC.id
  cidr_block = var.Private_cidr_block
  availability_zone = "ap-south-1b"

  tags = {
    Name = "privateSUB"
    Env = "Lab"
  }
}