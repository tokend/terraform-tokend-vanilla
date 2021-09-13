resource tokend_asset "JUSD" {
  code                        = "JUSD"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "JUSD"
    is_coinpayments = true
    coinpayments_alias = "LTCT"
  }

  policies = [
    "transferable",
  ]
}

resource tokend_asset "USDT" {
  code                        = "USDT"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "USDT"
  }

  policies = [
    "transferable",
    "stats_quote_asset",
  ]
}

resource tokend_asset_pair "JUSD_USDT" {
  base = "${tokend_asset.JUSD.id}"
  quote = "${tokend_asset.USDT.id}"
  price = "0.001"
}