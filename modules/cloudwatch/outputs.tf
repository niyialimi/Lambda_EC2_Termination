output "cloudwatch_event_rule_name" {
  description = "The cloudwatch event rule name"
  value       = aws_cloudwatch_event_rule.ec2_check.name
}