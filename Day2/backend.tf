terraform {
  backend "s3" {
    bucket = "azlan-s3-demo-67"
    region = "eu-north-1"
    key = "azlan/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}
