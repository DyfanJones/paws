svc <- paws.database::dynamodb()

test_that("describe_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_endpoints(), NA)
})

test_that("describe_limits", {
  skip_on_cran()
  expect_error(svc$describe_limits(), NA)
})

test_that("list_backups", {
  skip_on_cran()
  expect_error(svc$list_backups(), NA)
})

test_that("list_contributor_insights", {
  skip_on_cran()
  expect_error(svc$list_contributor_insights(), NA)
})

test_that("list_contributor_insights", {
  skip_on_cran()
  expect_error(svc$list_contributor_insights(MaxResults = 20), NA)
})

test_that("list_exports", {
  skip_on_cran()
  expect_error(svc$list_exports(), NA)
})

test_that("list_exports", {
  skip_on_cran()
  expect_error(svc$list_exports(MaxResults = 20), NA)
})

test_that("list_global_tables", {
  skip_on_cran()
  expect_error(svc$list_global_tables(), NA)
})

test_that("list_imports", {
  skip_on_cran()
  expect_error(svc$list_imports(), NA)
})

test_that("list_tables", {
  skip_on_cran()
  expect_error(svc$list_tables(), NA)
})
