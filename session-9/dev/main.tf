# Terraform Local module whtich consists of Child and Root modules

module "ec2" {
    source = "../../modules/ec2"   #Local or Remote, when it is a Local module, you provide a path of the Child module
    # You can declare your variables as a configuration
    ami = "ami-09208e69ff3feb1db"
    instance_type = "t2.micro"
    env = "dev"
}