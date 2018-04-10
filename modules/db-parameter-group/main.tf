module "this" {
  source = "../../"

  prefix               = "${var.service_name}-${var.db_engine}-"
  max_character_length = 255
}
