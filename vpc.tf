resource "aws_vpc" "TF-VPC" {
  cidr_block       = "10.0.0.0/18"

  tags = {
    Name = "main"
  }
}