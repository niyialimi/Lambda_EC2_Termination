variable "cloudwatch_event_name" {
  description = "The name of the Cloudwatch event."
  type        = string
}

variable "cron" {
  description = "The cron job specification."
  type        = string
}

variable "target_id" {
  description = "The Id of the cloudwatch target."
  type        = string
}

variable "lambda_function_name" {
  description = "The lambda function name. To be genrated automatically from the lambda module"
  type        = string
}

variable "lambda_function_arn" {
  description = "The lambda function arn. To be genrated automatically from the lambda module"
  type        = string
}
