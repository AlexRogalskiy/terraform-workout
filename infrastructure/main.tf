terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "personal"
  region  = "eu-central-1"
}

module "budget_module" {
  source = "./modules/budget"
  budgetcost = 10
}