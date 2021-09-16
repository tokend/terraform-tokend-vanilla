resource tokend_signer_rule "issuance_creator" {
  action =  "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "create_issuance"
    issuance.asset_code = "*"
    issuance.asset_type = "*"
  }
}

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

resource tokend_signer_rule "aml_alert_reviewer" {
  action = "review"
  entry_type = "reviewable_request"
  entry = {
    request_type = "create_aml_alert"
  }
}

resource tokend_signer_rule "kyc_request_reviewer" {
  action = "review"
  entry_type = "reviewable_request"
  entry = {
    request_type = "change_role"
  }
}

resource tokend_signer_rule "sale_checker" {
  action = "check"
  entry_type = "sale"
  entry = {
    sale_id = "*"
    sale_type = "*"
  }
}

resource tokend_signer_rule "kv_manager" {
  action = "manage"
  entry_type = "key_value"
}

resource tokend_signer_rule "limits_manager" {
  action = "manage"
  entry_type = "limits"
}

resource tokend_signer_rule "fee_manager" {
  action = "manage"
  entry_type = "fee"
}

resource tokend_signer_rule "license_creator" {
  action = "create"
  entry_type = "license"
}

resource tokend_signer_rule "stamp_creator" {
  action = "create"
  entry_type = "stamp"
}

resource tokend_signer_rule "buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "*"
    base_asset_type = "*"
  }
}

resource tokend_signer_rule "offer_remover" {
  action = "remove"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "*"
    base_asset_type = "*"
  }
}

resource tokend_signer_rule "sale_participant" {
  action = "participate"
  entry_type = "sale"

  entry = {
    sale_type = "*"
    sale_id = "*"
  }
}

resource tokend_signer_rule "balance_creator" {
  action = "create"
  entry_type = "balance"
}

resource tokend_signer_rule "withdrawal_reviewer" {
  action = "review"
  entry_type = "reviewable_request"
  entry = {
    request_type = "create_withdraw"
  }
}

resource tokend_signer_rule "aml_alert_creator" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "create_aml_alert"
  }
}

resource tokend_signer_rule "sale_closer" {
  action = "manage"
  entry_type = "sale"
  entry = {
    sale_type = "*"
    sale_id = "*"
  }
}

output "aml_alert_reviewer" {
  value = "${tokend_signer_rule.aml_alert_reviewer.id}"
}

output "kyc_request_reviewer" {
  value = "${tokend_signer_rule.kyc_request_reviewer.id}"
}

output "issuance_creator" {
  value = "${tokend_signer_rule.issuance_creator.id}"
}

output "tx_sender" {
  value = "${tokend_signer_rule.tx_sender.id}"
}

output "request_reviewer" {
  value = "${tokend_signer_rule.request_reviewer.id}"
}

output "sale_checker" {
  value = "${tokend_signer_rule.sale_checker.id}"
}

output "kv_manager" {
  value = "${tokend_signer_rule.kv_manager.id}"
}

output "limits_manager" {
  value = "${tokend_signer_rule.limits_manager.id}"
}

output "fee_manager" {
  value = "${tokend_signer_rule.fee_manager.id}"
}

output "license_creator" {
  value = "${tokend_signer_rule.license_creator.id}"
}

output "stamp_creator" {
  value = "${tokend_signer_rule.stamp_creator.id}"
}

output "kyc_recovery_creator" {
  value = "${tokend_signer_rule.kyc_recovery_creator.id}"
}

output "buy_offer_creator" {
  value = "${tokend_signer_rule.buy_offer_creator.id}"
}

output "offer_remover" {
  value = "${tokend_signer_rule.offer_remover.id}"
}

output "sale_participant" {
  value = "${tokend_signer_rule.sale_participant.id}"
}

output "balance_creator" {
  value = "${tokend_signer_rule.balance_creator.id}"
}

output "withdrawal_reviewer" {
  value = "${tokend_signer_rule.withdrawal_reviewer.id}"
}

output "aml_alert_creator" {
  value = "${tokend_signer_rule.aml_alert_creator.id}"
}

output "sale_closer" {
  value = "${tokend_signer_rule.sale_closer.id}"
}
