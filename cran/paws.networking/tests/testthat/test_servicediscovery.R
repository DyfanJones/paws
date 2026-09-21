svc <- paws.networking::servicediscovery()

test_that("list_namespaces", {
  skip_on_cran()
  expect_error(svc$list_namespaces(), NA)
})

test_that("list_namespaces", {
  skip_on_cran()
  expect_error(svc$list_namespaces(MaxResults = 20), NA)
})

test_that("list_operations", {
  skip_on_cran()
  expect_error(svc$list_operations(), NA)
})

test_that("list_operations", {
  skip_on_cran()
  expect_error(svc$list_operations(MaxResults = 20), NA)
})

test_that("list_services", {
  skip_on_cran()
  expect_error(svc$list_services(), NA)
})

test_that("list_services", {
  skip_on_cran()
  expect_error(svc$list_services(MaxResults = 20), NA)
})
