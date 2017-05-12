# terraform-remote-storage-state-example

This config will create s3 bucket to store the terraform state file to make sure when u run terraform apply it will always fetch file from bucket to check the state.

run the below command to configure remote config settings

terraform remote config \
    -backend=s3 \
    -backend-config="bucket=rohit-terraform-state-storage" \
    -backend-config="key=terraform.tfstate" \
    -backend-config="region=us-east-1" \
    -backend-config="encrypt=true"
