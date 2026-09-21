svc <- paws.machine.learning::frauddetector()

test_that("describe_model_versions", {
  skip_on_cran()
  expect_error(svc$describe_model_versions(), NA)
})

test_that("list_event_predictions", {
  skip_on_cran()
  expect_error(svc$list_event_predictions(), NA)
})
