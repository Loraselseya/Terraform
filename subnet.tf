resource "aws_subnet" "TF-Subnet" {
  vpc_id     = aws_vpc.TF-VPC.id
  cidr_block = "10.0.32.0/19"

  tags = {
    Name = "TF-Subnet"
  }
}