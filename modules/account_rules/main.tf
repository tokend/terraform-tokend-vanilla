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
