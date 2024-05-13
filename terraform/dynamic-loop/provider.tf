terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "vishruth-terraform-remote-state"
    key    = "remote-state"       #we can give anything here
    region = "us-east-1"
    dynamodb_table = "vishruth-state-locking"
}
}

provider "aws" {
  region = "us-east-1"
}

