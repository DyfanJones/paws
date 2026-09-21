svc <- paws.analytics::kafkaconnect()

test_that("list_connectors", {
  skip_on_cran()
  expect_error(svc$list_connectors(), NA)
})

test_that("list_custom_plugins", {
  skip_on_cran()
  expect_error(svc$list_custom_plugins(), NA)
})

test_that("list_worker_configurations", {
  skip_on_cran()
  expect_error(svc$list_worker_configurations(), NA)
})
