svc <- paws.analytics::firehose()

test_that("list_delivery_streams", {
  skip_on_cran()
  expect_error(svc$list_delivery_streams(), NA)
})
