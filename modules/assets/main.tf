resource tokend_asset "BTC" {
  code                        = "BTC"
  max_issuance_amount         = "21000000"
  initial_pre_issuance_amount = "21000000"
  pre_issuance_signer         = "GCBIE4BC66Y3X3H5Z5TSWKYKCMCSYVRUY54EBGRX7PMVSBOXMYNBDGTF"
  trailing_digits_count       = 6

  details = {
    name = "Bitcoin"
  }

  policies = [
    "transferable",
    "base_asset",
    "withdrawable"
  ]
}
resource tokend_asset "GSHI" {
  code                        = "GSHI"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GCBIE4BC66Y3X3H5Z5TSWKYKCMCSYVRUY54EBGRX7PMVSBOXMYNBDGTF"
  trailing_digits_count       = 2

  details = {
    name = "GSH€"
  }

  policies = [
    "transferable",
    "base_asset",
    "stats_quote_asset"
  ]
}
resource tokend_asset "GSHD" {
  code                        = "GSHD"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GCBIE4BC66Y3X3H5Z5TSWKYKCMCSYVRUY54EBGRX7PMVSBOXMYNBDGTF"
  trailing_digits_count       = 2
  type                        = 3

  details = {
    name = "GSH€"
  }

  policies = [
    "transferable",
    "base_asset",
    "withdrawable"
  ]
}
