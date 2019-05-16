resource tokend_signer_role "reader" {
  rules = []

  details = {
    admin_role = true
    name = "Reader"
    details = "Read-only access to transaction history"
  }
}

resource tokend_signer_role "service_identity" {
  rules = [
    "${var.service_identity}",
  ]

  details = {
    admin_role = true
    name       = "Identity Storage"
    details    = "Creates unverified accounts"
  }
}

output "reader" {
  value = "${tokend_signer_role.reader.id}"
}

output "service_identity" {
  value = "${tokend_signer_role.reader.id}"
}