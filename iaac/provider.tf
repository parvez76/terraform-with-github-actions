terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }

  backend "s3" {
    bucket = "tf-rb-github-actions"
    key    = "dev/state-files"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}


terraform {

}
