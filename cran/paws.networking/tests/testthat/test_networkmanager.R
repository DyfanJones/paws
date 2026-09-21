svc <- paws.networking::networkmanager()

test_that("describe_global_networks", {
  skip_on_cran()
  expect_error(svc$describe_global_networks(), NA)
})

test_that("describe_global_networks", {
  skip_on_cran()
  expect_error(svc$describe_global_networks(MaxResults = 20), NA)
})

test_that("list_attachments", {
  skip_on_cran()
  expect_error(svc$list_attachments(), NA)
})

test_that("list_attachments", {
  skip_on_cran()
  expect_error(svc$list_attachments(MaxResults = 20), NA)
})

test_that("list_connect_peers", {
  skip_on_cran()
  expect_error(svc$list_connect_peers(), NA)
})

test_that("list_connect_peers", {
  skip_on_cran()
  expect_error(svc$list_connect_peers(MaxResults = 20), NA)
})

test_that("list_core_networks", {
  skip_on_cran()
  expect_error(svc$list_core_networks(), NA)
})

test_that("list_core_networks", {
  skip_on_cran()
  expect_error(svc$list_core_networks(MaxResults = 20), NA)
})

test_that("list_organization_service_access_status", {
  skip_on_cran()
  expect_error(svc$list_organization_service_access_status(), NA)
})

test_that("list_organization_service_access_status", {
  skip_on_cran()
  expect_error(svc$list_organization_service_access_status(MaxResults = 20), NA)
})

test_that("list_peerings", {
  skip_on_cran()
  expect_error(svc$list_peerings(), NA)
})

test_that("list_peerings", {
  skip_on_cran()
  expect_error(svc$list_peerings(MaxResults = 20), NA)
})
