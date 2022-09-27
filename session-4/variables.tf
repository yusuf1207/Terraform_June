variable "env" {
  type        = string
  description = "This variable represents an environment"
  default     = "dev"
}


variable "instance_type" {
  type        = string
  description = "Capacity"
  default     = "t2.micro"
}

# Variables are for re-useble purpose, something is repeated over and over again.