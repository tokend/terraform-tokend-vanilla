variable "license_signer_role" {
  type = "string"
}

variable "transactions_signer_role" {
  type = "string"
}

resource tokend_account_signer "license_signer" {
  public_key = "GAEOJ3TZ2HI2FNFLMS7KLYZXRX5YZKC5UBMXUH2B5O2KSJ7ALZQALHH3"
  weight = 1000
  identity = 0
  role_id = "${var.license_signer_role}"
}

resource tokend_account_signer "transactions_signer" {
  public_key = "GAYFWDXCNLQRSXX67YOXAI2MXE73Y7AUIIRYFRL5IW2W2VODOK3TGVSW"
  weight = 1000
  identity = 0
  role_id = "${var.transactions_signer_role}"
}
