provider "random" {
  version = "1.2.0"
}

module "random_password" {
  source = "../../" # in actual use case, you have to replace this line with: source = "github.com/traveloka/terraform-random-id.git?ref=v0.1.0"

  max_byte_length = 32 # change into your desired value
}
