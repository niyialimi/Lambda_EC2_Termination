## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.2.0 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.lambda_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_function.ec2_terminate_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [archive_file.zip_python_code](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The EC2 instance environment tag. e.g, Dev, Prod | `string` | n/a | yes |
| <a name="input_handler"></a> [handler](#input\_handler) | The Function entrypoint | `string` | n/a | yes |
| <a name="input_lambda_name"></a> [lambda\_name](#input\_lambda\_name) | The name of the lambda function. | `string` | n/a | yes |
| <a name="input_output_path"></a> [output\_path](#input\_output\_path) | The path to output the zipped lambda function code. | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | The EC2 instance owner tag. e.g, Niti-Alimi | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime which AWS Lambda is going to use for running | `string` | n/a | yes |
| <a name="input_source_file"></a> [source\_file](#input\_source\_file) | The path of the lambda function code to be zipped. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_function_arn"></a> [lambda\_function\_arn](#output\_lambda\_function\_arn) | lambda function arn |
| <a name="output_lambda_function_name"></a> [lambda\_function\_name](#output\_lambda\_function\_name) | lambda function name |
