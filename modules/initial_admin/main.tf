resource tokend_initial_admin "admin" {
  email        = "oleg.k@distributedlab.com"
  title        = "Mr"
  first_name   = "Master"
  last_name    = "Admin"
  job_function = "1"
  job_title    = "Master Admin"
  role_id      = "7"

  depends_on = [
    "tokend_account_role.master_admin",
    "tokend_key_value.kyc_recovery_enabled"
  ]
}
