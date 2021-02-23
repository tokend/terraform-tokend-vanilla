variable "user" {
  type = "list"
}

variable "create_kyc" {
  type = "list"
}

variable "license_admin" {
  type = "list"
}

resource tokend_signer_role "user" {
  rules = [
    "${var.user}",
  ]

  details = {
    admin_role  = false
    name        = "User"
    description = ""
  }
}

resource tokend_signer_role "create_kyc_recovery" {
  rules = [
  "${var.create_kyc}",
  ]
  details = {
    admin_role = false
    name = "KYC Recovery creator"
    description = "Use ID of role as value in kv by kyc_recovery_signer_role key"
  }
}

resource tokend_signer_role "license_admin" {
  rules = [
  "${var.license_admin}"
  ]
  details = {
    admin_role = true
    name = "License Admin"
    description = "Able to manage system licenses"
  }
}

// users operational signer role
resource tokend_signer_role "default" {
  rules = ["1"]
}

// KV for Identity Storage
resource tokend_key_value "default" {
  key        = "signer_role:default"
  value_type = "uint32"
  value      = "${tokend_signer_role.default.id}"
}

resource tokend_key_value "create_kyc_recovery_role" {
  key        = "kyc_recovery_signer_role"
  value_type = "uint64"
  value      = "${tokend_signer_role.create_kyc_recovery.id}"
}

resource tokend_key_value "license_admin_role" {
  key        = "license_admin_signer_role"
  value_type = "uint64"
  value      = "${tokend_signer_role.license_admin.id}"
}

output "license_signer_role" {
  value = "${tokend_signer_role.license_admin.id}"
}