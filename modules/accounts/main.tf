variable "general_account_role" {
    type = "string"
}

variable "default_signer_role" {
    type = "string"
}

variable "general_signer_pkey" {
    type = "string"
}

variable "rec_payments_signer_role" {
    type = "string"
}

variable "rec_payments_signer_pkey" {
    type = "string"
}

resource tokend_account "recurring_payments_account" {
    account_id = "GBSO4E7YBNWOGQAW64RC4LACM3YNBH2C4PWRLNXILVFHG2AWANH54L5T" # SC45C2RCEBVIUMKU6MJBVDI2PULM4RXJBNGRZRSGRZRVIK5UZMFUFOIX
    role_id = "${var.general_account_role}"
    signers = [
//        {
//            role_id = "${var.default_signer_role}"
//            public_key = "${var.general_signer_pkey}"
//        },
        {
            role_id = "${var.rec_payments_signer_role}"
            public_key = "${var.rec_payments_signer_pkey}"
        }
    ]
}