terraform {
  required_version = "~> 1.3.0"   #Terraform Version
  required_providers {            #Provider Vesin
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.7.0"         # ~> 4.7.0 = 4.7.0 < x < 4.8.0
    }
  }
}