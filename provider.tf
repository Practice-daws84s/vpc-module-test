terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.30.0"
    }
  }

  backend "s3" {
    bucket = "ksrdaws84s-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    #dynamodb_table = "ksrdaws84s-remote-state"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}