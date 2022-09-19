#==== Creating IAM role for the lambda function =====#
resource "aws_iam_role" "lambda_role" {
  name               = "${var.lambda_name}_role"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY

  tags = {
    "Name" = "${var.lambda_name}_role"
  }
}

#==== Creating IAM Policy for the lambda function =====#
resource "aws_iam_policy" "lambda_policy" {
  name               = "${var.lambda_name}_policy"
  path        = "/"
  description  = "AWS IAM Policy for managing aws lambda role"
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "GetEC2Details",
      "Action": [
        "ec2:DescribeInstanceStatus",
        "ec2:DescribeInstanceTypes",
        "ec2:DescribeInstances",
        "ec2:DescribeTags",
        "ec2:StartInstances",
        "ec2:StopInstances",
        "ec2:TerminateInstances",
        "logs:*"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:::policy/LambdaEC2Policy"
    }
  ]
}
POLICY

  tags = {
    "Name" = "${var.lambda_name}_policy"
  }
}

#==== Attaching the Lambda policies to the Lambda role ====#
resource "aws_iam_role_policy_attachment" "attach_lambda_policy" {
  policy_arn = aws_iam_policy.lambda_policy.arn
  role       = aws_iam_role.lambda_role.name
}

#==== Archiving the lambda function code ====#
data "archive_file" "zip_python_code" {
type        = "zip"
source_file  = "${path.module}/${var.source_file}"
output_path = "${path.module}/${var.output_path}"
}

#==== The lambda function ====#
resource "aws_lambda_function" "ec2_terminate_lambda" {
  filename                       = "${path.module}/${var.output_path}"
  function_name                  = var.lambda_name
  description = "Lambda function to terminate EC2 instances"
  role                           = aws_iam_role.lambda_role.arn
  handler                        = var.handler
  runtime                        = var.runtime
  environment {
    variables = {
      environment = "${var.environment}"
      owner = "${var.owner}"
    }
  }
  depends_on                     = [
    aws_iam_role_policy_attachment.attach_lambda_policy
    ]
}