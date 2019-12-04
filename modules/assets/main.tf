resource tokend_asset "USD" {
  code                        = "USD"
  max_issuance_amount         = "9223372036853"
  trailing_digits_count       = 6

  details = {
    name = "US Dollar"
  }
}

resource tokend_asset "BTC" {
  code                        = "BTC"
  max_issuance_amount         = "21000000"
  trailing_digits_count       = 6
  details = {
    name = "Bitcoin"
  }
}

resource tokend_asset "EUR" {
  code                        = "EUR"
  max_issuance_amount         = "9223372036853"
  trailing_digits_count       = 6
  details = {
    name = "Euro"
  }
}

resource tokend_asset "CHF" {
  code                        = "CHF"
  max_issuance_amount         = "9223372036853"
  trailing_digits_count       = 6

  details = {
    name = "Swiss franc"
  }
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
