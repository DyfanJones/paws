svc <- paws.developer.tools::codecatalyst()

test_that("list_access_tokens", {
  skip_on_cran()
  expect_error(svc$list_access_tokens(), NA)
})

test_that("list_spaces", {
  skip_on_cran()
  expect_error(svc$list_spaces(), NA)
})
