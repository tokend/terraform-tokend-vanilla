module "account_rules" {
  source = "modules/account_rules"
}
// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  unverified_rules = [
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
  ]

  general_rules = [
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.kyc_recovery_creator}",
  ]

  blocked_rules = []
}

// create defaul signer rules
module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  default_rules = [
    "1",
  ]

  create_kyc = [
  "${module.signer_rules.kyc_recovery_creator}",
  ]
}

module "key_values" {
  source = "modules/key_values"
}