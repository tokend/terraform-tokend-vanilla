variable unverified_rules {
  type = "list"
}

variable general_rules {
  type = "list"
}

variable blocked_rules {
  type = "list"
}

resource tokend_account_role "unverified" {
  rules = ["${var.unverified_rules}"]
}

resource tokend_account_role "general" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "external_market_admin" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "internal_market_admin" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "blocked" {
  rules = ["${var.blocked_rules}"]
}

resource tokend_key_value "unverified" {
  key = "account_role:unverified"
  value_type = "uint32"
  value = "${tokend_account_role.unverified.id}"
}

resource tokend_key_value "general" {
  key = "account_role:general"
  value_type = "uint32"
  value = "${tokend_account_role.general.id}"
}


resource tokend_key_value "external_market_admin" {
  key = "account_role:external_market_admin"
  value_type = "uint32"
  value = "${tokend_account_role.external_market_admin.id}"
}


resource tokend_key_value "internal_market_admin" {
  key = "account_role:internal_market_admin"
  value_type = "uint32"
  value = "${tokend_account_role.internal_market_admin.id}"
}

resource tokend_key_value "blocked" {
  key = "account_role:blocked"
  value_type = "uint32"
  value = "${tokend_account_role.blocked.id}"
}
