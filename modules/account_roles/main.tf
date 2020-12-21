variable unverified_rules {
  type = "list"
}

variable blocked_rules {
  type = "list"
}

variable "document_admin" {
  type = "list"
}

variable "basic_plus" {
  type = "list"
}

variable "basic" {
  type = "list"
}

variable "super_admin" {
  type = "list"
}

resource tokend_account_role "unverified" {
  rules = ["${var.unverified_rules}"]
  
  details = {
    admin_role  = false
    name        = "Unverified"
    description = ""
  }
}

resource tokend_account_role "blocked" {
  rules = ["${var.blocked_rules}"]
  
  details = {
    admin_role  = false
    name        = "Blocked"
    description = ""
  }
}

resource tokend_account_role "super_admin" {
  rules = [
    "${var.super_admin}",
  ]
  
  details = {
    admin_role  = true
    name        = "Super Administrator"
    description = "Have full access to system administration functionality"
  }
}

resource tokend_account_role "document_admin" {
  rules = [
    "${var.document_admin}",
  ]
  details = {
    admin_role  = true
    name        = "Document Admin"
    description = "Responsible for editing workflow template"
  }
}

resource tokend_account_role "basic" {
  rules = [
    "${var.basic}",
  ]
  details = {
    admin_role = false
    name = "Basic"
    description = "Role allows signer only to perform document search and review a workflow"
  }
}

resource tokend_account_role "basic_plus" {
  rules = [
    "${var.basic_plus}",
  ]
  details = {
    admin_role = false
    name = "Basic+"
    description = "Like basic, but can start and review a workflow"
  }
}


resource tokend_key_value "unverified" {
  key = "account_role:unverified"
  value_type = "uint32"
  value = "${tokend_account_role.unverified.id}"
}

resource tokend_key_value "blocked" {
  key = "account_role:blocked"
  value_type = "uint32"
  value = "${tokend_account_role.blocked.id}"
}

resource tokend_key_value "basic" {
  key = "account_role:basic"
  value_type = "uint32"
  value = "${tokend_account_role.basic.id}"
}

resource tokend_key_value "basic_plus" {
  key = "account_role:basic_plus"
  value_type = "uint32"
  value = "${tokend_account_role.basic_plus.id}"
}

resource tokend_key_value "document_admin" {
  key = "account_role:document_admin"
  value_type = "uint32"
  value = "${tokend_account_role.document_admin.id}"
}

resource tokend_key_value "super_admin" {
  key = "account_role:super_admin"
  value_type = "uint32"
  value = "${tokend_account_role.super_admin.id}"
}
