svc <- paws.database::lakeformation()

test_that("describe_lake_formation_identity_center_configuration", {
  skip_on_cran()
  expect_error(svc$describe_lake_formation_identity_center_configuration(), NA)
})

test_that("list_data_cells_filter", {
  skip_on_cran()
  expect_error(svc$list_data_cells_filter(), NA)
})

test_that("list_data_cells_filter", {
  skip_on_cran()
  expect_error(svc$list_data_cells_filter(MaxResults = 20), NA)
})

test_that("list_lf_tag_expressions", {
  skip_on_cran()
  expect_error(svc$list_lf_tag_expressions(), NA)
})

test_that("list_lf_tag_expressions", {
  skip_on_cran()
  expect_error(svc$list_lf_tag_expressions(MaxResults = 20), NA)
})

test_that("list_lf_tags", {
  skip_on_cran()
  expect_error(svc$list_lf_tags(), NA)
})

test_that("list_lf_tags", {
  skip_on_cran()
  expect_error(svc$list_lf_tags(MaxResults = 20), NA)
})

test_that("list_lake_formation_opt_ins", {
  skip_on_cran()
  expect_error(svc$list_lake_formation_opt_ins(), NA)
})

test_that("list_lake_formation_opt_ins", {
  skip_on_cran()
  expect_error(svc$list_lake_formation_opt_ins(MaxResults = 20), NA)
})

test_that("list_permissions", {
  skip_on_cran()
  expect_error(svc$list_permissions(), NA)
})

test_that("list_permissions", {
  skip_on_cran()
  expect_error(svc$list_permissions(MaxResults = 20), NA)
})

test_that("list_resources", {
  skip_on_cran()
  expect_error(svc$list_resources(), NA)
})

test_that("list_resources", {
  skip_on_cran()
  expect_error(svc$list_resources(MaxResults = 20), NA)
})

test_that("list_transactions", {
  skip_on_cran()
  expect_error(svc$list_transactions(), NA)
})

test_that("list_transactions", {
  skip_on_cran()
  expect_error(svc$list_transactions(MaxResults = 20), NA)
})
