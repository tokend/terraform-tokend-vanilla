resource tokend_account_rule "sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_crypto}"
    asset_code = "*"
  }
}

resource tokend_account_rule "payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_crypto}"
    asset_code = "*"
  }
}

resource tokend_account_rule "atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_crypto}"
    asset_code = "*"
  }
}

resource tokend_account_rule "crypto_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_crypto}"
    asset_code = "*"
  }
}


resource tokend_account_rule "crypto_for_crypto_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_crypto}"
    base_asset_type = "${var.asset_type_crypto}"
  }
}

resource tokend_account_rule "crypto_for_crypto_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_crypto}"
    base_asset_type = "${var.asset_type_crypto}"
  }
}

resource tokend_account_rule "crypto_issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_crypto}"
    asset_code = "*"
  }
}

output "crypto_for_crypto_buy_offer_creator" {
  value = "${tokend_account_rule.crypto_for_crypto_buy_offer_creator.id}"
}

output "crypto_for_crypto_sell_offer_creator" {
  value = "${tokend_account_rule.crypto_for_crypto_sell_offer_creator.id}"
}

output "crypto_sender" {
  value = "${tokend_account_rule.sender.id}"
}

output "crypto_atomic_swap_receiver" {
  value = "${tokend_account_rule.atomic_swap_receiver.id}"
}

output "crypto_payment_receiver" {
  value = "${tokend_account_rule.payment_receiver.id}"
}

output "crypto_withdrawer" {
  value = "${tokend_account_rule.crypto_withdrawer.id}"
}

output "crypto_issuance_receiver" {
  value = "${tokend_account_rule.crypto_issuance_receiver.id}"
}
