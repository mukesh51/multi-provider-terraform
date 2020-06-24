# main.tf
module "eu-west-1" {
  source       = "./multi-region"
  queue_name   = "my-eu-west-1-queue"
  ecr_app_name = "myapp-eu-west-1"

  providers = {
    aws = aws
  }
}
module "eu-west-2" {
  source       = "./multi-region"
  queue_name   = "my-eu-west-2-queue"
  ecr_app_name = "myapp-eu-west-2"

  providers = {
    aws = aws.eu-west-2
  }
}
