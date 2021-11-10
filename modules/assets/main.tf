resource tokend_asset "USD" {
  code = "USD"
  max_issuance_amount = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count = 6
  type = 1

  details = {
    name = "US Dollar"
  }

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset",
  ]
}

resource tokend_asset "EUR" {
  code = "EUR"
  max_issuance_amount = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count = 6
  type = 1

  details = {
    name = "Euro"
  }

  policies = [
    "transferable",
  ]
}

resource tokend_asset_pair "EUR_USD" {
  base = "${tokend_asset.EUR.id}"
  quote = "${tokend_asset.USD.id}"
  price = "1.1"
}