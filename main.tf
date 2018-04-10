locals {
  max_byte_length = 8

  prefix = "${var.prefix}"

  random_max_byte_length = "${(var.max_character_length - length(local.prefix)) / 2}"
  random_byte_length     = "${min(local.max_byte_length, local.random_max_byte_length)}"
}

provider "random" {
  version = "1.2.0"
}

resource "random_id" "this" {
  prefix      = "${local.prefix}"
  byte_length = "${local.random_byte_length}"
}
