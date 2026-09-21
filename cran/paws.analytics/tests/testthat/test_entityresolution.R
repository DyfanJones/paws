svc <- paws.analytics::entityresolution()

test_that("list_id_mapping_workflows", {
  skip_on_cran()
  expect_error(svc$list_id_mapping_workflows(), NA)
})

test_that("list_id_namespaces", {
  skip_on_cran()
  expect_error(svc$list_id_namespaces(), NA)
})

test_that("list_matching_workflows", {
  skip_on_cran()
  expect_error(svc$list_matching_workflows(), NA)
})

test_that("list_provider_services", {
  skip_on_cran()
  expect_error(svc$list_provider_services(), NA)
})

test_that("list_schema_mappings", {
  skip_on_cran()
  expect_error(svc$list_schema_mappings(), NA)
})
