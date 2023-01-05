terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-remote-state-storage1"
    dynamodb_table = "terraform-state-lock-dynamo1"
    region         = "eu-north-1"
    key            = "iaac-terraform-poc-base.tf"
  }
}