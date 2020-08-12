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
    "stats_quote_asset",
    "can_be_quote_in_atomic_swap",
  ]
}

resource tokend_asset "ETH" {
  code                        = "ETH"
  max_issuance_amount         = "112000000"
  initial_pre_issuance_amount = "112000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "US Dollar"
  }

  policies = [
    "transferable",
    "can_be_quote_in_atomic_swap"
  ]
}

resource tokend_asset "BOXX" {
  code                        = "BOXX"
  max_issuance_amount         = "90000000"
  initial_pre_issuance_amount = "90000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  details = {
    name = "BOXX"
  }

  policies = [
    "withdrawable",
    "base_asset",
  ]
}
