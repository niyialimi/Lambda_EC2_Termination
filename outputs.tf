output "lambda_function_name" {
  value = module.ec2_lambda.lambda_function_name
}

output "lambda_function_arn" {
  value = module.ec2_lambda.lambda_function_arn
}

output "cloudwatch_event_rule_name" {
  value = module.cloudwatch.cloudwatch_event_rule_name
}
