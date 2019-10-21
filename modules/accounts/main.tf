variable "general_account_signers" {
  type = "list"
}

variable "general_account_role" {
  type = "string"
}

resource tokend_account "general_account" {
  public_key = "GAXZ6MNYLF7AV3YK2TGTETJ4PCZQT3CQTUTYRFSYDWRQZJNI34H3L74V"
  role_id = "${var.general_account_role}"
  signers = [
    "${var.general_account_signers}"
  ]
}
