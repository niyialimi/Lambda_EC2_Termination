variable "lambda_name" {
  description = "The name of the lambda function."
  type        = string
}

variable "source_file" {
  description = "The path of the lambda function code to be zipped."
  type        = string
}

variable "output_path" {
  description = "The path to output the zipped lambda function code."
  type        = string
}

variable "runtime" {
  description = "The runtime which AWS Lambda is going to use for running"
  type        = string
}

variable "handler" {
  description = "The Function entrypoint"
  type        = string
}

variable "environment" {
  description = "The EC2 instance environment tag. e.g, Dev, Prod"
  type        = string
}

variable "owner" {
  description = "The EC2 instance owner tag. e.g, Niti-Alimi"
  type        = string
}
