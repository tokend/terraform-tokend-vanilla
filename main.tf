module "account_rules" {
  source = "modules/account_rules"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  master_admin = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}"
  ]
  
  document_admin = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}"
  ]

  basic = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}"
  ]

  basic_plus = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}"
  ]

  unverified_rules = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.reviewable_request_creator}"
  ]

  blocked_rules = [
  "${module.account_rules.tx_sender}",
  "${module.account_rules.signer_manager}",
  "${module.account_rules.kyc_recovery_creator}",
  "${module.account_rules.reviewable_request_creator}"
  ]
}

module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  master_admin = []

  document_admin = []

  basic = []

  basic_plus = []
}

module "key_values" {
  source = "modules/key_values"
}
