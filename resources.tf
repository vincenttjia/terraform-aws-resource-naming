locals {
  # `max_character_length` variable needs to be updated each time we want to add support for a resource. 
  #
  # Add a resource support by adding the information using this format:   
  # "<resource_type>" = <maximum_number_of_character_allowed> # <references>
  #
  # The format of `resource_type` is taken from Terraform resource name by omitting `aws_` prefix.
  # For example:
  # * aws_db_parameter_group (https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html) -->  db_parameter_group
  # * aws_lb (https://www.terraform.io/docs/providers/aws/r/lb.html)                                 -->  lb
  # * aws_s3_bucket (https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)                   -->  s3_bucket
  max_character_length = {
    "autoscaling_policy"   = 255 # https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScalingPolicy.html
    "cloudwatch_log_group" = 512 # https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateLogGroup.html
    "db_instance"          = 63  # https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html
    "db_parameter_group"   = 255 # https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBParameterGroup.html
    "iam_role"             = 64  # https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    "lb"                   = 32  # https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateLoadBalancer.html
    "lb_target_group"      = 32  # https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html
    "s3_bucket"            = 63  # https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html
    "security_group"       = 255 # https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html
  }
}
