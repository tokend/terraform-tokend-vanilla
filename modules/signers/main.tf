variable "license_signer_role" {
  type = "string"
}

variable "redemption_reviewer_role" {
  type = "string"
}

resource tokend_account_signer "license_signer" {
  public_key = "GAEOJ3TZ2HI2FNFLMS7KLYZXRX5YZKC5UBMXUH2B5O2KSJ7ALZQALHH3"
  weight = 1000
  identity = 0
  role_id = "${var.license_signer_role}"
}

resource tokend_account_signer "redemption_reviewer" {
  public_key = "GC6MQ5V2TOTHEBLIWK7XFRNUWSSG6O4Y5A6WC252XUF5OOC34A5XVR3N"
  weight = 1000
  identity = 228
  role_id = "${var.redemption_reviewer_role}"
}