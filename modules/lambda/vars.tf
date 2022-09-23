variable "lambda_name" {
  description = "The name of the lambda function."
}

variable "source_file" {
  description = "The path of the lambda function code to be zipped."
}

variable "output_path" {
  description = "The path to output the zipped lambda function code."
}

variable "runtime" {
  description = "The runtime which AWS Lambda is going to use for running"
}

variable "handler" {
  description = "The Function entrypoint"
}

variable "environment" {
  description = "The EC2 instance environment tag. e.g, Dev, Prod"
}

variable "owner" {
  description = "The EC2 instance owner tag. e.g, Niti-Alimi"
}
