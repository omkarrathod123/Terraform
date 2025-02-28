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