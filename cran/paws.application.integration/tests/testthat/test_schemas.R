svc <- paws.application.integration::schemas()

test_that("list_discoverers", {
  skip_on_cran()
  expect_error(svc$list_discoverers(), NA)
})

test_that("list_registries", {
  skip_on_cran()
  expect_error(svc$list_registries(), NA)
})
