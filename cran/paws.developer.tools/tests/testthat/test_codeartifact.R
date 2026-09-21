svc <- paws.developer.tools::codeartifact()

test_that("list_domains", {
  skip_on_cran()
  expect_error(svc$list_domains(), NA)
})

test_that("list_repositories", {
  skip_on_cran()
  expect_error(svc$list_repositories(), NA)
})
