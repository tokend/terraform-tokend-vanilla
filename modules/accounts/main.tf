variable "general_account_signers" {
  type = "list"
}

variable "general_account_role" {
  type = "string"
}

resource tokend_account "general_account" {
  account_id = "GC5YTANSNAF2V4QW3QRRXQV4KWDALLPY5XM4GJUIT3NB2RYV3BTREWPI" # SA6CAKDXNLYDUFYNXDS7FRVPR3QKMOK3SGKZMPLBQDAHPO2A5KZH56OK
  role_id = "${var.general_account_role}"
  signers = [
    "${var.general_account_signers}"
  ]
}
