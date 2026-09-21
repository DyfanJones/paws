svc <- paws.networking::cloudfront()

test_that("list_anycast_ip_lists", {
  skip_on_cran()
  expect_error(svc$list_anycast_ip_lists(), NA)
})

test_that("list_cache_policies", {
  skip_on_cran()
  expect_error(svc$list_cache_policies(), NA)
})

test_that("list_cloud_front_origin_access_identities", {
  skip_on_cran()
  expect_error(svc$list_cloud_front_origin_access_identities(), NA)
})

test_that("list_connection_functions", {
  skip_on_cran()
  expect_error(svc$list_connection_functions(), NA)
})

test_that("list_connection_groups", {
  skip_on_cran()
  expect_error(svc$list_connection_groups(), NA)
})

test_that("list_continuous_deployment_policies", {
  skip_on_cran()
  expect_error(svc$list_continuous_deployment_policies(), NA)
})

test_that("list_distribution_tenants", {
  skip_on_cran()
  expect_error(svc$list_distribution_tenants(), NA)
})

test_that("list_distribution_tenants_by_customization", {
  skip_on_cran()
  expect_error(svc$list_distribution_tenants_by_customization(), NA)
})

test_that("list_distributions", {
  skip_on_cran()
  expect_error(svc$list_distributions(), NA)
})

test_that("list_distributions_by_realtime_log_config", {
  skip_on_cran()
  expect_error(svc$list_distributions_by_realtime_log_config(), NA)
})

test_that("list_field_level_encryption_configs", {
  skip_on_cran()
  expect_error(svc$list_field_level_encryption_configs(), NA)
})

test_that("list_field_level_encryption_profiles", {
  skip_on_cran()
  expect_error(svc$list_field_level_encryption_profiles(), NA)
})

test_that("list_functions", {
  skip_on_cran()
  expect_error(svc$list_functions(), NA)
})

test_that("list_key_groups", {
  skip_on_cran()
  expect_error(svc$list_key_groups(), NA)
})

test_that("list_key_value_stores", {
  skip_on_cran()
  expect_error(svc$list_key_value_stores(), NA)
})

test_that("list_origin_access_controls", {
  skip_on_cran()
  expect_error(svc$list_origin_access_controls(), NA)
})

test_that("list_origin_request_policies", {
  skip_on_cran()
  expect_error(svc$list_origin_request_policies(), NA)
})

test_that("list_public_keys", {
  skip_on_cran()
  expect_error(svc$list_public_keys(), NA)
})

test_that("list_realtime_log_configs", {
  skip_on_cran()
  expect_error(svc$list_realtime_log_configs(), NA)
})

test_that("list_response_headers_policies", {
  skip_on_cran()
  expect_error(svc$list_response_headers_policies(), NA)
})

test_that("list_streaming_distributions", {
  skip_on_cran()
  expect_error(svc$list_streaming_distributions(), NA)
})

test_that("list_trust_stores", {
  skip_on_cran()
  expect_error(svc$list_trust_stores(), NA)
})

test_that("list_vpc_origins", {
  skip_on_cran()
  expect_error(svc$list_vpc_origins(), NA)
})
