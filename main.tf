variable asset_type_default {
  type = "string"
  default = "0"
}

variable asset_type_kyc {
  type = "string"
  default = "1"
}

variable asset_type_security {
  type = "string"
  default = "2"
}

variable destroy_type_default {
  type = "string"
  default = "0"
}
variable issue_type_default {
  type = "string"
  default = "0"
}
variable receive_issuance_default {
  type = "string"
  default = "0"
}
variable receive_type_default {
  type = "string"
  default = "0"
}
variable receive_type_service_to_service {
  type = "string"
  default = "1"
}
variable receive_type_service_to_user {
  type = "string"
  default = "2"
}
variable receive_type_user_to_service {
  type = "string"
  default = "3"
}
variable send_type_default {
  type = "string"
  default = "0"
}
variable send_type_service_to_service {
  type = "string"
  default = "1"
}
variable send_type_service_to_user {
  type = "string"
  default = "2"
}
variable send_type_user_to_service {
  type = "string"
  default = "3"
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

  payment_service_rules = [
    "${module.rules.user_to_service_default_receiver}",
    "${module.rules.service_to_user_default_sender}",
    "${module.rules.service_to_service_default_sender}",
    "${module.rules.service_to_service_default_receiver}",
  ]

  unverified_rules = [
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
    "${module.rules.asset_creator}",
    "${module.rules.asset_updater}",
  ]
  //  blocked_rules = []
}


module "key_values" {
  source = "modules/key_values"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_security = "${var.asset_type_security}"
  asset_type_default = "${var.asset_type_default}"
}

module "assets" {
  source = "modules/assets"
  asset_type_default = "${var.asset_type_default}"
}