svc <- paws.developer.tools::codeguruprofiler()

test_that("list_profiling_groups", {
  skip_on_cran()
  expect_error(svc$list_profiling_groups(), NA)
})
