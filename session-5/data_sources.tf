data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

//aws_ami.amazon_linux_2.id = Terraform thinks it is a resource
//data.aws_ami.amazon_linux_2.id = Terraform thinks it is data source
# Fetch the date from an existing resource, date can be attribute that resource