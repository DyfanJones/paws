svc <- paws.networking::route53domains()

test_that("list_domains", {
  skip_on_cran()
  expect_error(svc$list_domains(), NA)
})

test_that("list_operations", {
  skip_on_cran()
  expect_error(svc$list_operations(), NA)
})

test_that("list_prices", {
  skip_on_cran()
  expect_error(svc$list_prices(), NA)
})
