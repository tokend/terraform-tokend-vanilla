resource tokend_account_rule "sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

resource tokend_account_rule "payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

resource tokend_account_rule "atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

resource tokend_account_rule "withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}


resource tokend_account_rule "default_for_default_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "default_for_default_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

resource tokend_account_rule "asset_pair_creator" {
  action = "manage"
  entry_type = "asset_pair"
}

resource tokend_account_rule "asset_pair_remover" {
  action = "remove"
  entry_type = "asset_pair"
}

output "default_for_default_buy_offer_creator" {
  value = "${tokend_account_rule.default_for_default_buy_offer_creator.id}"
}

output "default_for_default_sell_offer_creator" {
  value = "${tokend_account_rule.default_for_default_sell_offer_creator.id}"
}

output "sender" {
  value = "${tokend_account_rule.sender.id}"
}

output "atomic_swap_receiver" {
  value = "${tokend_account_rule.atomic_swap_receiver.id}"
}

output "payment_receiver" {
  value = "${tokend_account_rule.payment_receiver.id}"
}

output "withdrawer" {
  value = "${tokend_account_rule.withdrawer.id}"
}

output "issuance_receiver" {
  value = "${tokend_account_rule.issuance_receiver.id}"
}

output "asset_pair_creator" {
  value = "${tokend_account_rule.asset_pair_creator.id}"
}

output "asset_pair_remover" {
  value = "${tokend_account_rule.asset_pair_remover.id}"
}