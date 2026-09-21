svc <- paws.analytics::quicksight()

test_that("list_approval_policies", {
  skip_on_cran()
  expect_error(svc$list_approval_policies(), NA)
})

test_that("list_approval_policies", {
  skip_on_cran()
  expect_error(svc$list_approval_policies(MaxResults = 20), NA)
})
