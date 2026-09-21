svc <- paws.analytics::kafka()

test_that("list_clusters", {
  skip_on_cran()
  expect_error(svc$list_clusters(), NA)
})

test_that("list_clusters", {
  skip_on_cran()
  expect_error(svc$list_clusters(MaxResults = 20), NA)
})

test_that("list_clusters_v2", {
  skip_on_cran()
  expect_error(svc$list_clusters_v2(), NA)
})

test_that("list_clusters_v2", {
  skip_on_cran()
  expect_error(svc$list_clusters_v2(MaxResults = 20), NA)
})

test_that("list_configurations", {
  skip_on_cran()
  expect_error(svc$list_configurations(), NA)
})

test_that("list_configurations", {
  skip_on_cran()
  expect_error(svc$list_configurations(MaxResults = 20), NA)
})

test_that("list_kafka_versions", {
  skip_on_cran()
  expect_error(svc$list_kafka_versions(), NA)
})

test_that("list_kafka_versions", {
  skip_on_cran()
  expect_error(svc$list_kafka_versions(MaxResults = 20), NA)
})

test_that("list_replicators", {
  skip_on_cran()
  expect_error(svc$list_replicators(), NA)
})

test_that("list_replicators", {
  skip_on_cran()
  expect_error(svc$list_replicators(MaxResults = 20), NA)
})

test_that("list_vpc_connections", {
  skip_on_cran()
  expect_error(svc$list_vpc_connections(), NA)
})

test_that("list_vpc_connections", {
  skip_on_cran()
  expect_error(svc$list_vpc_connections(MaxResults = 20), NA)
})
