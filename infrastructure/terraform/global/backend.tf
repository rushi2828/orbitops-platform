terraform {
  backend "s3" {
    bucket         = "orbitops-terraform-state"
    key            = "global/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}