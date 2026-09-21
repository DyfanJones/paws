svc <- paws.cost.management::billingconductor()

test_that("list_account_associations", {
  skip_on_cran()
  expect_error(svc$list_account_associations(), NA)
})

test_that("list_billing_group_cost_reports", {
  skip_on_cran()
  expect_error(svc$list_billing_group_cost_reports(), NA)
})

test_that("list_billing_group_cost_reports", {
  skip_on_cran()
  expect_error(svc$list_billing_group_cost_reports(MaxResults = 20), NA)
})

test_that("list_billing_groups", {
  skip_on_cran()
  expect_error(svc$list_billing_groups(), NA)
})

test_that("list_billing_groups", {
  skip_on_cran()
  expect_error(svc$list_billing_groups(MaxResults = 20), NA)
})

test_that("list_custom_line_items", {
  skip_on_cran()
  expect_error(svc$list_custom_line_items(), NA)
})

test_that("list_custom_line_items", {
  skip_on_cran()
  expect_error(svc$list_custom_line_items(MaxResults = 20), NA)
})

test_that("list_pricing_plans", {
  skip_on_cran()
  expect_error(svc$list_pricing_plans(), NA)
})

test_that("list_pricing_plans", {
  skip_on_cran()
  expect_error(svc$list_pricing_plans(MaxResults = 20), NA)
})

test_that("list_pricing_rules", {
  skip_on_cran()
  expect_error(svc$list_pricing_rules(), NA)
})

test_that("list_pricing_rules", {
  skip_on_cran()
  expect_error(svc$list_pricing_rules(MaxResults = 20), NA)
})
