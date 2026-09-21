svc <- paws.application.integration::mwaa()

test_that("list_environments", {
  skip_on_cran()
  expect_error(svc$list_environments(), NA)
})

test_that("list_environments", {
  skip_on_cran()
  expect_error(svc$list_environments(MaxResults = 20), NA)
})
