import boto3
import os

Env = os.environ['environment']
Owner = os.environ['owner']


def lambda_handler(event, context):
    ec2_client = boto3.client("ec2")
    running_instances = ec2_client.instances.filter(
        Filters=[
            {
                "Name": "instance-state-name",
                "Values": ["running"]
            },
            {
                "Name": "tag:Env",
                'Values':[Env]
            },
            {
                "Name": "tag:owner",
                "Values" :[Owner]
            }
        ]
    )

    for instance in running_instances:
        instance_id = instance.id
        ec2_client.terminate_instances(InstanceIds=[instance_id])

    return "success"
