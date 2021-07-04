resource tokend_account_rule "sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_fiat}"
    asset_code = "*"
  }
}

resource tokend_account_rule "payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_fiat}"
    asset_code = "*"
  }
}

resource tokend_account_rule "atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_fiat}"
    asset_code = "*"
  }
}

resource tokend_account_rule "fiat_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_fiat}"
    asset_code = "*"
  }
}


resource tokend_account_rule "fiat_for_fiat_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_fiat}"
    base_asset_type = "${var.asset_type_fiat}"
  }
}

resource tokend_account_rule "fiat_for_fiat_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_fiat}"
    base_asset_type = "${var.asset_type_fiat}"
  }
}

resource tokend_account_rule "issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_fiat}"
    asset_code = "*"
  }
}

output "fiat_for_fiat_buy_offer_creator" {
  value = "${tokend_account_rule.fiat_for_fiat_buy_offer_creator.id}"
}

output "fiat_for_fiat_sell_offer_creator" {
  value = "${tokend_account_rule.fiat_for_fiat_sell_offer_creator.id}"
}

output "fiat_sender" {
  value = "${tokend_account_rule.sender.id}"
}

output "fiat_atomic_swap_receiver" {
  value = "${tokend_account_rule.atomic_swap_receiver.id}"
}

output "fiat_payment_receiver" {
  value = "${tokend_account_rule.payment_receiver.id}"
}

output "fiat_withdrawer" {
  value = "${tokend_account_rule.fiat_withdrawer.id}"
}

output "fiat_issuance_receiver" {
  value = "${tokend_account_rule.issuance_receiver.id}"
}
