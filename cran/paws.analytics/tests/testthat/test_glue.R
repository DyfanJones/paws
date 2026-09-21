svc <- paws.analytics::glue()

test_that("describe_inbound_integrations", {
  skip_on_cran()
  expect_error(svc$describe_inbound_integrations(), NA)
})

test_that("describe_integrations", {
  skip_on_cran()
  expect_error(svc$describe_integrations(), NA)
})

test_that("list_asset_types", {
  skip_on_cran()
  expect_error(svc$list_asset_types(), NA)
})

test_that("list_asset_types", {
  skip_on_cran()
  expect_error(svc$list_asset_types(MaxResults = 20), NA)
})

test_that("list_blueprints", {
  skip_on_cran()
  expect_error(svc$list_blueprints(), NA)
})

test_that("list_blueprints", {
  skip_on_cran()
  expect_error(svc$list_blueprints(MaxResults = 20), NA)
})

test_that("list_column_statistics_task_runs", {
  skip_on_cran()
  expect_error(svc$list_column_statistics_task_runs(), NA)
})

test_that("list_column_statistics_task_runs", {
  skip_on_cran()
  expect_error(svc$list_column_statistics_task_runs(MaxResults = 20), NA)
})

test_that("list_connection_types", {
  skip_on_cran()
  expect_error(svc$list_connection_types(), NA)
})

test_that("list_connection_types", {
  skip_on_cran()
  expect_error(svc$list_connection_types(MaxResults = 20), NA)
})

test_that("list_crawlers", {
  skip_on_cran()
  expect_error(svc$list_crawlers(), NA)
})

test_that("list_crawlers", {
  skip_on_cran()
  expect_error(svc$list_crawlers(MaxResults = 20), NA)
})

test_that("list_custom_entity_types", {
  skip_on_cran()
  expect_error(svc$list_custom_entity_types(), NA)
})

test_that("list_custom_entity_types", {
  skip_on_cran()
  expect_error(svc$list_custom_entity_types(MaxResults = 20), NA)
})

test_that("list_data_quality_results", {
  skip_on_cran()
  expect_error(svc$list_data_quality_results(), NA)
})

test_that("list_data_quality_results", {
  skip_on_cran()
  expect_error(svc$list_data_quality_results(MaxResults = 20), NA)
})

test_that("list_data_quality_rule_recommendation_runs", {
  skip_on_cran()
  expect_error(svc$list_data_quality_rule_recommendation_runs(), NA)
})

test_that("list_data_quality_rule_recommendation_runs", {
  skip_on_cran()
  expect_error(svc$list_data_quality_rule_recommendation_runs(MaxResults = 20), NA)
})

test_that("list_data_quality_ruleset_evaluation_runs", {
  skip_on_cran()
  expect_error(svc$list_data_quality_ruleset_evaluation_runs(), NA)
})

test_that("list_data_quality_ruleset_evaluation_runs", {
  skip_on_cran()
  expect_error(svc$list_data_quality_ruleset_evaluation_runs(MaxResults = 20), NA)
})

test_that("list_data_quality_rulesets", {
  skip_on_cran()
  expect_error(svc$list_data_quality_rulesets(), NA)
})

test_that("list_data_quality_rulesets", {
  skip_on_cran()
  expect_error(svc$list_data_quality_rulesets(MaxResults = 20), NA)
})

test_that("list_data_quality_statistic_annotations", {
  skip_on_cran()
  expect_error(svc$list_data_quality_statistic_annotations(), NA)
})

test_that("list_data_quality_statistic_annotations", {
  skip_on_cran()
  expect_error(svc$list_data_quality_statistic_annotations(MaxResults = 20), NA)
})

test_that("list_data_quality_statistics", {
  skip_on_cran()
  expect_error(svc$list_data_quality_statistics(), NA)
})

test_that("list_data_quality_statistics", {
  skip_on_cran()
  expect_error(svc$list_data_quality_statistics(MaxResults = 20), NA)
})

test_that("list_dev_endpoints", {
  skip_on_cran()
  expect_error(svc$list_dev_endpoints(), NA)
})

test_that("list_dev_endpoints", {
  skip_on_cran()
  expect_error(svc$list_dev_endpoints(MaxResults = 20), NA)
})

test_that("list_entities", {
  skip_on_cran()
  expect_error(svc$list_entities(), NA)
})

test_that("list_form_types", {
  skip_on_cran()
  expect_error(svc$list_form_types(), NA)
})

test_that("list_form_types", {
  skip_on_cran()
  expect_error(svc$list_form_types(MaxResults = 20), NA)
})

test_that("list_glossaries", {
  skip_on_cran()
  expect_error(svc$list_glossaries(), NA)
})

test_that("list_glossaries", {
  skip_on_cran()
  expect_error(svc$list_glossaries(MaxResults = 20), NA)
})

test_that("list_integration_resource_properties", {
  skip_on_cran()
  expect_error(svc$list_integration_resource_properties(), NA)
})

test_that("list_integration_table_properties", {
  skip_on_cran()
  expect_error(svc$list_integration_table_properties(), NA)
})

test_that("list_jobs", {
  skip_on_cran()
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  skip_on_cran()
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_ml_transforms", {
  skip_on_cran()
  expect_error(svc$list_ml_transforms(), NA)
})

test_that("list_ml_transforms", {
  skip_on_cran()
  expect_error(svc$list_ml_transforms(MaxResults = 20), NA)
})

test_that("list_registries", {
  skip_on_cran()
  expect_error(svc$list_registries(), NA)
})

test_that("list_registries", {
  skip_on_cran()
  expect_error(svc$list_registries(MaxResults = 20), NA)
})

test_that("list_schemas", {
  skip_on_cran()
  expect_error(svc$list_schemas(), NA)
})

test_that("list_schemas", {
  skip_on_cran()
  expect_error(svc$list_schemas(MaxResults = 20), NA)
})

test_that("list_sessions", {
  skip_on_cran()
  expect_error(svc$list_sessions(), NA)
})

test_that("list_sessions", {
  skip_on_cran()
  expect_error(svc$list_sessions(MaxResults = 20), NA)
})

test_that("list_triggers", {
  skip_on_cran()
  expect_error(svc$list_triggers(), NA)
})

test_that("list_triggers", {
  skip_on_cran()
  expect_error(svc$list_triggers(MaxResults = 20), NA)
})

test_that("list_usage_profiles", {
  skip_on_cran()
  expect_error(svc$list_usage_profiles(), NA)
})

test_that("list_usage_profiles", {
  skip_on_cran()
  expect_error(svc$list_usage_profiles(MaxResults = 20), NA)
})

test_that("list_workflows", {
  skip_on_cran()
  expect_error(svc$list_workflows(), NA)
})

test_that("list_workflows", {
  skip_on_cran()
  expect_error(svc$list_workflows(MaxResults = 20), NA)
})
