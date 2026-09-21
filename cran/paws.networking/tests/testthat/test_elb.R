svc <- paws.networking::elb()

test_that("describe_account_limits", {
  skip_on_cran()
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_load_balancer_policies", {
  skip_on_cran()
  expect_error(svc$describe_load_balancer_policies(), NA)
})

test_that("describe_load_balancer_policy_types", {
  skip_on_cran()
  expect_error(svc$describe_load_balancer_policy_types(), NA)
})

test_that("describe_load_balancers", {
  skip_on_cran()
  expect_error(svc$describe_load_balancers(), NA)
})
