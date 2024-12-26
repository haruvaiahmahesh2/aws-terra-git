resource "aws_subnet" "pub-subnet-1" {
  vpc_id            = aws_vpc.vpc-terra.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "pub-subnet-1"
  }
}