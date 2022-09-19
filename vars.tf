variable "aws_region" {
  description = "AWS region for the deployment"
  type        = string
  default     = "ap-southeast-2"
}

variable "lambda_name" {
  description = "The name of the lambda function."
  type        = string
  default     = "EC2_Terminate_Lambda"
}

variable "source_file" {
  description = "The path of the lambda function code to be zipped."
  type        = string
  default     = "scripts/ec2.py"
}

variable "output_path" {
  description = "The path to output the zipped lambda function code."
  type        = string
  default     = "scripts/ec2_lambda_function.zip"
}

variable "runtime" {
  description = "The runtime which AWS Lambda is going to use for running"
  type        = string
  default     = "python3.9"
}


variable "handler" {
  description = "The Function entrypoint"
  type        = string
  default     = "ec2.lambda_handler"
}

variable "environment" {
  description = "The EC2 instance environment tag. e.g, Dev, Prod"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "The EC2 instance owner tag. e.g, Niti-Alimi"
  type        = string
  default     = "Niyi-Alimi"
}

variable "cloudwatch_event_name" {
  description = "The name of the Cloudwatch event."
  type        = string
  default     = "ec2_check"
}

variable "cron" {
  description = "The cron job specification."
  type        = string
  default     = "cron(0 0 ? * * *)"
}

variable "target_id" {
  description = "The Id of the cloudwatch target."
  type        = string
  default     = "ec2_lambda"
}