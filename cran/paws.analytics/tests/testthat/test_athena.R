svc <- paws.analytics::athena()

test_that("list_application_dpu_sizes", {
  skip_on_cran()
  expect_error(svc$list_application_dpu_sizes(), NA)
})

test_that("list_application_dpu_sizes", {
  skip_on_cran()
  expect_error(svc$list_application_dpu_sizes(MaxResults = 20), NA)
})

test_that("list_capacity_reservations", {
  skip_on_cran()
  expect_error(svc$list_capacity_reservations(), NA)
})

test_that("list_capacity_reservations", {
  skip_on_cran()
  expect_error(svc$list_capacity_reservations(MaxResults = 20), NA)
})

test_that("list_data_catalogs", {
  skip_on_cran()
  expect_error(svc$list_data_catalogs(), NA)
})

test_that("list_data_catalogs", {
  skip_on_cran()
  expect_error(svc$list_data_catalogs(MaxResults = 20), NA)
})

test_that("list_engine_versions", {
  skip_on_cran()
  expect_error(svc$list_engine_versions(), NA)
})

test_that("list_engine_versions", {
  skip_on_cran()
  expect_error(svc$list_engine_versions(MaxResults = 20), NA)
})

test_that("list_named_queries", {
  skip_on_cran()
  expect_error(svc$list_named_queries(), NA)
})

test_that("list_named_queries", {
  skip_on_cran()
  expect_error(svc$list_named_queries(MaxResults = 20), NA)
})

test_that("list_query_executions", {
  skip_on_cran()
  expect_error(svc$list_query_executions(), NA)
})

test_that("list_query_executions", {
  skip_on_cran()
  expect_error(svc$list_query_executions(MaxResults = 20), NA)
})

test_that("list_work_groups", {
  skip_on_cran()
  expect_error(svc$list_work_groups(), NA)
})

test_that("list_work_groups", {
  skip_on_cran()
  expect_error(svc$list_work_groups(MaxResults = 20), NA)
})
