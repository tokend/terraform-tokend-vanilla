variable "dependencies" { 
  default = [] 
  type = "list" 
}

variable "master_admin_id" {
  type = "string"
}

variable "kyc_recovery_enabled" {
  type = "string"
}

resource tokend_initial_admin "admin" {
  email        = "oleg.k@distributedlab.com"
  title        = "Mr"
  first_name   = "Master"
  last_name    = "Admin"
  job_function = "1"
  job_title    = "Master Admin"
  role_id      = "${var.master_admin_id}"
}

resource tokend_dummy "dummy" {
  field1 = "${var.master_admin_id}"
  field2 = "${var.kyc_recovery_enabled}"
}
