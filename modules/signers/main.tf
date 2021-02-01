variable "license_signer_role" {
  type = "string"
}

variable "default_signer_role" {
  type = "string"
}

resource tokend_account_signer "license_signer" {
  public_key = "GAEOJ3TZ2HI2FNFLMS7KLYZXRX5YZKC5UBMXUH2B5O2KSJ7ALZQALHH3"
  weight = 1000
  identity = 0
  role_id = "${var.license_signer_role}"
}

resource tokend_account_signer "general_signer" {
  public_key = "GC5YTANSNAF2V4QW3QRRXQV4KWDALLPY5XM4GJUIT3NB2RYV3BTREWPI"
  weight = 1000
  identity = 0
  role_id = "${var.default_signer_role}"
}

output "general_signer" {
  value = "${tokend_account_signer.general_signer.id}"
}