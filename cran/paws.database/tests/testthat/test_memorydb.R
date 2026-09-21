svc <- paws.database::memorydb()

test_that("describe_ac_ls", {
  skip_on_cran()
  expect_error(svc$describe_ac_ls(), NA)
})

test_that("describe_ac_ls", {
  skip_on_cran()
  expect_error(svc$describe_ac_ls(MaxResults = 20), NA)
})

test_that("describe_clusters", {
  skip_on_cran()
  expect_error(svc$describe_clusters(), NA)
})

test_that("describe_clusters", {
  skip_on_cran()
  expect_error(svc$describe_clusters(MaxResults = 20), NA)
})

test_that("describe_engine_versions", {
  skip_on_cran()
  expect_error(svc$describe_engine_versions(), NA)
})

test_that("describe_engine_versions", {
  skip_on_cran()
  expect_error(svc$describe_engine_versions(MaxResults = 20), NA)
})

test_that("describe_events", {
  skip_on_cran()
  expect_error(svc$describe_events(), NA)
})

test_that("describe_events", {
  skip_on_cran()
  expect_error(svc$describe_events(MaxResults = 20), NA)
})

test_that("describe_multi_region_clusters", {
  skip_on_cran()
  expect_error(svc$describe_multi_region_clusters(), NA)
})

test_that("describe_multi_region_clusters", {
  skip_on_cran()
  expect_error(svc$describe_multi_region_clusters(MaxResults = 20), NA)
})

test_that("describe_multi_region_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_multi_region_parameter_groups(), NA)
})

test_that("describe_multi_region_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_multi_region_parameter_groups(MaxResults = 20), NA)
})

test_that("describe_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_parameter_groups(), NA)
})

test_that("describe_parameter_groups", {
  skip_on_cran()
  expect_error(svc$describe_parameter_groups(MaxResults = 20), NA)
})

test_that("describe_reserved_nodes", {
  skip_on_cran()
  expect_error(svc$describe_reserved_nodes(), NA)
})

test_that("describe_reserved_nodes", {
  skip_on_cran()
  expect_error(svc$describe_reserved_nodes(MaxResults = 20), NA)
})

test_that("describe_reserved_nodes_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_nodes_offerings(), NA)
})

test_that("describe_reserved_nodes_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_nodes_offerings(MaxResults = 20), NA)
})

test_that("describe_service_updates", {
  skip_on_cran()
  expect_error(svc$describe_service_updates(), NA)
})

test_that("describe_service_updates", {
  skip_on_cran()
  expect_error(svc$describe_service_updates(MaxResults = 20), NA)
})

test_that("describe_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_snapshots(), NA)
})

test_that("describe_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_snapshots(MaxResults = 20), NA)
})

test_that("describe_subnet_groups", {
  skip_on_cran()
  expect_error(svc$describe_subnet_groups(), NA)
})

test_that("describe_subnet_groups", {
  skip_on_cran()
  expect_error(svc$describe_subnet_groups(MaxResults = 20), NA)
})

test_that("describe_users", {
  skip_on_cran()
  expect_error(svc$describe_users(), NA)
})

test_that("describe_users", {
  skip_on_cran()
  expect_error(svc$describe_users(MaxResults = 20), NA)
})
