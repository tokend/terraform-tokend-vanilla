variable "license_signer_role" {
  type = "string"
}

variable "rec_payments_signer_role" {
  type = "string"
}

resource tokend_account_signer "license_signer" {
  public_key = "GAEOJ3TZ2HI2FNFLMS7KLYZXRX5YZKC5UBMXUH2B5O2KSJ7ALZQALHH3"
  weight = 1000
  identity = 0
  role_id = "${var.license_signer_role}"
}

resource tokend_account_signer "rec_payments_signer" {
  public_key = "GDX6P3OBSMLKVPADU2FPJZJSSB6S5SCSMHKDC2RLJVE6PAWPDBGUM4QG" # SBZY7CTSALS4TJ5MZ47RPUNT7RLKY6ACN3F7U2KHRTFGMEXI43F5D2B6
  weight = 1000
  identity = 0
  role_id = "${var.rec_payments_signer_role}"
}