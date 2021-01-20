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

resource tokend_signer_rule "license_creator" {
  action = "create"
  entry_type = "license"
}

resource tokend_signer_rule "kyc_recovery_creator" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "kyc_recovery"
  }
}

output "data_updater" {
  value = "${tokend_signer_rule.data_updater.id}"
}

output "data_creater" {
  value = "${tokend_signer_rule.data_creater.id}"
}

output "license_creator" {
  value = "${tokend_signer_rule.license_creator.id}"
}

output "kyc_recovery_creator" {
  value = "${tokend_signer_rule.kyc_recovery_creator.id}"
}