variable unverified_rules {
  type = "list"
}

variable general_rules {
  type = "list"
}

variable syndicate_rules {
  type = "list"
}

variable charity_rules {
  type = "list"
}

variable beneficiary_rules {
  type = "list"
}

variable blocked_rules {
  type = "list"
}

variable us_verified {
  type = "list"
}

variable us_accredited {
  type = "list"
}

resource tokend_account_role "unverified" {
  rules = ["${var.unverified_rules}"]
}

resource tokend_account_role "general" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "syndicate" {
  rules = ["${var.syndicate_rules}"]
}

resource tokend_account_role "blocked" {
  rules = ["${var.blocked_rules}"]
}

resource tokend_account_role "us_accredited" {
  rules = ["${var.us_accredited}"]
}

resource tokend_account_role "us_verified" {
  rules = ["${var.us_verified}"]
}

resource tokend_account_role "charity" {
  rules = ["${var.charity_rules}"]
}

resource tokend_account_role "beneficiary" {
  rules = ["${var.beneficiary_rules}"]
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

resource tokend_key_value "syndicate" {
  key = "account_role:corporate"
  value_type = "uint32"
  value = "${tokend_account_role.syndicate.id}"
}

resource tokend_key_value "charity" {
  key = "account_role:charity"
  value_type = "uint32"
  value = "${tokend_account_role.charity.id}"
}

resource tokend_key_value "beneficiary" {
  key = "account_role:beneficiary"
  value_type = "uint32"
  value = "${tokend_account_role.beneficiary.id}"
}

resource tokend_key_value "blocked" {
  key = "account_role:blocked"
  value_type = "uint32"
  value = "${tokend_account_role.blocked.id}"
}

resource tokend_key_value "us_verified" {
  key = "account_role:us_verified"
  value_type = "uint32"
  value = "${tokend_account_role.us_verified.id}"
}

resource tokend_key_value "us_accredited" {
  key = "account_role:us_accredited"
  value_type = "uint32"
  value = "${tokend_account_role.us_accredited.id}"
}

resource tokend_key_value "general_change_role_tasks" {
  key        = "change_role_tasks:*:${tokend_account_role.general.id}"
  value_type = "uint32"
  value      = "0"
}
