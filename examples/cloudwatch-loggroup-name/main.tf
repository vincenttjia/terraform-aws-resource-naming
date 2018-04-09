provider "random" {
  version = "1.2.0"
}

module "this" {
  source = "../../" # in actual use case, you have to replace this line with: source = "github.com/traveloka/terraform-random-id.git?ref=v0.1.0"

  prefix     = "/aws/lambda/txtdata-"
  max_length = 512                    # https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateLogGroup.html#API_CreateLogGroup_RequestSyntax
}
