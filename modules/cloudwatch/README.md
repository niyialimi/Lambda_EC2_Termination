## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.ec2_check](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.ec2_check_every_night](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |
| [aws_lambda_permission.allow_cloudwatch](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudwatch_event_name"></a> [cloudwatch\_event\_name](#input\_cloudwatch\_event\_name) | The name of the Cloudwatch event. | `string` | n/a | yes |
| <a name="input_cron"></a> [cron](#input\_cron) | The cron job specification. | `string` | n/a | yes |
| <a name="input_lambda_function_arn"></a> [lambda\_function\_arn](#input\_lambda\_function\_arn) | The lambda function arn. To be genrated automatically from the lambda module | `string` | n/a | yes |
| <a name="input_lambda_function_name"></a> [lambda\_function\_name](#input\_lambda\_function\_name) | The lambda function name. To be genrated automatically from the lambda module | `string` | n/a | yes |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | The Id of the cloudwatch target. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_event_rule_name"></a> [cloudwatch\_event\_rule\_name](#output\_cloudwatch\_event\_rule\_name) | The cloudwatch event rule name |
