svc <- paws.cost.management::billing()

test_that("list_billing_views", {
  skip_on_cran()
  expect_error(svc$list_billing_views(), NA)
})
