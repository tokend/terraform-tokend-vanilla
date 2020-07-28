resource tokend_account_rule "sticker_issuance_receiver" {
  action = "receive_issuance"
  entry_type = "asset"

  entry = {
    asset_type = "${var.asset_type_sticker}"
    asset_code = "*"
  }
}

output "sticker_issuance_receiver" {
  value = "${tokend_account_rule.sticker_issuance_receiver.id}"
}
