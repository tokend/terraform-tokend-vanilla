module "account_rules" {
  source = "modules/account_rules"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  master_admin = []
  
  document_admin = []

  basic = []

  basic_plus = []

  unverified_rules = [
  	"${module.account_rules.tx_sender}",
  	"${module.account_rules.signer_manager}",
  ]

  blocked_rules = []
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
