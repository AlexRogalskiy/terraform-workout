resource "aws_budgets_budget" "terrafarm-cost" {
  name ="terraform-created"
  budget_type  = "COST"
  limit_amount = var.budgetcost
  limit_unit   = "USD"
  time_unit ="MONTHLY"
  time_period_start = "2021-06-11_16:30"
  cost_types {
    include_credit             = false
    include_discount           = false
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = [""]
  }
}