svc <- paws.database::docdb()

test_that("describe_certificates", {
  skip_on_cran()
  expect_error(svc$describe_certificates(), NA)
})

test_that("describe_db_cluster_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_db_cluster_parameter_groups(), NA)
})

test_that("describe_db_cluster_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_db_cluster_snapshots(), NA)
})

test_that("describe_db_clusters", {
  skip_on_cran()
  expect_error(svc$describe_db_clusters(), NA)
})

test_that("describe_db_engine_versions", {
  skip_on_cran()
  expect_error(svc$describe_db_engine_versions(), NA)
})

test_that("describe_db_instances", {
  skip_on_cran()
  expect_error(svc$describe_db_instances(), NA)
})

test_that("describe_db_subnet_groups", {
  skip_on_cran()
  expect_error(svc$describe_db_subnet_groups(), NA)
})

test_that("describe_event_categories", {
  skip_on_cran()
  expect_error(svc$describe_event_categories(), NA)
})

test_that("describe_event_subscriptions", {
  skip_on_cran()
  expect_error(svc$describe_event_subscriptions(), NA)
})

test_that("describe_events", {
  skip_on_cran()
  expect_error(svc$describe_events(), NA)
})

test_that("describe_global_clusters", {
  skip_on_cran()
  expect_error(svc$describe_global_clusters(), NA)
})

test_that("describe_pending_maintenance_actions", {
  skip_on_cran()
  expect_error(svc$describe_pending_maintenance_actions(), NA)
})
