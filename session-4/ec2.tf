resource "aws_instance" "my_ec2" {
  ami           = s 
  instance_type = var.instance_type
  tags = {
    Name = var.env
  }
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}

