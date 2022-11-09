# There are really common 2 thins
# 1. Naming standard
# 2. Tagging standard

locals {
  region = "us-west-1"
  stage  = "non-prod"
  project = "provisioner"
  name = "aws-${local.stage}-${local.region}-${local.project}-rtype-${var.env}"     #Nameing standards which will be used by every single resource
  common_tags = {
    env = var.env
    project = local.project
    team = "Cloud"
    owner = "Yusuf"
    managed_by = "Terraform"
  }
}