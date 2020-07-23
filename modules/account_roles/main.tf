variable unverified_rules {
  type = "list"
}

variable general_rules {
  type = "list"
}

variable verified_general_rules {
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

resource tokend_account_role "verified_general" {
  rules = ["${var.verified_general_rules}"]
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

resource tokend_key_value "verified_general" {
  key = "account_role:verified_general"
  value_type = "uint32"
  value = "${tokend_account_role.verified_general.id}"
}

resource tokend_key_value "blocked" {
  key = "account_role:blocked"
  value_type = "uint32"
  value = "${tokend_account_role.blocked.id}"
}

output "general_account_role" {
  value = "${tokend_account_role.general.id}"
}

output "unverified_account_role" {
  value = "${tokend_account_role.unverified.id}"
}

output "verified_general_account_role" {
  value = "${tokend_account_role.verified_general.id}"
}