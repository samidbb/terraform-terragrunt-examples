terraform {
  backend "s3" {}
}

provider "aws" { # default
  region  = "eu-central-1"
}
