terraform {
  backend "s3" {
    bucket         = "terraform-2022-backend-do-not-delete"
    key            = "session-9/dev/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-2022-lock"
  }
}