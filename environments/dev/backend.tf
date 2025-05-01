terraform {
  backend "s3" {
    bucket         = "vicertify-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"  # CodeCatalyst region
    dynamodb_table = "vicertify-terraform-locks"
    encrypt        = true
  }
} 