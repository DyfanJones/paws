svc <- paws.networking::route53()

test_that("list_cidr_collections", {
  skip_on_cran()
  expect_error(svc$list_cidr_collections(), NA)
})

test_that("list_cidr_collections", {
  skip_on_cran()
  expect_error(svc$list_cidr_collections(MaxResults = 20), NA)
})

test_that("list_geo_locations", {
  skip_on_cran()
  expect_error(svc$list_geo_locations(), NA)
})

test_that("list_health_checks", {
  skip_on_cran()
  expect_error(svc$list_health_checks(), NA)
})

test_that("list_hosted_zones", {
  skip_on_cran()
  expect_error(svc$list_hosted_zones(), NA)
})

test_that("list_hosted_zones_by_name", {
  skip_on_cran()
  expect_error(svc$list_hosted_zones_by_name(), NA)
})

test_that("list_query_logging_configs", {
  skip_on_cran()
  expect_error(svc$list_query_logging_configs(), NA)
})

test_that("list_query_logging_configs", {
  skip_on_cran()
  expect_error(svc$list_query_logging_configs(MaxResults = 20), NA)
})

test_that("list_reusable_delegation_sets", {
  skip_on_cran()
  expect_error(svc$list_reusable_delegation_sets(), NA)
})

test_that("list_traffic_policies", {
  skip_on_cran()
  expect_error(svc$list_traffic_policies(), NA)
})

test_that("list_traffic_policy_instances", {
  skip_on_cran()
  expect_error(svc$list_traffic_policy_instances(), NA)
})
