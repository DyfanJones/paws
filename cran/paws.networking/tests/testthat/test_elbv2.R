svc <- paws.networking::elbv2()

test_that("describe_account_limits", {
  skip_on_cran()
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_load_balancers", {
  skip_on_cran()
  expect_error(svc$describe_load_balancers(), NA)
})

test_that("describe_ssl_policies", {
  skip_on_cran()
  expect_error(svc$describe_ssl_policies(), NA)
})

test_that("describe_target_groups", {
  skip_on_cran()
  expect_error(svc$describe_target_groups(), NA)
})

test_that("describe_trust_stores", {
  skip_on_cran()
  expect_error(svc$describe_trust_stores(), NA)
})
