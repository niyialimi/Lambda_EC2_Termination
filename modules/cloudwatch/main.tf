#==== Creating IAM role for the lambda function =====#
resource "aws_cloudwatch_event_rule" "ec2_check" {
  name                = var.cloudwatch_event_name
  description         = "Events rule to run Lambda function every 12 midnight"
  schedule_expression = var.cron
}

resource "aws_cloudwatch_event_target" "ec2_check_every_night" {
  rule      = aws_cloudwatch_event_rule.ec2_check.name
  target_id = var.target_id
  arn       = var.lambda_function_arn
}

resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.ec2_check.arn
}