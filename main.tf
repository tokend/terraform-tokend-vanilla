// creates basic account rules
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
  ]

  blocked_rules = []
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"
}

module "key_values" {
  source = "modules/key_values"
}
