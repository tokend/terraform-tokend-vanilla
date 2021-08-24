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

resource tokend_asset "NFT" {
  code                        = "NFT"
  max_issuance_amount         = "112000000"
  initial_pre_issuance_amount = "112000000"
  pre_issuance_signer         = "GBA4EX43M25UPV4WIE6RRMQOFTWXZZRIPFAI5VPY6Z2ZVVXVWZ6NEOOB"
  trailing_digits_count       = 6
  type                        = 10    

  details = {
    name = "NFT"
    erc712 = {
      address = "0x580Da36625bA6c5c3e40B511E84B276b2A668d04",
      deposit = true,
      withdraw = true
    }
  }



  policies = [
    "base_asset",
    "transferable",
    "withdrawable",
    "can_be_base_in_atomic_swap"
  ]
}