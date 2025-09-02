terraform {
  backend "s3" {
    bucket = "terraform-pract-122349"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}
