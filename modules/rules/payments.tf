// P2P send and receive
variable "send_type_default" {
  type = "string"
}

variable "receive_type_default" {
  type = "string"
}

// User to service send and receive
variable "send_type_user_to_service" {
  type = "string"
}

variable "receive_type_user_to_service" {
  type = "string"
}

// Service to user send and receive
variable "send_type_service_to_user" {
  type = "string"
}

variable "receive_type_service_to_user" {
  type = "string"
}

// Service to service send and receive
variable "send_type_service_to_service" {
  type = "string"
}

variable "receive_type_service_to_service" {
  type = "string"
}


resource tokend_rule "default_sender" {
  action_type = "send"
  entry_type = "asset"

  action = [
    {
      send = {
        security_type = "${var.send_type_default}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}


resource tokend_rule "default_receiver" {
  action_type = "receive"
  entry_type = "asset"

  action = [
    {
      receive = {
        security_type = "${var.receive_type_default}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

// User to service
resource tokend_rule "user_to_service_default_sender" {
  action_type = "send"
  entry_type = "asset"

  action = [
    {
      send = {
        security_type = "${var.send_type_user_to_service}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}


resource tokend_rule "user_to_service_default_receiver" {
  action_type = "receive"
  entry_type = "asset"

  action = [
    {
      receive = {
        security_type = "${var.receive_type_user_to_service}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

// Service to user
resource tokend_rule "service_to_user_default_sender" {
  action_type = "send"
  entry_type = "asset"

  action = [
    {
      send = {
        security_type = "${var.send_type_service_to_user}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}


resource tokend_rule "service_to_user_default_receiver" {
  action_type = "receive"
  entry_type = "asset"

  action = [
    {
      receive = {
        security_type = "${var.receive_type_service_to_user}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

// Service to service
resource tokend_rule "service_to_service_default_sender" {
  action_type = "send"
  entry_type = "asset"

  action = [
    {
      send = {
        security_type = "${var.send_type_service_to_service}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}


resource tokend_rule "service_to_service_default_receiver" {
  action_type = "receive"
  entry_type = "asset"

  action = [
    {
      receive = {
        security_type = "${var.receive_type_service_to_service}"
      }
    }
  ]

  asset = {
    security_type = "${var.asset_type_default}"
    asset_code = "*"
  }
}

output "default_sender" {
  value = "${tokend_rule.default_sender.id}"
}
output "default_receiver" {
  value = "${tokend_rule.default_receiver.id}"
}
output "user_to_service_default_sender" {
  value = "${tokend_rule.user_to_service_default_sender.id}"
}
output "user_to_service_default_receiver" {
  value = "${tokend_rule.user_to_service_default_receiver.id}"
}
output "service_to_user_default_sender" {
  value = "${tokend_rule.service_to_user_default_sender.id}"
}
output "service_to_user_default_receiver" {
  value = "${tokend_rule.service_to_user_default_receiver.id}"
}
output "service_to_service_default_sender" {
  value = "${tokend_rule.service_to_service_default_sender.id}"
}
output "service_to_service_default_receiver" {
  value = "${tokend_rule.service_to_service_default_receiver.id}"
}