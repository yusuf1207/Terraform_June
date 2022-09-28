terraform {
  backend "s3" {
    bucket = "terraform-2022-backend-do-not-delete"
    key    = "session-5/terraform.tfstate"
    region = "us-west-1"
    dynamodb_table = "terraform-2022-lock"
  }
}

# Remote backend is a plugin. Plugin is a feature
# you cannot pass or use any variables for Backend Configuration.
# We use Terraform lock = DynamoDB Table 