variable "asset_type_default" {
  type = "string"
}

variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_security" {
  type = "string"
}
resource tokend_rule "balance_creator" {
  action_type = "create"
  entry_type = "balance"
}

resource tokend_rule "asset_creator" {
  action_type = "create"
  entry_type = "asset"
  asset = {
    security_type = "*"
    asset_code = "*"
  }
}

resource tokend_rule "asset_updater" {
  action_type = "update"
  entry_type = "asset"
  asset = {
    security_type = "*"
    asset_code = "*"
  }
}

output "balance_creator" {
  value = "${tokend_rule.balance_creator.id}"
}

output "asset_creator" {
  value = "${tokend_rule.asset_creator.id}"
}

output "asset_updater" {
  value = "${tokend_rule.asset_updater.id}"
}
