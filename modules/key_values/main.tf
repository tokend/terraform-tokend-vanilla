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

variable "kyc_recovery_security_type" {
  type = "string"
}

variable "payment_p2p" {
  type = "string"
}
variable "payment_p2s" {
  type = "string"
}
variable "payment_s2p" {
  type = "string"
}
variable "payment_s2s" {
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

resource tokend_key_value "request_kyc_recovery" {
  key = "request:kyc_recovery"
  value_type = "uint32"
  value = "${var.kyc_recovery_security_type}"
}

resource tokend_key_value "payment_p2p" {
  key = "payment:p2p"
  value_type = "uint32"
  value = "${var.payment_p2p}"
}
resource tokend_key_value "payment_p2s" {
  key = "payment:p2s"
  value_type = "uint32"
  value = "${var.payment_p2s}"
}
resource tokend_key_value "payment_s2p" {
  key = "payment:s2p"
  value_type = "uint32"
  value = "${var.payment_s2p}"
}
resource tokend_key_value "payment_s2s" {
  key = "payment:s2s"
  value_type = "uint32"
  value = "${var.payment_s2s}"
}
