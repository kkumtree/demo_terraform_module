terraform {
  cloud {
    organization = "kkumtree"

    workspaces {
      name = "t101"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.17.0"
    }
    external = {
      source = "hashicorp/external"
      version = "~> 2.3.1"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"

  default_tags {
    tags = {
      "Project" = "LAB_AWS_TF00"
      "Environment" = "Learning"
      "Terraform" = "true"
    }
  }
}
