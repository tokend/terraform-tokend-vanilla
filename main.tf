variable asset_type_default {
  type = "string"
  default = "1"
}

variable asset_type_kyc {
  type = "string"
  default = "2"
}

variable asset_type_security {
  type = "string"
  default = "3"
}

variable destroy_type_default {
  type = "string"
  default = "1"
}
variable issue_type_default {
  type = "string"
  default = "1"
}
variable receive_issuance_default {
  type = "string"
  default = "1"
}
variable receive_type_default {
  type = "string"
  default = "1"
}
variable receive_type_service_to_service {
  type = "string"
  default = "2"
}
variable receive_type_service_to_user {
  type = "string"
  default = "3"
}
variable receive_type_user_to_service {
  type = "string"
  default = "4"
}
variable send_type_default {
  type = "string"
  default = "1"
}
variable send_type_service_to_service {
  type = "string"
  default = "2"
}
variable send_type_service_to_user {
  type = "string"
  default = "3"
}
variable send_type_user_to_service {
  type = "string"
  default = "4"
}

variable signer_role_default {
  type = "string"
  default = "1"
}

variable request_change_role_security_type {
  type = "string"
  default = "1"
}

variable request_kyc_recovery_security_type {
  type = "string"
  default = "2"
}

variable kyc_recovery_op_types {
  type = "list"
  default = [
    "28"]
}

variable change_roles_op_types {
  type = "list"
  default = [
    "14"]
}

module "reviewable_request_operations" {
  source = "modules/reviewable_request_operations"
  change_account_roles_request = "${var.request_change_role_security_type}"
  kyc_recovery_request = "${var.request_kyc_recovery_security_type}"
  change_account_roles_request_op_types = var.change_roles_op_types
  kyc_recovery_request_op_types = var.kyc_recovery_op_types
}


// creates basic account rules
module "rules" {
  source = "modules/rules"
  asset_type_default = "${var.asset_type_default}"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_security = "${var.asset_type_security}"
  destroy_type_default = "${var.destroy_type_default}"
  issue_type_default = "${var.issue_type_default}"
  receive_issuance_default = "${var.receive_issuance_default}"
  receive_type_default = "${var.receive_type_default}"
  receive_type_service_to_service = "${var.receive_type_service_to_service}"
  receive_type_service_to_user = "${var.receive_type_service_to_user}"
  receive_type_user_to_service = "${var.receive_type_user_to_service}"
  send_type_default = "${var.send_type_default}"
  send_type_service_to_service = "${var.send_type_service_to_service}"
  send_type_service_to_user = "${var.send_type_service_to_user}"
  send_type_user_to_service = "${var.send_type_user_to_service}"
}

// create default account roles
module "roles" {
  source = "modules/roles"

  signer_role_default = "${var.signer_role_default}"

  payment_service_rules = [
    "${module.rules.user_to_service_default_receiver}",
    "${module.rules.service_to_user_default_sender}",
    "${module.rules.service_to_service_default_sender}",
    "${module.rules.service_to_service_default_receiver}",
  ]

  unverified_rules = [
    "${module.rules.balance_creator}",
    "${module.rules.signer_manager}",
    "${module.rules.default_sender}",
    "${module.rules.default_receiver}",
    "${module.rules.user_to_service_default_sender}",
    "${module.rules.service_to_user_default_receiver}",
    "${module.rules.default_issuance_receiver}"
  ]

  general_rules = [
    "${module.rules.default_destroyer}"
  ]

  syndicate_rules = [
    "${module.rules.balance_creator}",
    "${module.rules.signer_manager}",
    "${module.rules.asset_creator}",
    "${module.rules.asset_updater}",
  ]
  blocked_rules = []
}


module "key_values" {
  source = "modules/key_values"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_security = "${var.asset_type_security}"
  asset_type_default = "${var.asset_type_default}"
  change_role_security_type = "${var.request_change_role_security_type}"
  kyc_recovery_security_type = "${var.request_kyc_recovery_security_type}"
}
//
//module "assets" {
//  source = "modules/assets"
//  asset_type_default = "${var.asset_type_default}"
//}