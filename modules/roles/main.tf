variable payment_service_rules {
  type = "list"
}

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

resource tokend_role "payment_service" {
  rules = ["${var.payment_service_rules}"]
}

resource tokend_role "unverified" {
  rules = ["${var.unverified_rules}"]
}

resource tokend_role "general" {
  rules = ["${var.general_rules}"]
}

resource tokend_role "syndicate" {
  rules = ["${var.syndicate_rules}"]
}

resource tokend_role "blocked" {
  rules = ["${var.blocked_rules}"]
}

resource tokend_key_value "unverified" {
  key = "role:unverified"
  value_type = "uint32"
  value = "${tokend_role.unverified.id}"
}

resource tokend_key_value "general" {
  key = "role:general"
  value_type = "uint32"
  value = "${tokend_role.general.id}"
}

resource tokend_key_value "syndicate" {
  key = "role:corporate"
  value_type = "uint32"
  value = "${tokend_role.syndicate.id}"
}

resource tokend_key_value "blocked" {
  key = "role:blocked"
  value_type = "uint32"
  value = "${tokend_role.blocked.id}"
}
