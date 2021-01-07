resource tokend_account_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_account_rule "signer_manager" {
  action = "*"
  entry_type = "signer"
}

resource tokend_account_rule "reviewable_request_creator" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "*"
  }
}

resource tokend_account_rule "kyc_recovery_creator" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "kyc_recovery"
  }
}

resource tokend_account_rule "data_updater" {
  action     = "update"
  entry_type = "data"
  entry = {
    type = "*"
  }
}

resource tokend_account_rule "data_creater" {
  action     = "create"
  entry_type = "data"
  entry = {
    type = "*"
  }
}  

output "signer_manager" {
  value = "${tokend_account_rule.signer_manager.id}"
}

output "tx_sender" {
  value = "${tokend_account_rule.tx_sender.id}"
}

output "reviewable_request_creator" {
  value = "${tokend_account_rule.reviewable_request_creator.id}"
}

output "kyc_recovery_creator" {
  value = "${tokend_account_rule.kyc_recovery_creator.id}"
}

output "data_creater" {
  value = "${tokend_account_rule.data_creater.id}"
}

output "data_updater" {
  value = "${tokend_account_rule.data_updater.id}"
}