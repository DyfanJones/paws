svc <- paws.database::rds()

test_that("describe_account_attributes", {
  skip_on_cran()
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_blue_green_deployments", {
  skip_on_cran()
  expect_error(svc$describe_blue_green_deployments(), NA)
})

test_that("describe_certificates", {
  skip_on_cran()
  expect_error(svc$describe_certificates(), NA)
})

test_that("describe_db_cluster_automated_backups", {
  skip_on_cran()
  expect_error(svc$describe_db_cluster_automated_backups(), NA)
})

test_that("describe_db_cluster_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_db_cluster_endpoints(), NA)
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

test_that("describe_db_instance_automated_backups", {
  skip_on_cran()
  expect_error(svc$describe_db_instance_automated_backups(), NA)
})

test_that("describe_db_instances", {
  skip_on_cran()
  expect_error(svc$describe_db_instances(), NA)
})

test_that("describe_db_major_engine_versions", {
  skip_on_cran()
  expect_error(svc$describe_db_major_engine_versions(), NA)
})

test_that("describe_db_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_db_parameter_groups(), NA)
})

test_that("describe_db_proxies", {
  skip_on_cran()
  expect_error(svc$describe_db_proxies(), NA)
})

test_that("describe_db_proxy_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_db_proxy_endpoints(), NA)
})

test_that("describe_db_recommendations", {
  skip_on_cran()
  expect_error(svc$describe_db_recommendations(), NA)
})

test_that("describe_db_security_groups", {
  skip_on_cran()
  expect_error(svc$describe_db_security_groups(), NA)
})

test_that("describe_db_shard_groups", {
  skip_on_cran()
  expect_error(svc$describe_db_shard_groups(), NA)
})

test_that("describe_db_snapshot_tenant_databases", {
  skip_on_cran()
  expect_error(svc$describe_db_snapshot_tenant_databases(), NA)
})

test_that("describe_db_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_db_snapshots(), NA)
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

test_that("describe_export_tasks", {
  skip_on_cran()
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_global_clusters", {
  skip_on_cran()
  expect_error(svc$describe_global_clusters(), NA)
})

test_that("describe_integrations", {
  skip_on_cran()
  expect_error(svc$describe_integrations(), NA)
})

test_that("describe_option_groups", {
  skip_on_cran()
  expect_error(svc$describe_option_groups(), NA)
})

test_that("describe_pending_maintenance_actions", {
  skip_on_cran()
  expect_error(svc$describe_pending_maintenance_actions(), NA)
})

test_that("describe_reserved_db_instances", {
  skip_on_cran()
  expect_error(svc$describe_reserved_db_instances(), NA)
})

test_that("describe_reserved_db_instances_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_db_instances_offerings(), NA)
})

test_that("describe_serverless_v2_platform_versions", {
  skip_on_cran()
  expect_error(svc$describe_serverless_v2_platform_versions(), NA)
})

test_that("describe_source_regions", {
  skip_on_cran()
  expect_error(svc$describe_source_regions(), NA)
})

test_that("describe_tenant_databases", {
  skip_on_cran()
  expect_error(svc$describe_tenant_databases(), NA)
})
