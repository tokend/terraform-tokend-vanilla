variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_security" {
  type = "string"
}

variable "asset_type_default" {
  type = "string"
}

variable "change_role_security_type" {
  type = "string"
}

variable "gen_change_role_security_type" {
  type = "string"
}

variable "kyc_recovery_security_type" {
  type = "string"
}

resource tokend_key_value "asset_type_kyc_required" {
  key = "asset_type:kyc_required"
  value_type = "uint32"
  value = "${var.asset_type_kyc}"
}

resource tokend_key_value "asset_type_security" {
  key = "asset_type:security"
  value_type = "uint32"
  value = "${var.asset_type_security}"
}

resource tokend_key_value "asset_type_default" {
  key = "asset_type:default"
  value_type = "uint32"
  value = "${var.asset_type_default}"
}

resource tokend_key_value "change_role_tasks" {
  key = "reviewable_request_tasks:${var.change_role_security_type}"
  value_type = "uint64"
  value = "1024"
}

resource tokend_key_value "gen_change_role_tasks" {
  key = "reviewable_request_tasks:${var.gen_change_role_security_type}"
  value_type = "uint64"
  value = "0"
}

resource tokend_key_value "kyc_recovery_tasks" {
  key = "reviewable_request_tasks:${var.kyc_recovery_security_type}"
  value_type = "uint64"
  value = "1024"
}

resource tokend_key_value "request_change_role" {
  key = "request:change_role"
  value_type = "uint32"
  value = "${var.change_role_security_type}"
}

resource tokend_key_value "request_general_change_role" {
  key = "request:change_role:general"
  value_type = "uint32"
  value = "${var.gen_change_role_security_type}"
}

resource tokend_key_value "request_kyc_recovery" {
  key = "request:kyc_recovery"
  value_type = "uint32"
  value = "${var.kyc_recovery_security_type}"
}
