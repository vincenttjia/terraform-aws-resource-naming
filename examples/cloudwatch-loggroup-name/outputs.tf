output "log_group_name" {
  description = "LogGroup name with generated random value added as suffix."
  value       = "${module.this.hex}"
}
