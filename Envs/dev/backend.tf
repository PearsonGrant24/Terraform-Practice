terraform {
  backend "s3" {
    bucket = "pract-terraform-122345"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
