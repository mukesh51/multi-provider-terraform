variable "ecr_app_name" {}

resource "aws_ecr_repository" "myapp" {
  name = var.ecr_app_name
}

output "myapp_repository_name" {
  value = "${aws_ecr_repository.myapp.name}"
}
