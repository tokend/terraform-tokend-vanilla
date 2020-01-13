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
    "stats_quote_asset"
  ]
}
