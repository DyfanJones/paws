svc <- paws.developer.tools::cloud9()

test_that("describe_environment_memberships", {
  skip_on_cran()
  expect_error(svc$describe_environment_memberships(), NA)
})

test_that("list_environments", {
  skip_on_cran()
  expect_error(svc$list_environments(), NA)
})
