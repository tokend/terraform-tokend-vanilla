resource tokend_signer_rule "data_updater" {
  action     = "update"
  entry_type = "data"
  entry = {
    type = "*"
  }
}

resource tokend_signer_rule "data_creater" {
  action     = "create"
  entry_type = "data"
  entry = {
    type = "*"
  }
}  

output "data_updater" {
  value = "${tokend_signer_rule.data_updater.id}"
}

output "data_creater" {
  value = "${tokend_signer_rule.data_creater.id}"
}
