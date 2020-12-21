// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  super_admin = []
  
  document_admin = []

  basic = []

  basic_plus = []

  unverified_rules = []

  blocked_rules = []
}

module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  super_admin = []

  document_admin = []

  basic = []

  basic_plus = []
}

module "key_values" {
  source = "modules/key_values"
}
