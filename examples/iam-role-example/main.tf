terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 1.2.0, < 3.0.0"
    }
  }
}

module "aws-resource-naming_lambda_role" {
  source        = "./../../"
  name_prefix   = "LambdaRole_DailyScheduler"
  resource_type = "iam_role"
}

resource "aws_iam_role" "lambda_role" {
  name        = module.aws-resource-naming_lambda_role.name
  path        = "/lambda-role/"
  description = "Lambda Role for Daily Scheduler"

  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role_policy.json
}

data "aws_iam_policy_document" "lambda_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}