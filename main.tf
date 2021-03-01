module "account_rules" {
  source = "modules/account_rules"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  user = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.data_creater}",
    "${module.account_rules.data_updater}"
  ]
}

module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  user = [
  	"${module.signer_rules.data_creater}",
    "${module.signer_rules.data_updater}"
  ]

  create_kyc = [
    "${module.signer_rules.kyc_recovery_creator}",
  ]

  license_admin = [
    "${module.signer_rules.license_creator}",
  ]
}

module "key_values" {
  source = "modules/key_values"
}
