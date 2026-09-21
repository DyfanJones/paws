svc <- paws.analytics::datapipeline()

test_that("list_pipelines", {
  skip_on_cran()
  expect_error(svc$list_pipelines(), NA)
})
