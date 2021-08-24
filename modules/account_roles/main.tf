variable unverified_rules {
  type = "list"
}

variable general_rules {
  type = "list"
}

variable syndicate_rules {
  type = "list"
}

variable gallery_rules {
  type = "list"
}

variable blocked_rules {
  type = "list"
}

output "general" {
  value = "${tokend_account_role.general.id}"
}

output "syndicate" {
  value = "${tokend_account_role.syndicate.id}"
}

output "gallery" {
  value = "${tokend_account_role.gallery.id}"
}

output "blocked" {
  value = "${tokend_account_role.blocked.id}"
}

output "unverified" {
  value = "${tokend_account_role.unverified.id}"
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

resource tokend_account_role "gallery" {
  rules = ["${var.gallery_rules}"]
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

resource tokend_key_value "syndicate" {
  key = "account_role:corporate"
  value_type = "uint32"
  value = "${tokend_account_role.syndicate.id}"
}

resource tokend_key_value "gallery" {
  key = "account_role:gallery"
  value_type = "uint32"
  value = "${tokend_account_role.gallery.id}"
}

resource tokend_key_value "blocked" {
  key = "account_role:blocked"
  value_type = "uint32"
  value = "${tokend_account_role.blocked.id}"
}

