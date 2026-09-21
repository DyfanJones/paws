svc <- paws.developer.tools::codedeploy()

test_that("list_applications", {
  skip_on_cran()
  expect_error(svc$list_applications(), NA)
})

test_that("list_deployment_configs", {
  skip_on_cran()
  expect_error(svc$list_deployment_configs(), NA)
})

test_that("list_deployments", {
  skip_on_cran()
  expect_error(svc$list_deployments(), NA)
})

test_that("list_git_hub_account_token_names", {
  skip_on_cran()
  expect_error(svc$list_git_hub_account_token_names(), NA)
})

test_that("list_on_premises_instances", {
  skip_on_cran()
  expect_error(svc$list_on_premises_instances(), NA)
})
