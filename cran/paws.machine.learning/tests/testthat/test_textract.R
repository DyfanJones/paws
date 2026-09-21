svc <- paws.machine.learning::textract()

test_that("list_adapter_versions", {
  skip_on_cran()
  expect_error(svc$list_adapter_versions(), NA)
})

test_that("list_adapter_versions", {
  skip_on_cran()
  expect_error(svc$list_adapter_versions(MaxResults = 20), NA)
})

test_that("list_adapters", {
  skip_on_cran()
  expect_error(svc$list_adapters(), NA)
})

test_that("list_adapters", {
  skip_on_cran()
  expect_error(svc$list_adapters(MaxResults = 20), NA)
})
