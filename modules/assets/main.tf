variable asset_type_crypto {
  type = "string"
}

variable asset_type_fiat {
  type = "string"
}

resource tokend_asset "USDC" {
  code                        = "USDC"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_crypto}"

  details = {
    name = "USD Coin"
    is_coinpayments = true
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "ETH" {
  code                        = "ETH"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_crypto}"

  details = {
    name = "Ethereum"
    is_coinpayments = true
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "BTC" {
  code                        = "BTC"
  max_issuance_amount         = "21000000"
  initial_pre_issuance_amount = "21000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_crypto}"

  details = {
    name = "Bitcoin"
    is_coinpayments = true
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}


resource tokend_asset "LTCT" {
  code                        = "LTCT"
  max_issuance_amount         = "21000000"
  initial_pre_issuance_amount = "21000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_crypto}"

  details = {
    name = "Litecoin Testnet"
    is_coinpayments = true
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "USDT" {
  code                        = "USDT"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_crypto}"

  details = {
    name = "USD Tether"
    is_coinpayments = true
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "USD" {
  code                        = "USD"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_fiat}"

  details = {
    name = "US Dollar"
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}

resource tokend_asset "EUR" {
  code                        = "EUR"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type = "${var.asset_type_fiat}"

  details = {
    name = "Euro"
  }

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset",
  ]
}

resource tokend_asset_pair "EUR_USD" {
  base = "${tokend_asset.EUR.id}"
  quote = "${tokend_asset.USD.id}"
  price = "1.1"
}