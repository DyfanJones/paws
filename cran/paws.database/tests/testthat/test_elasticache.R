svc <- paws.database::elasticache()

test_that("describe_cache_clusters", {
  skip_on_cran()
  expect_error(svc$describe_cache_clusters(), NA)
})

test_that("describe_cache_engine_versions", {
  skip_on_cran()
  expect_error(svc$describe_cache_engine_versions(), NA)
})

test_that("describe_cache_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_cache_parameter_groups(), NA)
})

test_that("describe_cache_subnet_groups", {
  skip_on_cran()
  expect_error(svc$describe_cache_subnet_groups(), NA)
})

test_that("describe_events", {
  skip_on_cran()
  expect_error(svc$describe_events(), NA)
})

test_that("describe_global_replication_groups", {
  skip_on_cran()
  expect_error(svc$describe_global_replication_groups(), NA)
})

test_that("describe_replication_groups", {
  skip_on_cran()
  expect_error(svc$describe_replication_groups(), NA)
})

test_that("describe_reserved_cache_nodes", {
  skip_on_cran()
  expect_error(svc$describe_reserved_cache_nodes(), NA)
})

test_that("describe_reserved_cache_nodes_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_cache_nodes_offerings(), NA)
})

test_that("describe_serverless_cache_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_serverless_cache_snapshots(), NA)
})

test_that("describe_serverless_cache_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_serverless_cache_snapshots(MaxResults = 20), NA)
})

test_that("describe_serverless_caches", {
  skip_on_cran()
  expect_error(svc$describe_serverless_caches(), NA)
})

test_that("describe_serverless_caches", {
  skip_on_cran()
  expect_error(svc$describe_serverless_caches(MaxResults = 20), NA)
})

test_that("describe_service_updates", {
  skip_on_cran()
  expect_error(svc$describe_service_updates(), NA)
})

test_that("describe_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_snapshots(), NA)
})

test_that("describe_update_actions", {
  skip_on_cran()
  expect_error(svc$describe_update_actions(), NA)
})

test_that("describe_user_groups", {
  skip_on_cran()
  expect_error(svc$describe_user_groups(), NA)
})

test_that("describe_users", {
  skip_on_cran()
  expect_error(svc$describe_users(), NA)
})
