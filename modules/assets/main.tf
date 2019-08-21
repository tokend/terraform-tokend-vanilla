resource tokend_asset "UAH" {
  code                        = "UAH"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GAB4FEAPIFH7KRUZQYR6I3VKKRQHGZGAOOPO56JIUPNKY2W5T6SMPWGD"
  trailing_digits_count       = 6

  details = {
    name = "Ukrainian hryvnia"
  }

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset",
  ]
}