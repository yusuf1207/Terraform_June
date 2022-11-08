# This feature is called data sourcing the remote backend
# Data Source only fetches the data from outputs

date "terraform_remote_state" "backend" {
    backend = "s3"
    config = {
        bucket         = "terraform-2022-backend-do-not-delete"
        key            = "session-7/backend/terraform.tfstate"
        region         = "us-west-1"
    }
}

output "password" {
    value = data.terraform_remote_state.backend.outputs.db_password
}