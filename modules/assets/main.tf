variable "asset_type_nft" {
  type = "string"
}

variable "erc721_data" {
  type    = "map"
  default = {
    "address" = "0x580Da36625bA6c5c3e40B511E84B276b2A668d04"
    "deposit" = true
    "withdraw" = true
  }
}

resource tokend_asset "bnft" {
  code                        = "bnft"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6

  type = "${var.asset_type_nft}"

  details = {
    name = "BNFT",
    external_system_type = 3,
    erc721 = map("address", "0x580Da36625bA6c5c3e40B511E84B276b2A668d04", "deposit", true, "withdraw", true)
    }
  }

  policies = [
    "base_asset",
    "transferable",
    "can_be_base_in_atomic_swap",
    "withdrawable"
  ]
}

resource tokend_asset "USD" {
  code                        = "USD"
  max_issuance_amount         = "9223372036853"
  initial_pre_issuance_amount = "9223372036853"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 2

  details = {
    name = "US Dollar"
  }

  policies = [
    "base_asset",
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
    is_coinpayer = true,
    name = "Ethereum"
  }



  policies = [
    "base_asset",
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
