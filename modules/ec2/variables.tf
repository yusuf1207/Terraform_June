variable "ami" {
    type = string
    description = "This is AMI for my ec2 instance"
}
variable "instance_type" {
    type = string
    description = "This is a size of my ec2 instance"
}
variable "env" {
    type = string
    description = "This represents the environment"
}