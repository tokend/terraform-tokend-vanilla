resource tokend_account_rule "security_sender" {
  action     = "send"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_payment_receiver" {
  action     = "receive_payment"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_atomic_swap_receiver" {
  action     = "receive_atomic_swap"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_withdrawer" {
  action     = "withdraw"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

resource tokend_account_rule "security_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_security}"
  }
}


resource tokend_account_rule "security_for_crypto_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_crypto}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_fiat_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_fiat}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_utility_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_utility}"
    base_asset_type = "${var.asset_type_security}"
  }
}

resource tokend_account_rule "security_for_fiat_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_fiat}"
    base_asset_type = "${var.asset_type_security}"
  }
}


resource tokend_account_rule "security_for_crypto_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_crypto}"
    base_asset_type = "${var.asset_type_security}"
  }
}


resource tokend_account_rule "security_for_utility_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_utility}"
    base_asset_type = "${var.asset_type_security}"
  }
}


resource tokend_account_rule "crypto_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_crypto}"
  }
}

resource tokend_account_rule "fiat_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_fiat}"
  }
}

resource tokend_account_rule "utility_for_security_sell_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = false
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_utility}"
  }
}

resource tokend_account_rule "utility_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_utility}"
  }
}


resource tokend_account_rule "crypto_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_crypto}"
  }
}


resource tokend_account_rule "fiat_for_security_buy_offer_creator" {
  action = "create"
  entry_type = "offer"
  entry = {
    is_buy = true
    quote_asset_type = "${var.asset_type_security}"
    base_asset_type = "${var.asset_type_fiat}"
  }
}


resource tokend_account_rule "security_issuance_receiver" {
  action     = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_security}"
    asset_code = "*"
  }
}

output "security_for_security_buy_offer_creator" {
  value = "${tokend_account_rule.security_for_security_buy_offer_creator.id}"
}

output "security_for_security_sell_offer_creator" {
    value = "${tokend_account_rule.security_for_security_sell_offer_creator.id}"
}

output "security_for_fiat_buy_offer_creator" {
    value = "${tokend_account_rule.security_for_fiat_buy_offer_creator.id}"
}

output "security_for_fiat_sell_offer_creator" {
  value = "${tokend_account_rule.security_for_fiat_sell_offer_creator.id}"
}

output "security_for_utility_buy_offer_creator" {
  value = "${tokend_account_rule.security_for_utility_buy_offer_creator.id}"
}

output "security_for_utility_sell_offer_creator" {
  value = "${tokend_account_rule.security_for_utility_sell_offer_creator.id}"
}

output "utility_for_security_buy_offer_creator" {
  value = "${tokend_account_rule.utility_for_security_buy_offer_creator.id}"
}

output "utility_for_security_sell_offer_creator" {
  value = "${tokend_account_rule.utility_for_security_sell_offer_creator.id}"
}

output "security_sender" {
  value = "${tokend_account_rule.security_sender.id}"
}

output "security_atomic_swap_receiver" {
  value = "${tokend_account_rule.security_atomic_swap_receiver.id}"
}

output "security_payment_receiver" {
  value = "${tokend_account_rule.security_payment_receiver.id}"
}

output "security_withdrawer" {
  value = "${tokend_account_rule.security_withdrawer.id}"
}

output "security_issuance_receiver" {
  value = "${tokend_account_rule.security_issuance_receiver.id}"
}
