svc <- paws.cost.management::savingsplans()

test_that("describe_savings_plans", {
  skip_on_cran()
  expect_error(svc$describe_savings_plans(), NA)
})

test_that("describe_savings_plans_offering_rates", {
  skip_on_cran()
  expect_error(svc$describe_savings_plans_offering_rates(), NA)
})

test_that("describe_savings_plans_offerings", {
  skip_on_cran()
  expect_error(svc$describe_savings_plans_offerings(), NA)
})
