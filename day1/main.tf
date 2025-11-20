provider "aws" {
  region = "eu-north-1"
}

module "module" {
  source = "./modules"
  ami_value = "ami-0fa91bc90632c73c9" # replace this
  instance_type_value = "t3.micro" # replace this
}
