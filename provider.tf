################################################################################################
# PROVIDER ap-southeast-1
################################################################################################

terraform {
  required_providers {
    aws = ">= 2.0"
  }
}

provider "aws" {
  alias      = "ap-southeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "ap-southeast-1"
}

################################################################################################
# PROVIDER ap-southeast-2
################################################################################################

provider "aws" {
  alias      = "ap-southeast-2"
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "ap-southeast-2"
}
