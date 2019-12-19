variable "asset_type_default" {
  type = "string"
}

variable "asset_type_kyc" {
  type = "string"
}

variable "asset_type_security" {
  type = "string"
}

variable "recovery_req_type" {
  type = "string"
}

variable "change_role_req_type" {
  type = "string"
}

variable "gen_change_role_req_type" {
  type = "string"
}

variable "unverified_forbidden_roles" {
  type = "list"
}

resource tokend_rule "signer_manager" {
  action_type = "*"
  entry_type = "signer"

  signer = [
    {
      role_ids = [
        "*"]
    }
  ]
}

resource tokend_rule "balance_creator" {
  action_type = "create"
  entry_type = "balance"
}

resource tokend_rule "asset_creator" {
  action_type = "create"
  entry_type = "asset"
  asset = {
    security_type = "*"
    asset_code = "*"
  }
}

resource tokend_rule "asset_updater" {
  action_type = "update"
  entry_type = "asset"
  asset = {
    security_type = "*"
    asset_code = "*"
  }
}

resource tokend_rule "recovery_req_creator" {
  action_type = "create"
  entry_type = "reviewable_request"
  reviewable_request = [
    {
      op_rules = [
        {
          action_type = "recover"
          entry_type = "account"
        }]
      security_type = "${var.recovery_req_type}"
    }]
}


resource tokend_rule "change_role_req_creator" {
  action_type = "create"
  entry_type = "reviewable_request"
  reviewable_request = [
    {
      op_rules = [
        {
          action_type = "change_roles"
          action = [
            {
              change_roles = [
                {
                  role_ids = [
                    "*"]
                }]
            }]
          entry_type = "account"
        }]
      security_type = "${var.change_role_req_type}"
    }]
}

resource tokend_rule "forbid_change_role" {
  action_type = "change_roles"
  action = [
    {
      change_roles = [
        {
          role_ids = [
            "${var.unverified_forbidden_roles}"]
        }]
    }]
  entry_type = "account"
  forbidden = true
}

resource tokend_rule "allow_change_role" {
  action_type = "change_roles"
  action = [
    {
      change_roles = [
        {
          role_ids = [
            "*"]
        }]
    }]
  entry_type = "account"
}


resource tokend_rule "recovery_initiator" {
  action_type = "initiate_recovery"
  entry_type = "account"
  action = [
    {
      initiate_recovery = [
        {
          role_ids = [
            "*"]
        }]
    }]
}

output "signer_manager" {
  value = "${tokend_rule.signer_manager.id}"
}

output "balance_creator" {
  value = "${tokend_rule.balance_creator.id}"
}

output "asset_creator" {
  value = "${tokend_rule.asset_creator.id}"
}

output "asset_updater" {
  value = "${tokend_rule.asset_updater.id}"
}

output "change_role_request_creator" {
  value = "${tokend_rule.change_role_req_creator.id}"
}

output "forbid_change_role" {
  value = "${tokend_rule.forbid_change_role.id}"
}

output "allow_change_role" {
  value = "${tokend_rule.allow_change_role.id}"
}

output "recovery_initiator" {
  value = "${tokend_rule.recovery_initiator.id}"
}

output "recovery_request_creator" {
  value = "${tokend_rule.recovery_req_creator.id}"
}