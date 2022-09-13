provider "aws" {
  region  = "us-east-1"
  profile = "revature-terraform"
}
terraform {
  backend "s3" {
    bucket  = "revature-terraform"
    key     = "cognizant/aws-lab/terraform.tfstate"
    region  = "us-east-1"
    profile = "revature-terraform-state"
  }
}
