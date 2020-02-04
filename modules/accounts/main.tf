variable "buyback_account_role" {
  type = "string"
}

resource tokend_account "buyback_service" {
  account_id = "GC6MQ5V2TOTHEBLIWK7XFRNUWSSG6O4Y5A6WC252XUF5OOC34A5XVR3N"
  role_id = var.buyback_account_role
  signers = [
    {
      public_key = "GC6MQ5V2TOTHEBLIWK7XFRNUWSSG6O4Y5A6WC252XUF5OOC34A5XVR3N"
      weight = 1000
      identity = 228
      role_id = "1"
    }
  ]
}