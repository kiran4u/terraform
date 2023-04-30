terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  backend "s3"{
    bucket = "terraform-timing-remote-state"
    key = "timing"
    region = "ca-central-1"
    dynamodb_table = "timing-lock"
  }

}

provider "aws" {
  # Configuration options
  region = "ca-central-1"
}

