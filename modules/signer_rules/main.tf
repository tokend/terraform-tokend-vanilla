resource tokend_signer_rule "document_uploader" {
  action = "create"
  entry_type = "data"
  entry = {
    type = "1"
  }
}

#resource tokend_signer_rule "user_registrator" { //???
#  action = "create"
#  entry_type = "data"
#  entry = {
#    type = "1"
#  }
#}

#resource tokend_signer_rule "document_searcher" {
#  action =  "get"
#  entry_type = "data"
#  entry = {
#    type = "1"
#  }
#}

//resource tokend_signer_rule "workflow_starter" {
//  action = "create"
//  entry_type = "reviewable_request"
//  entry = {
//    request_type = "change_role"
//  }
//}

resource tokend_signer_rule "workflow_editor" {
  action = "update"
  entry_type = "data"
  entry = {
    type = "2"
  }
}

//resource tokend_signer_rule "participants_viewer" {
//  action = "create"
//  entry_type = "reviewable_request"
//  entry = {
//    request_type = "change_role"
//  }
//}
//
//resource tokend_signer_rule "project_user_adder" {
//  action = "create"
//  entry_type = "reviewable_request"
//  entry = {
//    request_type = "change_role"
//  }
//}
//
//resource tokend_signer_rule "project_user_remover" {
//  action = "create"
//  entry_type = "reviewable_request"
//  entry = {
//    request_type = "change_role"
//  }
//}

resource tokend_signer_rule "workflow_reviewer" {
  action = "review"
  entry_type = "data"
  entry = {
    type = "2"
  }
}

resource tokend_signer_rule "role_assigner" {
  action = "create"
  entry_type = "reviewable_request"
  entry = {
    request_type = "change_role"
  }
}

resource tokend_signer_rule "project_creator" {
  action = "create"
  entry_type = "data"
  entry = {
    type = "3"
  }
}

//resource tokend_signer_rule "user_banner" {
//  action = "create"
//  entry_type = "reviewable_request"
//  entry = {
//    request_type = "change_role"
//  }
//}
//
//resource tokend_signer_rule "user_unbanner" {
//  action = "create"
//  entry_type = "reviewable_request"
//  entry = {
//    request_type = "change_role"
//  }
//}

resource tokend_signer_rule "info_editor" {
  action = "update"
  entry_type = "data"
  entry = {
    type = "4"
  }
}


output "document_uploader" {
  value = "${tokend_signer_rule.document_uploader.id}"
}

#output "document_searcher" {
#  value = "${tokend_signer_rule.document_searcher.id}"
#}

//output "workflow_starter" {
//  value = "${tokend_signer_rule.workflow_starter.id}"
//}

output "workflow_editor" {
  value = "${tokend_signer_rule.workflow_editor.id}"
}

//output "participants_viewer" {
//  value = "${tokend_signer_rule.participants_viewer.id}"
//}
//
//output "project_user_adder" {
//  value = "${tokend_signer_rule.project_user_adder.id}"
//}
//
//output "project_user_remover" {
//  value = "${tokend_signer_rule.project_user_remover.id}"
//}

output "workflow_reviewer" {
  value = "${tokend_signer_rule.workflow_reviewer.id}"
}

output "role_assigner" {
  value = "${tokend_signer_rule.role_assigner.id}"
}

output "project_creator" {
  value = "${tokend_signer_rule.project_creator.id}"
}

//output "user_banner" {
//  value = "${tokend_signer_rule.user_banner.id}"
//}
//
//output "user_unbanner" {
//  value = "${tokend_signer_rule.user_unbanner.id}"
//}

output "info_editor" {
  value = "${tokend_signer_rule.info_editor.id}"
}
