provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "rohit-terraform-state-storage"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

output "bucket_name" {
  value = "${aws_s3_bucket.terraform_state.arn}"
}
