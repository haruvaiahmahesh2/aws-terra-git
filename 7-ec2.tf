resource "aws_instance" "ec2-terra" {
  ami           = "ami-053b12d3152c0cc71" # ap-south-1 ubuntu
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  subnet_id = aws_subnet.pub-subnet-1.id
  key_name = "jen-k88s"
  vpc_security_group_ids = ["${aws_security_group.sg-1.id}"]
  associate_public_ip_address = true

  tags = {
    Name = "ec2-terra"
    Env = "prod"
    Owner = "maheshroshini08"
    CostCenter = "ABCD"
  }
}