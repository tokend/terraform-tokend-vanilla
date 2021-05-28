variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_default" {
  type = "string"
}

variable "asset_type_nft" {
  type = "string"
}

variable "account_unverified" {
  type = "string"
}

variable "account_general" {
  type = "string"
}

resource tokend_key_value "asset_type_kyc_required" {
  key = "asset_type:kyc_required"
  value_type = "uint32"
  value = "${var.asset_type_kyc}"
}

resource tokend_key_value "asset_type_default" {
  key = "asset_type:default"
  value_type = "uint32"
  value = "${var.asset_type_default}"
}

resource tokend_key_value "asset_type_nft" {
  key = "asset_type:nft"
  value_type = "uint32"
  value = "${var.asset_type_nft}"
}

resource tokend_key_value "change_role_task-submit_auto_verification" {
  key = "change_role_task:submit_auto_verification"
  value_type = "uint32"
  value = "1024"
}

resource tokend_key_value "change_role_task-complete_auto_verification" {
  key = "change_role_task:complete_auto_verification"
  value_type = "uint32"
  value = "2048"
}

resource tokend_key_value "change_role_task-manual_review_required" {
  key = "change_role_task:manual_review_required"
  value_type = "uint32"
  value = "4096"
}

resource tokend_key_value "default_withdraw_tasks" {
  key = "withdrawal_tasks:*"
  value_type = "uint32"
  value = "2048"
}

resource tokend_key_value "default_change_role_tasks" {
  key = "change_role_tasks:*:*"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "sign_up_change_role_task" {
  key = "change_role_tasks:${var.account_unverified}:${var.account_general}"
  value_type = "uint32"
  value = "0"
}

resource tokend_key_value "asset_create_tasks" {
  key = "asset_create_tasks"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "limits_update_tasks" {
  key = "limits_update_tasks"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "asset_update_default" {
  key = "asset_update_tasks:*"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "asset_update_task" {
  key = "asset_update_tasks"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "sale_create_tasks" {
  key = "sale_create_tasks:*"
  value_type = "uint32"
  value = "2"
}

resource tokend_key_value "issuance_tasks_default" {
  key = "issuance_tasks:*"
  value_type = "uint32"
  value = "0"
}

resource tokend_key_value "preissuance_tasks_default" {
  key = "preissuance_tasks:*"
  value_type = "uint32"
  value = "0"
}

resource tokend_key_value "kyc_recovery_enabled" {
  key = "kyc_recovery_enabled"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "create_kyc_recovery_tasks" {
  key = "create_kyc_recovery_tasks"
  value_type = "uint32"
  value = "1"
}

resource tokend_key_value "ext_sys_exp_period_erc721" {
  key = "ext_sys_exp_period:2"
  value_type = "uint32"
  value = "1200"
}

resource tokend_key_value "ext_sys_exp_period_erc20" {
  key = "ext_sys_exp_period:3"
  value_type = "uint32"
  value = "1200"
}

resource tokend_key_value "data_type_identity" {
  key = "data_type:identity"
  value_type = "uint64"
  value = 1
}

resource tokend_key_value "data_type_identity_type" {
  key = "data_type:identity_type"
  value_type = "uint64"
  value = 2
}

resource tokend_key_value "data_task_identity" {
  key = "data_task:identity"
  value_type = "uint32"
  value = 3
}

resource tokend_key_value "nft_tasks_default" {
  key = "nft_tasks:default"
  value_type = "uint32"
  value = 32768
}

resource tokend_key_value "nft_tasks_check_flow_tx_confirmed" {
  key = "nft_tasks:check_flow_tx_confirmed"
  value_type = "uint32"
  value = 16384
}