terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.49.0"

    backend "s3" {

        bucket = "aws-tech-guru"
        key    = "aws-tech-guru-nonprod.tfstate"
        region = "ap-southeast-1"
     
    }
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}