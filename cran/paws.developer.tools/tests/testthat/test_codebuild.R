svc <- paws.developer.tools::codebuild()

test_that("list_build_batches", {
  skip_on_cran()
  expect_error(svc$list_build_batches(), NA)
})

test_that("list_build_batches_for_project", {
  skip_on_cran()
  expect_error(svc$list_build_batches_for_project(), NA)
})

test_that("list_builds", {
  skip_on_cran()
  expect_error(svc$list_builds(), NA)
})

test_that("list_curated_environment_images", {
  skip_on_cran()
  expect_error(svc$list_curated_environment_images(), NA)
})

test_that("list_fleets", {
  skip_on_cran()
  expect_error(svc$list_fleets(), NA)
})

test_that("list_projects", {
  skip_on_cran()
  expect_error(svc$list_projects(), NA)
})

test_that("list_report_groups", {
  skip_on_cran()
  expect_error(svc$list_report_groups(), NA)
})

test_that("list_reports", {
  skip_on_cran()
  expect_error(svc$list_reports(), NA)
})

test_that("list_sandboxes", {
  skip_on_cran()
  expect_error(svc$list_sandboxes(), NA)
})

test_that("list_shared_projects", {
  skip_on_cran()
  expect_error(svc$list_shared_projects(), NA)
})

test_that("list_shared_report_groups", {
  skip_on_cran()
  expect_error(svc$list_shared_report_groups(), NA)
})

test_that("list_source_credentials", {
  skip_on_cran()
  expect_error(svc$list_source_credentials(), NA)
})
