provider "aws" {
  region     = "eu-west-1"
}

provider "aws" {
  region     = "eu-west-2"
  alias = "eu-west-2"
}