terraform {
  backend "s3" {
    bucket = "terraform-pract-122346"
    key    = "pract/terraform.tfstate"
    region = "us-east-1"
  }
}
