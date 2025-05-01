terraform {
  required_version = ">= 1.4.0" # or whatever version you are using
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # or adjust to the major version you prefer
    }
  }
}