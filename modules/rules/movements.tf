//Variables

variable "issue_type_default" {
  type = "string"
}

variable "destroy_type_default" {
  type = "string"
}

variable "receive_issuance_default" {
  type = "string"
}

resource tokend_rule "default_destroyer" {
  action_type = "destroy"
  entry_type = "asset"

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

resource tokend_rule "default_issuance_receiver" {
  action_type = "receive_issuance"
  entry_type = "asset"

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

output "default_destroyer" {
  value = "${tokend_rule.default_destroyer.id}"
}

output "default_issuance_receiver" {
  value = "${tokend_rule.default_issuance_receiver.id}"
}
