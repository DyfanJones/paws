svc <- paws.analytics::emr()

test_that("describe_release_label", {
  skip_on_cran()
  expect_error(svc$describe_release_label(), NA)
})

test_that("describe_release_label", {
  skip_on_cran()
  expect_error(svc$describe_release_label(MaxResults = 20), NA)
})

test_that("list_clusters", {
  skip_on_cran()
  expect_error(svc$list_clusters(), NA)
})

test_that("list_notebook_executions", {
  skip_on_cran()
  expect_error(svc$list_notebook_executions(), NA)
})

test_that("list_release_labels", {
  skip_on_cran()
  expect_error(svc$list_release_labels(), NA)
})

test_that("list_release_labels", {
  skip_on_cran()
  expect_error(svc$list_release_labels(MaxResults = 20), NA)
})

test_that("list_security_configurations", {
  skip_on_cran()
  expect_error(svc$list_security_configurations(), NA)
})

test_that("list_studio_session_mappings", {
  skip_on_cran()
  expect_error(svc$list_studio_session_mappings(), NA)
})

test_that("list_studios", {
  skip_on_cran()
  expect_error(svc$list_studios(), NA)
})
