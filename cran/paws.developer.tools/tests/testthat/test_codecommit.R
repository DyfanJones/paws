svc <- paws.developer.tools::codecommit()

test_that("list_approval_rule_templates", {
  skip_on_cran()
  expect_error(svc$list_approval_rule_templates(), NA)
})

test_that("list_repositories", {
  skip_on_cran()
  expect_error(svc$list_repositories(), NA)
})
