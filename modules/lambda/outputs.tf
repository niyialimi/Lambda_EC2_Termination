output "lambda_function_name" {
  description = "lambda function name"
  value       = aws_lambda_function.ec2_terminate_lambda.function_name
}

output "lambda_function_arn" {
  description = "lambda function arn"
  value       = aws_lambda_function.ec2_terminate_lambda.arn
}
