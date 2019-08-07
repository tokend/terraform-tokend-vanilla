resource tokend_key_value "external_system_type_stellar" {
  key        = "external_system_type:stellar"
  value_type = "uint32"
  value      = "3"
}

resource tokend_key_value "external_system_type_ethereum" {
  key        = "external_system_type:ethereum"
  value_type = "uint32"
  value      = "2"
}

resource "tokend_external_system_pool_entry" "test_stellar" {
  depends_on = ["tokend_key_value.external_system_type_stellar"]
  target_count = 20
  external_system_type = "${tokend_key_value.external_system_type_stellar.value}"
  data = {
    address = "GADWZB6QUUJCX4OA2KEXIYR7ZGHUJB2ZI5OM3NXTP65VBW727MBIRM6F"
  }
}
