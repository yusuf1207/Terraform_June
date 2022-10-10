#!/bin/bash

sudo rm -rf .terraform*
ENV = "$1"
sed -i ' ' -e "s|_env_|ENV|" backend.tf 
terraform init
echo "Environment is set to $ENV"
terraform plan -var-file=tfvats/$ENV.tf
terraform apply -var-file=tfvats/$ENV.tf -auto-approve
sed -i ' ' -e "s|ENV|_env_" backend.tf


# sed and awk commands