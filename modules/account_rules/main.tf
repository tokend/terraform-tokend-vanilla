resource tokend_account_rule "signer_manager" {
  action = "*"
  entry_type = "signer"
}

resource tokend_account_rule "role_updater" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "change_role"
  }
}

resource tokend_account_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_account_rule "data_updater" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "change_role"
  }
}

resource tokend_account_rule "data_creater" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "change_role"
  }
}  

resource tokend_account_rule "reviewable_request_creator" { // TODO shrink scope to specific requests
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "*"
  }
}

resource tokend_key_value "default_role_rules" {
  key = "default_role_rules"
  value_type = "string"
  value = "[${tokend_account_rule.data_creater.id}, ${tokend_account_rule.data_updater.id}, ${tokend_account_rule.tx_sender.id}, ${tokend_account_rule.role_updater.id}, ${tokend_account_rule.signer_manager.id}]"
}

output "reviewable_request_creator" {
  value = "${tokend_account_rule.reviewable_request_creator.id}"
}

output "signer_manager" {
  value = "${tokend_account_rule.signer_manager.id}"
}

output "role_updater" {
  value = "${tokend_account_rule.role_updater.id}"
}

output "tx_sender" {
  value = "${tokend_account_rule.tx_sender.id}"
}
