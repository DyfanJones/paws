svc <- paws.analytics::kinesis()

test_that("describe_account_settings", {
  skip_on_cran()
  expect_error(svc$describe_account_settings(), NA)
})

test_that("describe_limits", {
  skip_on_cran()
  expect_error(svc$describe_limits(), NA)
})

test_that("describe_stream", {
  skip_on_cran()
  expect_error(svc$describe_stream(), NA)
})

test_that("describe_stream_summary", {
  skip_on_cran()
  expect_error(svc$describe_stream_summary(), NA)
})

test_that("list_channels", {
  skip_on_cran()
  expect_error(svc$list_channels(), NA)
})

test_that("list_channels", {
  skip_on_cran()
  expect_error(svc$list_channels(MaxResults = 20), NA)
})

test_that("list_streams", {
  skip_on_cran()
  expect_error(svc$list_streams(), NA)
})

test_that("list_tags_for_stream", {
  skip_on_cran()
  expect_error(svc$list_tags_for_stream(), NA)
})
