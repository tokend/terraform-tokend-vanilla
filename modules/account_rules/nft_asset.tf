resource tokend_account_rule "nft_sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_nft}"
    asset_code = "*"
  }
}

resource tokend_account_rule "nft_payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_nft}"
    asset_code = "*"
  }
}

resource tokend_account_rule "nft_atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_nft}"
    asset_code = "*"
  }
}

resource tokend_account_rule "nft_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_nft}"
    asset_code = "*"
  }
}

resource tokend_account_rule "nft_for_nft_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_nft}"
    base_asset_type = "${var.asset_type_nft}"
  }
}

resource tokend_account_rule "nft_for_nft_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_nft}"
    base_asset_type = "${var.asset_type_nft}"
  }
}


resource tokend_account_rule "default_for_nft_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_nft}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "default_for_nft_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_nft}"
    base_asset_type = "${var.asset_type_default}"
  }
}

resource tokend_account_rule "nft_for_default_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_nft}"
  }
}

resource tokend_account_rule "nft_for_default_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_default}"
    base_asset_type = "${var.asset_type_nft}"
  }
}


resource tokend_account_rule "nft_issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_nft}"
    asset_code = "*"
  }
}

output "nft_for_default_buy_offer_creator" {
  value = "${tokend_account_rule.nft_for_default_buy_offer_creator.id}"
}

output "nft_for_default_sell_offer_creator" {
  value = "${tokend_account_rule.nft_for_default_sell_offer_creator.id}"
}

output "nft_for_nft_buy_offer_creator" {
  value = "${tokend_account_rule.nft_for_nft_buy_offer_creator.id}"
}

output "nft_for_nft_sell_offer_creator" {
  value = "${tokend_account_rule.nft_for_nft_sell_offer_creator.id}"
}

output "default_for_nft_buy_offer_creator" {
  value = "${tokend_account_rule.default_for_nft_buy_offer_creator.id}"
}

output "default_for_nft_sell_offer_creator" {
  value = "${tokend_account_rule.default_for_nft_sell_offer_creator.id}"
}

output "nft_sender" {
  value = "${tokend_account_rule.nft_sender.id}"
}

output "nft_atomic_swap_receiver" {
  value = "${tokend_account_rule.nft_atomic_swap_receiver.id}"
}

output "nft_payment_receiver" {
  value = "${tokend_account_rule.nft_payment_receiver.id}"
}

output "nft_withdrawer" {
  value = "${tokend_account_rule.nft_withdrawer.id}"
}

output "nft_issuance_receiver" {
  value = "${tokend_account_rule.nft_issuance_receiver.id}"
}
