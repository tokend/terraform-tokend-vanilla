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

resource tokend_account_signer "rec_payments_signer_role" {
  public_key = "GC67BUCEX7GGVMAOVTZIRASFNK2CU5N74X6LSBWY6T43TDNNR2DZAPR5"
  weight = 1000
  identity = 0
  role_id = "${var.rec_payments_signer_role}"
}