svc <- paws.analytics::cloudsearch()

test_that("describe_domains", {
  skip_on_cran()
  expect_error(svc$describe_domains(), NA)
})

test_that("list_domain_names", {
  skip_on_cran()
  expect_error(svc$list_domain_names(), NA)
})
