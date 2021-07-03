resource tokend_account_rule "sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_utility}"
    asset_code = "*"
  }
}

resource tokend_account_rule "payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_utility}"
    asset_code = "*"
  }
}

resource tokend_account_rule "atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_utility}"
    asset_code = "*"
  }
}

resource tokend_account_rule "withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_utility}"
    asset_code = "*"
  }
}


resource tokend_account_rule "utility_for_utility_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_utility}"
    base_asset_type = "${var.asset_type_utility}"
  }
}

resource tokend_account_rule "utility_for_utility_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_utility}"
    base_asset_type = "${var.asset_type_utility}"
  }
}

resource tokend_account_rule "issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_utility}"
    asset_code = "*"
  }
}

output "utility_for_utility_buy_offer_creator" {
  value = "${tokend_account_rule.utility_for_utility_buy_offer_creator.id}"
}

output "utility_for_utility_sell_offer_creator" {
  value = "${tokend_account_rule.utility_for_utility_sell_offer_creator.id}"
}

output "utility_sender" {
  value = "${tokend_account_rule.sender.id}"
}

output "utility_atomic_swap_receiver" {
  value = "${tokend_account_rule.atomic_swap_receiver.id}"
}

output "utility_payment_receiver" {
  value = "${tokend_account_rule.payment_receiver.id}"
}

output "utility_withdrawer" {
  value = "${tokend_account_rule.withdrawer.id}"
}

output "utility_issuance_receiver" {
  value = "${tokend_account_rule.issuance_receiver.id}"
}
