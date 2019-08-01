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
    "${module.account_rules.kyc_recovery_creator}",
  ]

  general_rules = [
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.kyc_recovery_creator}",
  ]

  syndicate_rules = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.atomic_swap_receiver}",
    "${module.account_rules.issuance_receiver}",
    "${module.account_rules.tx_sender}",
    "${module.account_rules.role_updater}",
    "${module.account_rules.signer_manager}",
    "${module.account_rules.asset_creator}",
    "${module.account_rules.default_for_default_sell_offer_creator}",
    "${module.account_rules.default_for_default_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_buy_offer_creator}",
    "${module.account_rules.default_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_kyc_buy_offer_creator}",
    "${module.account_rules.kyc_for_kyc_sell_offer_creator}",
    "${module.account_rules.kyc_for_default_buy_offer_creator}",
    "${module.account_rules.kyc_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_default_buy_offer_creator}",
    "${module.account_rules.security_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_kyc_buy_offer_creator}",
    "${module.account_rules.security_for_kyc_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.default_for_security_buy_offer_creator}",
    "${module.account_rules.default_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_for_security_buy_offer_creator}",
    "${module.account_rules.kyc_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_atomic_swap_receiver}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
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
  ]

  us_accredited = [
    "${module.account_rules.balance_creator}",
    "${module.account_rules.sender}",
    "${module.account_rules.payment_receiver}",
    "${module.account_rules.atomic_swap_receiver}",
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
    "${module.account_rules.security_for_default_buy_offer_creator}",
    "${module.account_rules.security_for_default_sell_offer_creator}",
    "${module.account_rules.security_for_kyc_buy_offer_creator}",
    "${module.account_rules.security_for_kyc_sell_offer_creator}",
    "${module.account_rules.security_for_security_buy_offer_creator}",
    "${module.account_rules.security_for_security_sell_offer_creator}",
    "${module.account_rules.default_for_security_buy_offer_creator}",
    "${module.account_rules.default_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_for_security_buy_offer_creator}",
    "${module.account_rules.kyc_for_security_sell_offer_creator}",
    "${module.account_rules.kyc_sender}",
    "${module.account_rules.kyc_atomic_swap_receiver}",
    "${module.account_rules.kyc_payment_receiver}",
    "${module.account_rules.kyc_withdrawer}",
    "${module.account_rules.kyc_issuance_receiver}",
    "${module.account_rules.reviewable_request_creator}",
    "${module.account_rules.sale_participant}",
    "${module.account_rules.asset_withdrawer}",
    "${module.account_rules.external_binder}",
    "${module.account_rules.vote_creator}",
    "${module.account_rules.vote_remover}",
    "${module.account_rules.forbid_restricted_vote_remove}",
    "${module.account_rules.kyc_recovery_creator}",
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

  create_kyc = [
  "${module.signer_rules.kyc_recovery_creator}",
  ]
}

module "key_values" {
  source = "modules/key_values"
}