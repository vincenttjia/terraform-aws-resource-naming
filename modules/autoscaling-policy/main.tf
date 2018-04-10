module "this" {
  source = "../../"

  prefix               = "${var.service_name}-${var.cluster_role}-"
  max_character_length = 255
}
