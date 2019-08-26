resource tokend_limit "default" {
  role                        = "general"
  stats_type                  = "WITHDRAW"
  asset_code                  = "*"
  convert                     = true
  daily_out                   = 1
  weekly_out                  = 7
  monthly_out                 = 24
  annual_out                  = 150
}