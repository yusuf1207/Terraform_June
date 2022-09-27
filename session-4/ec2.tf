resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.env}-app-instance"
    Name2 = format("%s-app-instance", var.env)
  }
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}

# Combine static and dynamic values togather
# Name = dev-app-instance, qa-app-instance, prod-app-instance

# %s = string 
# %d = number 