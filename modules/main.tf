required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.44"
    }
  }


# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {
  region = var.aws_region
}

module "security_group" {
  source = "./modules_sample/plain" 
}
