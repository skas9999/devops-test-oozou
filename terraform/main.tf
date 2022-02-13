terraform {
  required_version = "= 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3"
    }
  }

  backend "s3" {
    bucket = "lab-ecs-test-bucket"
    key    = "state/terraform_state.tfstate"
    region = "ap-southeast-1"
    encrypt = true
    dynamodb_table = "terraform-state-lock"
  }
}

provider "aws" {
  region = var.region
}
