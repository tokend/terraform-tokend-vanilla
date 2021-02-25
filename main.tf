module "account_rules" {
  source = "modules/account_rules"
}

module "key_values" {
  source = "modules/key_values"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  master_admin = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.data_creater}",
    "${module.account_rules.data_updater}"
  ]
  
  document_admin = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.data_creater}",
    "${module.account_rules.data_updater}"
  ]

  basic = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.data_creater}",
    "${module.account_rules.data_updater}"
  ]

  basic_plus = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.data_creater}",
    "${module.account_rules.data_updater}"
  ]

  unverified_rules = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.data_creater}",
    "${module.account_rules.data_updater}"
  ]

  blocked_rules = [
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

  master_admin = [
  	"${module.signer_rules.data_creater}",
    "${module.signer_rules.data_updater}"
  ]

  document_admin = [
  	"${module.signer_rules.data_creater}",
    "${module.signer_rules.data_updater}"
  ]

  basic = [
  	"${module.signer_rules.data_creater}",
    "${module.signer_rules.data_updater}"
  ]

  basic_plus = [
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

module "initial_admin" {
  source = "modules/initial_admin"
}
