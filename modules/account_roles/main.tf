variable user {
  type = "list"
}

resource tokend_account_role "user" {
  rules = ["${var.user}"]
  
  details = {
    admin_role  = false
    name        = "User"
    description = ""
  }
}

resource tokend_key_value "user" {
  key = "account_role:unverified"
  value_type = "uint32"
  value = "${tokend_account_role.user.id}"
}