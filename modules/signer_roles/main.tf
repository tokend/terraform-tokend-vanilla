variable "document_admin" {
  type = "list"
}

variable "basic_plus" {
  type = "list"
}

variable "basic" {
  type = "list"
}

variable "master_admin" {
  type = "list"
}

variable "create_kyc" {
  type = "list"
}

variable "license_admin" {
  type = "list"
}

resource tokend_signer_role "master_admin" {
  rules = [
    "1",
  ]

  details = {
    admin_role  = true
    name        = "Super Administrator"
    description = "Have full access to system administration functionality"
  }
}

resource tokend_signer_role "document_admin" {
  rules = [
    "${var.document_admin}",
  ]

  details = {
    admin_role  = true
    name        = "Document Admin"
    description = "Responsible for editing workflow template"
  }
}

resource tokend_signer_role "basic" {
  rules = [
    "${var.basic}",
  ]
  details = {
    admin_role = false
    name = "Basic"
    description = "Role allows signer only to perform document search and review a workflow"
  }
}

resource tokend_signer_role "basic_plus" {
  rules = [
    "${var.basic_plus}",
  ]
  details = {
    admin_role = false
    name = "Basic+"
    description = "Like basic, but can start and review a workflow"
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

resource tokend_key_value "basic_role" {
  key        = "basic_signer_role"
  value_type = "uint64"
  value      = "${tokend_signer_role.basic.id}"
}

resource tokend_key_value "basic_plus_role" {
  key        = "basic_plus_signer_role"
  value_type = "uint32"
  value      = "${tokend_signer_role.basic_plus.id}"
}

resource tokend_key_value "document_admin_role" {
  key        = "document_admin_signer_role"
  value_type = "uint64"
  value      = "${tokend_signer_role.document_admin.id}"
}

output "license_signer_role" {
  value = "${tokend_signer_role.license_admin.id}"
}