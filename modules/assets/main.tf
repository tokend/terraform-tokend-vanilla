resource tokend_asset "DOGE" {
  code                        = "DOGE"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "Dogecoin"
  }

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset",
  ]
}

resource tokend_asset "BTC" {
  code                        = "BTC"
  max_issuance_amount         = "21000000"
  initial_pre_issuance_amount = "21000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "Bitcoin"
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

  details = {
    name = "US Dollar"
  }

  policies = [
    "transferable",
  ]
}

resource tokend_asset_pair "BTC_DOGE" {
  base  = "${tokend_asset.BTC.id}"
  quote = "${tokend_asset.DOGE.id}"
  price = "11"
}

resource tokend_asset_pair "USD_DOGE" {
  base  = "${tokend_asset.USD.id}"
  quote = "${tokend_asset.DOGE.id}"
  price = "12"
}

resource tokend_asset_pair "USD_BTC" {
  base  = "${tokend_asset.BTC.id}"
  quote = "${tokend_asset.USD.id}"
  price = "10"
}
