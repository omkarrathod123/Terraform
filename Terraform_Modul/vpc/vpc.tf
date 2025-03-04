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
resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.PracticVPC.id
}
resource "aws_route" "routeIGpublic" {
  route_table_id = aws_route_table.publicRT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.PracticIG.id
}
resource "aws_route_table_association" "publicRTRTA" {
  subnet_id = aws_subnet.publicSUB.id
  route_table_id = aws_route_table.publicRT.id
}
resource "aws_route_table" "privateRT" {
  vpc_id = aws_vpc.PracticVPC.id
}
resource "aws_route" "routeNATprivate" {
  route_table_id = aws_route_table.privateRT.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_nat_gateway.PracticNAT.id
}
resource "aws_route_table_association" "privateRTATA" {
  subnet_id = aws_subnet.privateSUB.id
  route_table_id = aws_route_table.privateRT.id
}
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