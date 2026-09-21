svc <- paws.developer.tools::drs()

test_that("describe_jobs", {
  skip_on_cran()
  expect_error(svc$describe_jobs(), NA)
})

test_that("describe_launch_configuration_templates", {
  skip_on_cran()
  expect_error(svc$describe_launch_configuration_templates(), NA)
})

test_that("describe_recovery_instances", {
  skip_on_cran()
  expect_error(svc$describe_recovery_instances(), NA)
})

test_that("describe_replication_configuration_templates", {
  skip_on_cran()
  expect_error(svc$describe_replication_configuration_templates(), NA)
})

test_that("describe_source_networks", {
  skip_on_cran()
  expect_error(svc$describe_source_networks(), NA)
})

test_that("describe_source_servers", {
  skip_on_cran()
  expect_error(svc$describe_source_servers(), NA)
})

test_that("list_recovery_plan_executions", {
  skip_on_cran()
  expect_error(svc$list_recovery_plan_executions(), NA)
})

test_that("list_recovery_plans", {
  skip_on_cran()
  expect_error(svc$list_recovery_plans(), NA)
})

test_that("list_staging_accounts", {
  skip_on_cran()
  expect_error(svc$list_staging_accounts(), NA)
})
