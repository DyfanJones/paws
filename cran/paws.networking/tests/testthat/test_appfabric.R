svc <- paws.networking::appfabric()

test_that("list_app_bundles", {
  skip_on_cran()
  expect_error(svc$list_app_bundles(), NA)
})
