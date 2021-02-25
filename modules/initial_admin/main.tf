variable "dependencies" { 
  default = [] 
  type = "list" 
}

resource tokend_initial_admin "admin" {
  email        = "oleg.k@distributedlab.com"
  title        = "Mr"
  first_name   = "Master"
  last_name    = "Admin"
  job_function = "1"
  job_title    = "Master Admin"
  role_id      = var.dependencies[0]
}
