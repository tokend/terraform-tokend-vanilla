variable "general_account_role" {
    type = "string"
}

variable "default_signer_role" {
    type = "string"
}

resource tokend_account "payments_account" {
    account_id = "GBSO4E7YBNWOGQAW64RC4LACM3YNBH2C4PWRLNXILVFHG2AWANH54L5T" # SC45C2RCEBVIUMKU6MJBVDI2PULM4RXJBNGRZRSGRZRVIK5UZMFUFOIX
    role_id = "${var.general_account_role}"
    signers = [
        {
            role_id = "${var.default_signer_role}"
            public_key = "GDX6P3OBSMLKVPADU2FPJZJSSB6S5SCSMHKDC2RLJVE6PAWPDBGUM4QG" # SBZY7CTSALS4TJ5MZ47RPUNT7RLKY6ACN3F7U2KHRTFGMEXI43F5D2B6
            weight = 1000
            identity = 1
        },
    ]
}