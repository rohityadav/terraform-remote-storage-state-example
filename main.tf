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

terraform {
  backend "s3" {
    bucket = "rohit-terraform-state-storage"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

output "bucket_arn" {
  value = "${aws_s3_bucket.terraform_state.arn}"
}


output "bucket_name" {
  value = "${aws_s3_bucket.terraform_state.bucket}"
}
