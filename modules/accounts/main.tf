variable "general_account_role" {
    type = "string"
}

variable "rec_payments_account_signers" {
    type = "list"
}

resource tokend_account "recurring_payments_account" {
    account_id = "GBSO4E7YBNWOGQAW64RC4LACM3YNBH2C4PWRLNXILVFHG2AWANH54L5T" # SC45C2RCEBVIUMKU6MJBVDI2PULM4RXJBNGRZRSGRZRVIK5UZMFUFOIX
    role_id = "${var.general_account_role}"
    signers = [
        "${var.rec_payments_account_signers}"
    ]
}