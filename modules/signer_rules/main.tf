resource tokend_signer_rule "kyc_recovery_creator" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "kyc_recovery"
  }
}

resource tokend_signer_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_signer_rule "request_reviewer" {
  action = "review"
  entry_type = "reviewable_request"
  entry = {
    request_type = "*"
  }
}

resource tokend_signer_rule "kv_manager" {
  action = "manage"
  entry_type = "key_value"
}

output "tx_sender" {
  value = "${tokend_signer_rule.tx_sender.id}"
}

output "request_reviewer" {
  value = "${tokend_signer_rule.request_reviewer.id}"
}

output "kv_manager" {
  value = "${tokend_signer_rule.kv_manager.id}"
}

output "kyc_recovery_creator" {
  value = "${tokend_signer_rule.kyc_recovery_creator.id}"
}
