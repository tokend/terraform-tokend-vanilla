variable "general_account_role" {
  type = "string"
}

variable "default_signer_role" {
  type = "string"
}
variable "payments_account_id" {
  type = "string"
}

variable "recurring_payments_signer" {
  type = "string"
}

variable "payments_signer" {
  type = "string"
}

resource tokend_account "payments_account" {
  account_id = "${var.payments_account_id}"
  role_id = "${var.general_account_role}"
  signers = [
    {
      role_id = "${var.default_signer_role}"
      public_key = "${var.default_signer_role}"
      weight = 1000
      identity = 1
    },
    {
      role_id = "${var.default_signer_role}"
      public_key = "${var.default_signer_role}"
      weight = 1000
      identity = 1
    },
  ]
}