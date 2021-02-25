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

variable "master_admin" {
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

  depends_on = [
    "tokend_account_role.unverified"
  ]
}

resource tokend_account_role "basic" {
  rules = [
    "${var.basic}",
  ]

  details = {
    admin_role = false
    name = "Basic"
    description = "Role allows to perform document search and review a workflow"
  }

  depends_on = [
    "tokend_account_role.blocked"
  ]
}

resource tokend_account_role "basic_plus" {
  rules = [
    "${var.basic_plus}",
  ]

  details = {
    admin_role = false
    name = "Basic+"
    description = "Role allows to upload, search and review documents, start a wokflow"
  }

  depends_on = [
    "tokend_account_role.basic"
  ]
}

resource tokend_account_role "document_admin" {
  rules = [
    "${var.document_admin}",
  ]

  details = {
    admin_role  = false
    name        = "Document Admin"
    description = "Role allows to upload, search and review documents, start a workflow, manage workflow templates"
  }

  depends_on = [
    "tokend_account_role.basic_plus"
  ]
}

resource tokend_account_role "master_admin" {
  rules = [
    "${var.master_admin}",
  ]
  
  details = {
    admin_role  = true
    name        = "Super Administrator"
    description = "Have full access to system functionality"
  }

  depends_on = [
    "tokend_account_role.document_admin"
  ]
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

resource tokend_key_value "master_admin" {
  key = "account_role:master_admin"
  value_type = "uint32"
  value = "${tokend_account_role.master_admin.id}"
}

output "master_admin_id" {
  value = "${tokend_account_role.master_admin.id}"
}
