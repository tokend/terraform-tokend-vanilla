variable "asset_type_default" {
  type = "string"
}

resource tokend_asset "USD" {
  code = "USD"
  security_type = "${var.asset_type_default}"
  max_issuance_amount = "9223372036853"
  trailing_digits_count = 6

  details = {
    name = "US Dollar"
  }
}

resource tokend_asset "BTC" {
  code = "BTC"
  security_type = "${var.asset_type_default}"
  max_issuance_amount = "21000000"
  trailing_digits_count = 6
  details = {
    name = "Bitcoin"
  }
}

resource tokend_asset "EUR" {
  code = "EUR"
  security_type = "${var.asset_type_default}"
  max_issuance_amount = "9223372036853"
  trailing_digits_count = 6
  details = {
    name = "Euro"
  }
}

resource tokend_asset "CHF" {
  code = "CHF"
  max_issuance_amount = "9223372036853"
  security_type = "${var.asset_type_default}"
  trailing_digits_count = 6

  details = {
    name = "Swiss franc"
  }
}
