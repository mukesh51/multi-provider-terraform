variable "queue_name" {}

resource "aws_sqs_queue" "queue" {
  name = var.queue_name
}

output "sqs_queue_arn" {
  value = "${aws_sqs_queue.queue.arn}"
}
