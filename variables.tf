variable "max_byte_length" {
  description = "Maximum number of random bytes to produce."
  default     = 8
}

variable "max_length" {
  description = "Maximum total length of characters that expected to be produced."
  type        = "string"
  default     = ""
}

variable "prefix" {
  description = "Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded."
  type        = "string"
  default     = ""
}
