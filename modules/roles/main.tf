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


variable "recovery_rules" {
  type = "list"
}

variable "signer_role_default" {
  type = "string"
}


resource tokend_role "recovery" {
  rules = [
    "${var.recovery_rules}"
  ]
  details = {
    admin_role = false
    name = "KYC Recovery creator"
    description = "Use ID of role as value in kv by kyc_recovery_role key"
  }
}

resource tokend_role "payment_service" {
  rules = [
    "${var.payment_service_rules}"]
}

resource tokend_role "unverified" {
  rules = [
    "${var.unverified_rules}"]
}

resource tokend_role "general" {
  rules = [
    "${var.general_rules}"]
}

resource tokend_role "syndicate" {
  rules = [
    "${var.syndicate_rules}"]
}

resource tokend_role "blocked" {
  rules = [
    "${var.blocked_rules}"]
}

resource tokend_key_value "unverified" {
  key = "role:unverified"
  value_type = "uint64"
  value = "${tokend_role.unverified.id}"
}

resource tokend_key_value "recovery" {
  key = "role:recovery"
  value_type = "uint64"
  value = "${tokend_role.recovery.id}"
}

resource tokend_key_value "general" {
  key = "role:general"
  value_type = "uint64"
  value = "${tokend_role.general.id}"
}

resource tokend_key_value "syndicate" {
  key = "role:corporate"
  value_type = "uint64"
  value = "${tokend_role.syndicate.id}"
}

resource tokend_key_value "blocked" {
  key = "role:blocked"
  value_type = "uint64"
  value = "${tokend_role.blocked.id}"
}


resource tokend_key_value "default_signer_role" {
  key = "signer_role:default"
  value_type = "uint64"
  value = "${var.signer_role_default}"
}

output "account_role_general" {
  value = "${tokend_role.general.id}"
}