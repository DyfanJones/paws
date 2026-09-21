svc <- paws.analytics::kendra()

test_that("list_indices", {
  skip_on_cran()
  expect_error(svc$list_indices(), NA)
})

test_that("list_indices", {
  skip_on_cran()
  expect_error(svc$list_indices(MaxResults = 20), NA)
})
