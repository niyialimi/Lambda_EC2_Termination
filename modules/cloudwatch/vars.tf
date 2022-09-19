variable "cloudwatch_event_name" {
  description = "The name of the Cloudwatch event."
}

variable "cron" {
  description = "The cron job specification."
}

variable "target_id" {
  description = "The Id of the cloudwatch target."
}

variable "lambda_function_name" {
  description = "The lambda function name. To be genrated automatically from the lambda module"
}

variable "lambda_function_arn" {
  description = "The lambda function arn. To be genrated automatically from the lambda module"
}