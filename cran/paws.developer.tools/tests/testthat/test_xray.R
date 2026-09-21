svc <- paws.developer.tools::xray()

test_that("list_resource_policies", {
  skip_on_cran()
  expect_error(svc$list_resource_policies(), NA)
})
