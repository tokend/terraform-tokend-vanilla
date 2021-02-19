variable unverified_rules {
  type = "list"
}

variable general_rules {
  type = "list"
}

variable syndicate_rules {
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
  rules = ["${vgeneral_rulesar.}"]
}

resource tokend_account_role "sophisticated_investor" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "retail_fan_investor" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "high_new_worth_individual" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "proff_client_international_investor" {
  rules = ["${var.general_rules}"]
}

resource tokend_account_role "issuer" {
  rules = ["${var.syndicate_rules}"]
}

resource tokend_account_role "verified_issuer" {
  rules = ["${var.syndicate_rules}"]
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

resource tokend_key_value "unverified" {
  key = "account_role:unverified"
  value_type = "uint32"
  value = "${tokend_account_role.unverified.id}"
}

resource tokend_key_value "issuer" {
  key = "account_role:issuer"
  value_type = "uint32"
  value = "${tokend_account_role.issuer.id}"
}


resource tokend_key_value "verified_issuer" {
  key = "account_role:verified_issuer"
  value_type = "uint32"
  value = "${tokend_account_role.verified_issuer.id}"
}


resource tokend_key_value "corporate" {
  key = "account_role:corporate"
  value_type = "uint32"
  value = "${tokend_account_role.syndicate.id}"
}

resource tokend_key_value "proff_client_international_investor" {
  key = "account_role:proff_client_international_investor"
  value_type = "uint32"
  value = "${tokend_account_role.proff_client_international_investor.id}"
}

resource tokend_key_value "high_new_worth_individual" {
  key = "account_role:high_new_worth_individual"
  value_type = "uint32"
  value = "${tokend_account_role.high_new_worth_individual.id}"
}

resource tokend_key_value "retail_fan_investor" {
  key = "account_role:retail_fan_investor"
  value_type = "uint32"
  value = "${tokend_account_role.retail_fan_investor.id}"
}

resource tokend_key_value "sophisticated_investor" {
  key = "account_role:sophisticated_investor"
  value_type = "uint32"
  value = "${tokend_account_role.sophisticated_investor.id}"
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

resource tokend_key_value "general" {
  key = "account_role:general"
  value_type = "uint32"
  value = "${tokend_account_role.general.id}"
}

resource tokend_key_value "us_accredited" {
  key = "account_role:us_accredited"
  value_type = "uint32"
  value = "${tokend_account_role.us_accredited.id}"
}
