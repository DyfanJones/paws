svc <- paws.developer.tools::fis()

test_that("list_actions", {
  skip_on_cran()
  expect_error(svc$list_actions(), NA)
})

test_that("list_experiment_templates", {
  skip_on_cran()
  expect_error(svc$list_experiment_templates(), NA)
})

test_that("list_experiments", {
  skip_on_cran()
  expect_error(svc$list_experiments(), NA)
})

test_that("list_target_resource_types", {
  skip_on_cran()
  expect_error(svc$list_target_resource_types(), NA)
})
