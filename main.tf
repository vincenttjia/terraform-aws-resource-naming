locals {
  max_byte_length = "${var.max_byte_length}"

  max_length = "${var.max_length == "" ? var.max_byte_length : var.max_length}"
  prefix     = "${var.prefix}"

  random_max_byte_length = "${(local.max_length - length(local.prefix)) / 2}"
  random_byte_length     = "${min(local.max_byte_length, local.random_max_byte_length)}"
}

resource "random_id" "this" {
  prefix      = "${local.prefix}"
  byte_length = "${local.random_byte_length}"
}
