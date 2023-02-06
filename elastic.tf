resource "aws_eip" "TF-elastic" {
  instance = aws_instance.TF-instance.id
  vpc      = true

  # Meta argument
  depends_on = [aws_internet_gateway.TF-igw]
}

