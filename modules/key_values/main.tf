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

resource tokend_key_value "default_change_role_tasks" {
  key        = "change_role_tasks:*:*"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "kyc_recovery_enabled" {
  key        = "kyc_recovery_enabled"
  value_type = "uint32"
  value      = "1"
}

resource tokend_key_value "create_kyc_recovery_tasks" {
  key = "create_kyc_recovery_tasks"
  value_type = "uint32"
  value = "1"
}
