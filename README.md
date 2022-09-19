## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.15.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudwatch"></a> [cloudwatch](#module\_cloudwatch) | ./modules/cloudwatch | n/a |
| <a name="module_ec2_lambda"></a> [ec2\_lambda](#module\_ec2\_lambda) | ./modules/lambda | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region for the deployment | `string` | `"ap-southeast-2"` | no |
| <a name="input_cloudwatch_event_name"></a> [cloudwatch\_event\_name](#input\_cloudwatch\_event\_name) | The name of the Cloudwatch event. | `string` | `"ec2_check"` | no |
| <a name="input_cron"></a> [cron](#input\_cron) | The cron job specification. | `string` | `"cron(0 0 ? * * *)"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The EC2 instance environment tag. e.g, Dev, Prod | `string` | `"dev"` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | The Function entrypoint | `string` | `"ec2.lambda_handler"` | no |
| <a name="input_lambda_name"></a> [lambda\_name](#input\_lambda\_name) | The name of the lambda function. | `string` | `"EC2_Terminate_Lambda"` | no |
| <a name="input_output_path"></a> [output\_path](#input\_output\_path) | The path to output the zipped lambda function code. | `string` | `"scripts/ec2_lambda_function.zip"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | The EC2 instance owner tag. e.g, Niti-Alimi | `string` | `"Niyi-Alimi"` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime which AWS Lambda is going to use for running | `string` | `"python3.9"` | no |
| <a name="input_source_file"></a> [source\_file](#input\_source\_file) | The path of the lambda function code to be zipped. | `string` | `"scripts/ec2.py"` | no |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | The Id of the cloudwatch target. | `string` | `"ec2_lambda"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_event_rule_name"></a> [cloudwatch\_event\_rule\_name](#output\_cloudwatch\_event\_rule\_name) | n/a |
| <a name="output_lambda_function_arn"></a> [lambda\_function\_arn](#output\_lambda\_function\_arn) | n/a |
| <a name="output_lambda_function_name"></a> [lambda\_function\_name](#output\_lambda\_function\_name) | n/a |
