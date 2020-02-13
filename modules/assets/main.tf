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

resource tokend_asset "ARS" {
  code                        = "ARS"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "Argentine Peso"
  }

  policies = [
    "transferable",
  ]
}
resource tokend_asset_pair "BTC_USD" {
  base  = "${tokend_asset.BTC.id}"
  quote = "${tokend_asset.USD.id}"
  price = "11757"
}

resource tokend_asset_pair "ARS_USD" {
  base = "${tokend_asset.ARS.id}"
  quote = "${tokend_asset.USD.id}"
  price = "0.01670"
}
