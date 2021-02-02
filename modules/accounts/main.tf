variable "general_signer_role" {
  type = "string"
}

variable "general_account_role" {
  type = "string"
}

resource tokend_account "general_account_alice" {
  account_id = "GC5YTANSNAF2V4QW3QRRXQV4KWDALLPY5XM4GJUIT3NB2RYV3BTREWPI" # SA6CAKDXNLYDUFYNXDS7FRVPR3QKMOK3SGKZMPLBQDAHPO2A5KZH56OK
  role_id = "${var.general_account_role}"
  signers = [
    {
      public_key = "GC5YTANSNAF2V4QW3QRRXQV4KWDALLPY5XM4GJUIT3NB2RYV3BTREWPI"
      role_id = "${var.general_signer_role}"
    }
  ]
}

resource tokend_account "general_account_bob" {
  account_id = "GA5LRX2HB4FE3EAJF4Y2XZ3LOIL53J4V2N42W4HOZ75FRY22G7B33NZP" # SB3C7XMRKAWEDHOIUB2HBUIMGENMSPAABXU6YSDLUFJ5EVQSKPXEP7TI
  role_id = "${var.general_account_role}"
  signers = [
    {
      public_key = "GA5LRX2HB4FE3EAJF4Y2XZ3LOIL53J4V2N42W4HOZ75FRY22G7B33NZP"
      role_id = "${var.general_signer_role}"
    }
  ]
}