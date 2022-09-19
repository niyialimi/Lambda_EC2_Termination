provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      project     = "lambda"
      environment = "dev"
      managedby   = "terraform"
      owner       = "Niyi-Alimi"
    }
  }
}