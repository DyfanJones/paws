svc <- paws.database::keyspaces()

test_that("list_keyspaces", {
  skip_on_cran()
  expect_error(svc$list_keyspaces(), NA)
})
