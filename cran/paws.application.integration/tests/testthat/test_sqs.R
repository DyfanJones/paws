svc <- paws.application.integration::sqs()

test_that("list_queues", {
  skip_on_cran()
  expect_error(svc$list_queues(), NA)
})

test_that("list_queues", {
  skip_on_cran()
  expect_error(svc$list_queues(MaxResults = 20), NA)
})
