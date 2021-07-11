terraform {

   required_version = ">= 0.12.24"

    backend "s3" {

        bucket = "aws-tech-guru"
        key    = "aws-tech-guru-nonprod.tfstate"
        region = "ap-southeast-1"
    }
   
   data "terraform_remote_state" "network" {
      backend = "s3"
      config  = {
      bucket  = "aws-tech-guru"
      key     = "terraform.tfstate"
      region  = "ap-southeast-1"
  }
}

}

provider "aws" {
  region = "ap-southeast-1"
  access_key = "${AWS_ACCESS_KEY}"
  secret_key = "${AWS_SECRET_KEY}"
}
