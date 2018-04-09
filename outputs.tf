output "b64_url" {
  description = "The generated id presented in base64, using the URL-friendly character set: case-sensitive letters, digits and the characters _ and -."
  value       = "${random_id.this.b64_url}"
}

output "b64_std" {
  description = "The generated id presented in base64, using the URL-friendly character set: case-sensitive letters, digits and the characters _ and -."
  value       = "${random_id.this.b64_std}"
}

output "hex" {
  description = "The generated id presented in padded hexadecimal digits. This result will always be twice as long as the requested byte length."
  value       = "${random_id.this.hex}"
}

output "dec" {
  description = "The generated id presented in non-padded decimal digits."
  value       = "${random_id.this.dec}"
}
