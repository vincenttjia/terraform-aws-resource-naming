module "this" {
  source = "../../modules/autoscaling-policy/"

  service_name = "txtdata"
  cluster_role = "app"
}
