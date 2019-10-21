variable "general_account_signers" {
  type = "list"
}

variable "general_account_role" {
  type = "string"
}

resource tokend_account "general_account" {
  role_id = "${var.general_account_role}"
  signers = [
    "${var.general_account_signers}"
  ]
}
