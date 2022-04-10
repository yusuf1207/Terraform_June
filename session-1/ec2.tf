resource "aws_instance" "first_ec2" {
  ami           = "ami-0be2609ba883822ec"   
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}

# in JSON, we call it data. In terrraform, we call it argument
# Argument = key and calue, name and value.
# Key is predefined by Terraform, value is definedby author (us)
# Terraform has only 2 types of Blocks. Resource and Data source blocks.
# Each block has its own functionality.
# Resource block is designed to create resources. Data source is designed to fetch the data from exsiting resoure.
# Each block expects 2 labels.
# The first label is predefined by Terraform. It indicates what resource you would like to create.
# The second label is defined by Author. It indicates the Logical Name or Logical ID for the resources
# Every single resurce has to have a unique logical Name or ID