variable asset_type_default {
  type = "string"
  default = "0"
}

variable asset_type_kyc {
  type = "string"
  default = "1"
}

variable asset_type_nft {
  type = "string"
  default = "10"
}

// creates basic account rules
module "account_rules" {
  source = "modules/account_rules"
  asset_type_default = "${var.asset_type_default}"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_nft = "${var.asset_type_nft}"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  unverified_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.nft_sender}",
    "${module.account_rules.nft_payment_receiver}",
    "${module.account_rules.nft_withdrawer}",
    "${module.account_rules.nft_issuance_receiver}",
  ]

  general_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.reviewable_request_creator_with_tasks}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.nft_sender}",
    "${module.account_rules.nft_payment_receiver}",
    "${module.account_rules.nft_withdrawer}",
    "${module.account_rules.nft_issuance_receiver}",
  ]

  syndicate_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.asset_creator}",
    "${module.account_rules.asset_remover}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.reviewable_request_creator_with_tasks}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.nft_sender}",
    "${module.account_rules.nft_payment_receiver}",
    "${module.account_rules.nft_withdrawer}",
    "${module.account_rules.nft_issuance_receiver}",
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

  kyc_aml_admin = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.aml_alert_reviewer}",
    "${module.signer_rules.kyc_request_reviewer}",
  ]

  license_admin = [
    "${module.signer_rules.tx_sender}",
    "${module.signer_rules.license_creator}",
    "${module.signer_rules.stamp_creator}",
  ]

  issuance_signer = [
    "${module.signer_rules.issuance_creator}"
  ]

  create_kyc = [
  "${module.signer_rules.kyc_recovery_creator}",
  ]
}

module "key_values" {
  source = "modules/key_values"
  asset_type_kyc = "${var.asset_type_kyc}"
  asset_type_default = "${var.asset_type_default}"
  asset_type_nft = "${var.asset_type_nft}"
  account_general = "${module.account_roles.general}"
  account_unverified = "${module.account_roles.unverified}"
}

module "assets" {
  source = "modules/assets"
}

module "external_system_type_pool_entry" {
  source = "modules/external_system_type_pool_entry"
}

module "signers" {
  source = "modules/signers"
  license_signer_role = "${module.signer_roles.license_signer_role}"
}
