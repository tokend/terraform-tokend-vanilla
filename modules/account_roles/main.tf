variable unverified_rules {
  type = "list"
}

variable blocked_rules {
  type = "list"
}

resource tokend_account_role "unverified" {
  rules = ["${var.unverified_rules}"]
}

resource tokend_account_role "blocked" {
  rules = ["${var.blocked_rules}"]
}

resource tokend_key_value "unverified" {
  key = "account_role:unverified"
  value_type = "uint32"
  value = "${tokend_account_role.unverified.id}"
}

resource tokend_key_value "blocked" {
  key = "account_role:blocked"
  value_type = "uint32"
  value = "${tokend_account_role.blocked.id}"
}
