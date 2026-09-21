svc <- paws.database::redshift()

test_that("describe_account_attributes", {
  skip_on_cran()
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_authentication_profiles", {
  skip_on_cran()
  expect_error(svc$describe_authentication_profiles(), NA)
})

test_that("describe_cluster_db_revisions", {
  skip_on_cran()
  expect_error(svc$describe_cluster_db_revisions(), NA)
})

test_that("describe_cluster_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_cluster_parameter_groups(), NA)
})

test_that("describe_cluster_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_cluster_snapshots(), NA)
})

test_that("describe_cluster_subnet_groups", {
  skip_on_cran()
  expect_error(svc$describe_cluster_subnet_groups(), NA)
})

test_that("describe_cluster_tracks", {
  skip_on_cran()
  expect_error(svc$describe_cluster_tracks(), NA)
})

test_that("describe_cluster_versions", {
  skip_on_cran()
  expect_error(svc$describe_cluster_versions(), NA)
})

test_that("describe_clusters", {
  skip_on_cran()
  expect_error(svc$describe_clusters(), NA)
})

test_that("describe_custom_domain_associations", {
  skip_on_cran()
  expect_error(svc$describe_custom_domain_associations(), NA)
})

test_that("describe_data_shares", {
  skip_on_cran()
  expect_error(svc$describe_data_shares(), NA)
})

test_that("describe_data_shares_for_consumer", {
  skip_on_cran()
  expect_error(svc$describe_data_shares_for_consumer(), NA)
})

test_that("describe_data_shares_for_producer", {
  skip_on_cran()
  expect_error(svc$describe_data_shares_for_producer(), NA)
})

test_that("describe_endpoint_access", {
  skip_on_cran()
  expect_error(svc$describe_endpoint_access(), NA)
})

test_that("describe_endpoint_authorization", {
  skip_on_cran()
  expect_error(svc$describe_endpoint_authorization(), NA)
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

test_that("describe_hsm_client_certificates", {
  skip_on_cran()
  expect_error(svc$describe_hsm_client_certificates(), NA)
})

test_that("describe_hsm_configurations", {
  skip_on_cran()
  expect_error(svc$describe_hsm_configurations(), NA)
})

test_that("describe_inbound_integrations", {
  skip_on_cran()
  expect_error(svc$describe_inbound_integrations(), NA)
})

test_that("describe_integrations", {
  skip_on_cran()
  expect_error(svc$describe_integrations(), NA)
})

test_that("describe_orderable_cluster_options", {
  skip_on_cran()
  expect_error(svc$describe_orderable_cluster_options(), NA)
})

test_that("describe_qev_2_idc_applications", {
  skip_on_cran()
  expect_error(svc$describe_qev_2_idc_applications(), NA)
})

test_that("describe_redshift_idc_applications", {
  skip_on_cran()
  expect_error(svc$describe_redshift_idc_applications(), NA)
})

test_that("describe_reserved_node_exchange_status", {
  skip_on_cran()
  expect_error(svc$describe_reserved_node_exchange_status(), NA)
})

test_that("describe_reserved_node_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_node_offerings(), NA)
})

test_that("describe_reserved_nodes", {
  skip_on_cran()
  expect_error(svc$describe_reserved_nodes(), NA)
})

test_that("describe_scheduled_actions", {
  skip_on_cran()
  expect_error(svc$describe_scheduled_actions(), NA)
})

test_that("describe_snapshot_copy_grants", {
  skip_on_cran()
  expect_error(svc$describe_snapshot_copy_grants(), NA)
})

test_that("describe_snapshot_schedules", {
  skip_on_cran()
  expect_error(svc$describe_snapshot_schedules(), NA)
})

test_that("describe_storage", {
  skip_on_cran()
  expect_error(svc$describe_storage(), NA)
})

test_that("describe_tags", {
  skip_on_cran()
  expect_error(svc$describe_tags(), NA)
})

test_that("describe_usage_limits", {
  skip_on_cran()
  expect_error(svc$describe_usage_limits(), NA)
})

test_that("list_recommendations", {
  skip_on_cran()
  expect_error(svc$list_recommendations(), NA)
})
