svc <- paws.end.user.computing::workmail()

test_that("list_organizations", {
  skip_on_cran()
  expect_error(svc$list_organizations(), NA)
})

test_that("list_organizations", {
  skip_on_cran()
  expect_error(svc$list_organizations(MaxResults = 20), NA)
})
