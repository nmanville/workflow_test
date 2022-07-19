terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "workflow-automation-tf"
    key    = "testing_state"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "us_east_1"
}
