output "password" {
  description = "Generated random password."
  value       = "${module.random_password.hex}"
}
