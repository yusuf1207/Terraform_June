variable "env" {
  type        = string
  description = "This variable represents an environment"
  default     = "dev"
}

variable "ami" {
  type        = string
  description = "Image ID for EC2 Instance"
  default     = "ami-0147bd0a180d521bd"
}

variable "instance_type" {
  type        = string
  description = "Capacity"
  default     = "t2.micro"
}

# Variables are for re-useble purpose, something is repeated over and over again.