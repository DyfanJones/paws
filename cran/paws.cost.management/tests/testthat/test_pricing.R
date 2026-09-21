svc <- paws.cost.management::pricing()

test_that("describe_services", {
  skip_on_cran()
  expect_error(svc$describe_services(), NA)
})

test_that("describe_services", {
  skip_on_cran()
  expect_error(svc$describe_services(MaxResults = 20), NA)
})
