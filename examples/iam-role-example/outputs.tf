output "name" {
  description = "The generated name with random_id presented in padded hexadecimal digits as suffix."
  value       = module.aws-resource-naming_lambda_role.name
}
