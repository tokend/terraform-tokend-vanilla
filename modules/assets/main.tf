resource tokend_asset "USD" {
  code                        = "USD"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GAWHHIG2OT4JCC6WGLEFESU73VMPHHOUJPNXOFBXHDVLUUL4VLU7OKT3"
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
  pre_issuance_signer         = "GAWHHIG2OT4JCC6WGLEFESU73VMPHHOUJPNXOFBXHDVLUUL4VLU7OKT3"
  trailing_digits_count       = 6

  details = {
    name = "Bitcoin"
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
  pre_issuance_signer         = "GAWHHIG2OT4JCC6WGLEFESU73VMPHHOUJPNXOFBXHDVLUUL4VLU7OKT3"
  trailing_digits_count       = 6

  details = {
    name = "Euro"
  }

  policies = [
    "transferable",
  ]
}

resource tokend_asset "CHF" {
  code                        = "CHF"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GAWHHIG2OT4JCC6WGLEFESU73VMPHHOUJPNXOFBXHDVLUUL4VLU7OKT3"
  trailing_digits_count       = 6

  details = {
    name = "Swiss franc"
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

resource tokend_asset_pair "EUR_USD" {
  base = "${tokend_asset.EUR.id}"
  quote = "${tokend_asset.USD.id}"
  price = "1.1"
}

resource tokend_asset_pair "CHF_USD" {
  base = "${tokend_asset.CHF.id}"
  quote = "${tokend_asset.USD.id}"
  price = "1.02459"
}


resource tokend_asset "RUB" {
  code                        = "RUB"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GAWHHIG2OT4JCC6WGLEFESU73VMPHHOUJPNXOFBXHDVLUUL4VLU7OKT3"
  trailing_digits_count       = 6

  details = {
    name = "Russian Ruble"
  }

  policies = [
    "transferable",
    "base_asset",
  ]
}
