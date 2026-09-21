svc <- paws.machine.learning::lookoutequipment()

test_that("list_data_ingestion_jobs", {
  skip_on_cran()
  expect_error(svc$list_data_ingestion_jobs(), NA)
})

test_that("list_data_ingestion_jobs", {
  skip_on_cran()
  expect_error(svc$list_data_ingestion_jobs(MaxResults = 20), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(MaxResults = 20), NA)
})

test_that("list_inference_schedulers", {
  skip_on_cran()
  expect_error(svc$list_inference_schedulers(), NA)
})

test_that("list_inference_schedulers", {
  skip_on_cran()
  expect_error(svc$list_inference_schedulers(MaxResults = 20), NA)
})

test_that("list_label_groups", {
  skip_on_cran()
  expect_error(svc$list_label_groups(), NA)
})

test_that("list_label_groups", {
  skip_on_cran()
  expect_error(svc$list_label_groups(MaxResults = 20), NA)
})

test_that("list_models", {
  skip_on_cran()
  expect_error(svc$list_models(), NA)
})

test_that("list_models", {
  skip_on_cran()
  expect_error(svc$list_models(MaxResults = 20), NA)
})

test_that("list_retraining_schedulers", {
  skip_on_cran()
  expect_error(svc$list_retraining_schedulers(), NA)
})

test_that("list_retraining_schedulers", {
  skip_on_cran()
  expect_error(svc$list_retraining_schedulers(MaxResults = 20), NA)
})
