svc <- paws.database::neptunedata()

test_that("list_gremlin_queries", {
  skip_on_cran()
  expect_error(svc$list_gremlin_queries(), NA)
})

test_that("list_loader_jobs", {
  skip_on_cran()
  expect_error(svc$list_loader_jobs(), NA)
})

test_that("list_ml_data_processing_jobs", {
  skip_on_cran()
  expect_error(svc$list_ml_data_processing_jobs(), NA)
})

test_that("list_ml_endpoints", {
  skip_on_cran()
  expect_error(svc$list_ml_endpoints(), NA)
})

test_that("list_ml_model_training_jobs", {
  skip_on_cran()
  expect_error(svc$list_ml_model_training_jobs(), NA)
})

test_that("list_ml_model_transform_jobs", {
  skip_on_cran()
  expect_error(svc$list_ml_model_transform_jobs(), NA)
})

test_that("list_open_cypher_queries", {
  skip_on_cran()
  expect_error(svc$list_open_cypher_queries(), NA)
})
