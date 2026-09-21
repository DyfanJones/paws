svc <- paws.end.user.computing::ivschat()

test_that("list_logging_configurations", {
  skip_on_cran()
  expect_error(svc$list_logging_configurations(), NA)
})

test_that("list_rooms", {
  skip_on_cran()
  expect_error(svc$list_rooms(), NA)
})
