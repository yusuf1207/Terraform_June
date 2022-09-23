resource "aws_instance" "my_ec2" {
  ami           = "ami-0147bd0a180d521bd" #String, Hard Coded Value
  instance_type = "t2.micro"
  tags = {
    Name = "test"
  }
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}