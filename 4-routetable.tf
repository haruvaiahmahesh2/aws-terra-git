resource "aws_route_table" "rt-table" {
  vpc_id = aws_vpc.vpc-terra.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-1.id
  }
  tags = {
    Name = "rt-table"
  }
}