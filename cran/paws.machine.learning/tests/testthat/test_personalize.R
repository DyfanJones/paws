svc <- paws.machine.learning::personalize()

test_that("list_batch_inference_jobs", {
  skip_on_cran()
  expect_error(svc$list_batch_inference_jobs(), NA)
})

test_that("list_batch_segment_jobs", {
  skip_on_cran()
  expect_error(svc$list_batch_segment_jobs(), NA)
})

test_that("list_campaigns", {
  skip_on_cran()
  expect_error(svc$list_campaigns(), NA)
})

test_that("list_data_deletion_jobs", {
  skip_on_cran()
  expect_error(svc$list_data_deletion_jobs(), NA)
})

test_that("list_dataset_export_jobs", {
  skip_on_cran()
  expect_error(svc$list_dataset_export_jobs(), NA)
})

test_that("list_dataset_groups", {
  skip_on_cran()
  expect_error(svc$list_dataset_groups(), NA)
})

test_that("list_dataset_import_jobs", {
  skip_on_cran()
  expect_error(svc$list_dataset_import_jobs(), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(), NA)
})

test_that("list_event_trackers", {
  skip_on_cran()
  expect_error(svc$list_event_trackers(), NA)
})

test_that("list_filters", {
  skip_on_cran()
  expect_error(svc$list_filters(), NA)
})

test_that("list_metric_attribution_metrics", {
  skip_on_cran()
  expect_error(svc$list_metric_attribution_metrics(), NA)
})

test_that("list_metric_attributions", {
  skip_on_cran()
  expect_error(svc$list_metric_attributions(), NA)
})

test_that("list_recipes", {
  skip_on_cran()
  expect_error(svc$list_recipes(), NA)
})

test_that("list_recommenders", {
  skip_on_cran()
  expect_error(svc$list_recommenders(), NA)
})

test_that("list_schemas", {
  skip_on_cran()
  expect_error(svc$list_schemas(), NA)
})

test_that("list_solution_versions", {
  skip_on_cran()
  expect_error(svc$list_solution_versions(), NA)
})

test_that("list_solutions", {
  skip_on_cran()
  expect_error(svc$list_solutions(), NA)
})
