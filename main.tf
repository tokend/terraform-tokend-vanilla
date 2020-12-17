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

module "signer_rules" {
  source = "modules/signer_rules"
}

// create default signer roles
module "signer_roles" {
  source = "modules/signer_roles"

  default_rules = [
    "1",
  ]

  super_admin = [
    "${module.signer_rules.role_assigner}",
    "${module.signer_rules.project_creator}",
//    "${module.signer_rules.user_banner}",
//    "${module.signer_rules.user_unbanner}",
//    "${module.signer_rules.project_user_adder}",
//    "${module.signer_rules.project_user_remover}",
    "${module.signer_rules.info_editor}",
  ]

  document_admin = [
    "${module.signer_rules.workflow_editor}",
  ]

  basic = [
    "${module.signer_rules.workflow_reviewer}",
  ]

  basic_plus = [
    "${module.signer_rules.document_uploader}",
//    "${module.signer_rules.workflow_starter}",
    "${module.signer_rules.workflow_reviewer}",
  ]
}

module "key_values" {
  source = "modules/key_values"
}
