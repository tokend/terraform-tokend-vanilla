resource tokend_account_rule "tx_sender" {
  action     = "send"
  entry_type = "transaction"
}

resource tokend_account_rule "signer_manager" {
  action = "*"
  entry_type = "signer"
}

output "signer_manager" {
  value = "${tokend_account_rule.signer_manager.id}"
}

output "tx_sender" {
  value = "${tokend_account_rule.tx_sender.id}"
}

