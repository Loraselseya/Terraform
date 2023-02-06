resource "aws_instance" "TF-instance" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  key_name = "Temp-key"
  subnet_id = aws_subnet.TF-Subnet.id
  vpc_security_group_ids = [aws_security_group.TF-security-group.id]
  associate_public_ip_address = true
  user_data = file("data.sh")
}
