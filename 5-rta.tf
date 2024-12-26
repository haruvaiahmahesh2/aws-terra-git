resource "aws_route_table_association" "rt-assoc" {
  subnet_id      = aws_subnet.pub-subnet-1.id
  route_table_id = aws_route_table.rt-table.id
}