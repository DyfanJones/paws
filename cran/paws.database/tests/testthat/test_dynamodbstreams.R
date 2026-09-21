svc <- paws.database::dynamodbstreams()

test_that("list_streams", {
  skip_on_cran()
  expect_error(svc$list_streams(), NA)
})
