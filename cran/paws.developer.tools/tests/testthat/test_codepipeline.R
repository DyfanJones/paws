svc <- paws.developer.tools::codepipeline()

test_that("list_action_types", {
  skip_on_cran()
  expect_error(svc$list_action_types(), NA)
})

test_that("list_pipelines", {
  skip_on_cran()
  expect_error(svc$list_pipelines(), NA)
})

test_that("list_rule_types", {
  skip_on_cran()
  expect_error(svc$list_rule_types(), NA)
})

test_that("list_webhooks", {
  skip_on_cran()
  expect_error(svc$list_webhooks(), NA)
})

test_that("list_webhooks", {
  skip_on_cran()
  expect_error(svc$list_webhooks(MaxResults = 20), NA)
})
