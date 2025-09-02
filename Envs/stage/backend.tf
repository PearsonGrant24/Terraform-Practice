terraform {
  backend "s3" {
    bucket = "pract-terraform-122347"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
  }
}
