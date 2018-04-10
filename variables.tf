variable "max_character_length" {
  description = "Maximum total length of characters that expected to be produced."
  type        = "string"
}

variable "prefix" {
  description = "Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded."
  type        = "string"
}
