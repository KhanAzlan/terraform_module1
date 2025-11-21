provider "aws" {
    region = "eu-north-1"
}

resource "aws_instance" "azlan" {
    instance_type = "t3.micro"
    ami = "ami-0fa91bc90632c73c9"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "azlan-s3-demo-67"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
