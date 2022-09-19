module "ec2_lambda" {
  source      = "./modules/lambda"
  lambda_name = var.lambda_name
  source_file = var.source_file
  output_path = var.output_path
  handler     = var.handler
  runtime     = var.runtime
  environment = var.environment
  owner       = var.owner
}

module "cloudwatch" {
  source                = "./modules/cloudwatch"
  cloudwatch_event_name = var.cloudwatch_event_name
  cron                  = var.cron
  target_id             = var.target_id
  lambda_function_arn   = module.ec2_lambda.lambda_function_arn
  lambda_function_name  = module.ec2_lambda.lambda_function_name
}