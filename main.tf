variable restricted_poll_type {
  type = "string"
  default = "3"
}

variable unrestricted_poll_type {
  type = "string"
  default = "4"
}

variable default_change_role_tasks {
  type = "string"
  default = "1"
}

variable asset_type_fiat {
  type = "string"
  default = "0"
}


variable asset_type_crypto {
  type = "string"
  default = "1"
}

variable asset_type_utility {
  type = "string"
  default = "2"
}

variable asset_type_security {
  type = "string"
  default = "3"
}

// creates basic account rules
module "account_rules" {
  source = "modules/account_rules"
  restricted_poll_type = "${var.restricted_poll_type}"
  asset_type_utility = "${var.asset_type_utility}"
  asset_type_crypto = "${var.asset_type_crypto}"
  asset_type_fiat = "${var.asset_type_fiat}"
  asset_type_security = "${var.asset_type_security}"
}

// create default account roles
module "account_roles" {
  source = "modules/account_roles"

  unverified_blocked_rules = [
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.kyc_recovery_creator}",
  ]

  unverified_rules = [
    "${module.account_rules.security_withdrawer}",
    "${module.account_rules.utility_withdrawer}",
    "${module.account_rules.fiat_withdrawer}",
    "${module.account_rules.crypto_withdrawer}",
    "${module.account_rules.balance_creator}",
    "${module.account_rules.crypto_sender}",
    "${module.account_rules.crypto_payment_receiver}",
    "${module.account_rules.crypto_atomic_swap_receiver}",
    "${module.account_rules.fiat_sender}",
    "${module.account_rules.fiat_payment_receiver}",
    "${module.account_rules.fiat_atomic_swap_receiver}",
    "${module.account_rules.security_atomic_swap_receiver}",
    "${module.account_rules.security_sender}",
    "${module.account_rules.security_payment_receiver}",
    "${module.account_rules.utility_sender}",
    "${module.account_rules.utility_payment_receiver}",
    "${module.account_rules.utility_atomic_swap_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.crypto_for_crypto_sell_offer_creator}",
    "${module.account_rules.crypto_for_crypto_buy_offer_creator}",
    "${module.account_rules.fiat_for_fiat_buy_offer_creator}",
    "${module.account_rules.fiat_for_fiat_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.security_for_fiat_sell_offer_creator}",
    "${module.account_rules.security_for_fiat_buy_offer_creator}",
    "${module.account_rules.security_for_crypto_buy_offer_creator}",
    "${module.account_rules.security_for_crypto_sell_offer_creator}",
    "${module.account_rules.utility_for_fiat_sell_offer_creator}",
    "${module.account_rules.utility_for_fiat_buy_offer_creator}",
    "${module.account_rules.utility_for_crypto_sell_offer_creator}",
    "${module.account_rules.utility_for_crypto_buy_offer_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.security_issuance_receiver}",
    "${module.account_rules.utility_issuance_receiver}",
    "${module.account_rules.fiat_issuance_receiver}",
    "${module.account_rules.crypto_issuance_receiver}",
  ]

  general_rules = [
    "${module.account_rules.security_withdrawer}",
    "${module.account_rules.utility_withdrawer}",
    "${module.account_rules.fiat_withdrawer}",
    "${module.account_rules.crypto_withdrawer}",
    "${module.account_rules.balance_creator}",
    "${module.account_rules.crypto_sender}",
    "${module.account_rules.crypto_payment_receiver}",
    "${module.account_rules.crypto_atomic_swap_receiver}",
    "${module.account_rules.fiat_sender}",
    "${module.account_rules.fiat_payment_receiver}",
    "${module.account_rules.fiat_atomic_swap_receiver}",
    "${module.account_rules.security_atomic_swap_receiver}",
    "${module.account_rules.security_sender}",
    "${module.account_rules.security_payment_receiver}",
    "${module.account_rules.utility_sender}",
    "${module.account_rules.utility_payment_receiver}",
    "${module.account_rules.utility_atomic_swap_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.crypto_for_crypto_sell_offer_creator}",
    "${module.account_rules.crypto_for_crypto_buy_offer_creator}",
    "${module.account_rules.fiat_for_fiat_buy_offer_creator}",
    "${module.account_rules.fiat_for_fiat_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.security_for_fiat_sell_offer_creator}",
    "${module.account_rules.security_for_fiat_buy_offer_creator}",
    "${module.account_rules.security_for_crypto_buy_offer_creator}",
    "${module.account_rules.security_for_crypto_sell_offer_creator}",
    "${module.account_rules.utility_for_fiat_sell_offer_creator}",
    "${module.account_rules.utility_for_fiat_buy_offer_creator}",
    "${module.account_rules.utility_for_crypto_sell_offer_creator}",
    "${module.account_rules.utility_for_crypto_buy_offer_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.security_issuance_receiver}",
    "${module.account_rules.utility_issuance_receiver}",
    "${module.account_rules.fiat_issuance_receiver}",
    "${module.account_rules.crypto_issuance_receiver}",
  ]

  syndicate_rules = [
    "${module.account_rules.security_withdrawer}",
    "${module.account_rules.utility_withdrawer}",
    "${module.account_rules.fiat_withdrawer}",
    "${module.account_rules.crypto_withdrawer}",
    "${module.account_rules.balance_creator}",
    "${module.account_rules.crypto_sender}",
    "${module.account_rules.crypto_payment_receiver}",
    "${module.account_rules.crypto_atomic_swap_receiver}",
    "${module.account_rules.fiat_sender}",
    "${module.account_rules.fiat_payment_receiver}",
    "${module.account_rules.security_atomic_swap_receiver}",
    "${module.account_rules.security_sender}",
    "${module.account_rules.security_payment_receiver}",
    "${module.account_rules.fiat_atomic_swap_receiver}",
    "${module.account_rules.utility_sender}",
    "${module.account_rules.utility_payment_receiver}",
    "${module.account_rules.utility_atomic_swap_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.asset_creator}",
    "${module.account_rules.asset_remover}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.security_for_fiat_sell_offer_creator}",
    "${module.account_rules.security_for_fiat_buy_offer_creator}",
    "${module.account_rules.security_for_crypto_buy_offer_creator}",
    "${module.account_rules.security_for_crypto_sell_offer_creator}",
    "${module.account_rules.utility_for_fiat_sell_offer_creator}",
    "${module.account_rules.utility_for_fiat_buy_offer_creator}",
    "${module.account_rules.utility_for_crypto_sell_offer_creator}",
    "${module.account_rules.utility_for_crypto_buy_offer_creator}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
    "${module.account_rules.poll_closer}",
    "${module.account_rules.poll_canceler}",
    "${module.account_rules.poll_end_time_updater}",
    "${module.account_rules.kyc_recovery_creator}",
    "${module.account_rules.atomic_swap_ask_creator}",
    "${module.account_rules.security_issuance_receiver}",
    "${module.account_rules.utility_issuance_receiver}",
    "${module.account_rules.fiat_issuance_receiver}",
    "${module.account_rules.crypto_issuance_receiver}",
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
    "${module.signer_rules.issuance_creator}",
    "${module.signer_rules.request_reviewer}",
  ]

  create_kyc = [
    "${module.signer_rules.kyc_recovery_creator}",
  ]
}

module "key_values" {
  source = "modules/key_values"
  restricted_poll_type = "${var.restricted_poll_type}"
  unrestricted_poll_type = "${var.unrestricted_poll_type}"
  asset_type_security = "${var.asset_type_security}"
  asset_type_utility = "${var.asset_type_utility}"
  asset_type_fiat = "${var.asset_type_fiat}"
  asset_type_crypto = "${var.asset_type_crypto}"
  default_change_role_tasks = "${var.default_change_role_tasks}"
}

module "assets" {
  source = "modules/assets"
  asset_type_crypto = "${var.asset_type_crypto}"
  asset_type_fiat = "${var.asset_type_fiat}"
}

module "external_system_type_pool_entry" {
  source = "modules/external_system_type_pool_entry"
}

module "signers" {
  source = "modules/signers"
  license_signer_role = "${module.signer_roles.license_signer_role}"
}
