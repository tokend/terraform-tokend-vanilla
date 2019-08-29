resource tokend_limit "limits_init" {
  role                        = 1
  stats_type                  = "withdraw"
  asset_code                  = "BTC"
  convert                     = true
  daily_out                   = 1
  weekly_out                  = 7
  monthly_out                 = 24
  annual_out                  = 150
}