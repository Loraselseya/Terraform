resource "aws_internet_gateway" "TF-igw" {
  vpc_id = aws_vpc.TF-VPC.id

  tags = {
    Name = "main"
  }
}