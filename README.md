# terraform-remote-storage-state-example

This config will create s3 bucket to store the terraform state file to make sure when u run terraform apply it will always fetch file from bucket to check the state.

run the below command to configure remote config settings

in version 0.9 terraform changed the way they intialized backend now they ask you include below 
terraform {
  backend "s3" {
    bucket = "rohit-terraform-state-storage"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}
and then make sure you run terraform init first that will intialized your repo, at this time terraform assuming that you alrady have S3 bucket created , so no exception if it is not there but when you apply terraform apply it will fetch the state from remote S3 bucket and then apply changes on top of that.
