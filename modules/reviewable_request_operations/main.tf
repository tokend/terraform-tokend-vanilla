variable change_account_roles_request {
  type = "string"
}

variable change_account_roles_request_op_types {
  type = "list"
}

variable kyc_recovery_request_op_types {
  type = "list"
}

variable kyc_recovery_request {
  type = "string"
}

resource tokend_reviewable_request_operations "change_roles" {
  security_type = "${var.change_account_roles_request}"
  op_types = [
    "${var.change_account_roles_request_op_types}"]
}

resource tokend_reviewable_request_operations "kyc_recovery" {
  security_type = "${var.kyc_recovery_request}"
  op_types = [
    "${var.kyc_recovery_request_op_types}"]
}


