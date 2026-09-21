svc <- paws.developer.tools::wellarchitected()

test_that("list_agent_profiles", {
  skip_on_cran()
  expect_error(svc$list_agent_profiles(), NA)
})

test_that("list_lenses", {
  skip_on_cran()
  expect_error(svc$list_lenses(), NA)
})

test_that("list_lenses", {
  skip_on_cran()
  expect_error(svc$list_lenses(MaxResults = 20), NA)
})

test_that("list_notifications", {
  skip_on_cran()
  expect_error(svc$list_notifications(), NA)
})

test_that("list_notifications", {
  skip_on_cran()
  expect_error(svc$list_notifications(MaxResults = 20), NA)
})

test_that("list_profile_notifications", {
  skip_on_cran()
  expect_error(svc$list_profile_notifications(), NA)
})

test_that("list_profile_notifications", {
  skip_on_cran()
  expect_error(svc$list_profile_notifications(MaxResults = 20), NA)
})

test_that("list_profiles", {
  skip_on_cran()
  expect_error(svc$list_profiles(), NA)
})

test_that("list_profiles", {
  skip_on_cran()
  expect_error(svc$list_profiles(MaxResults = 20), NA)
})

test_that("list_review_templates", {
  skip_on_cran()
  expect_error(svc$list_review_templates(), NA)
})

test_that("list_review_templates", {
  skip_on_cran()
  expect_error(svc$list_review_templates(MaxResults = 20), NA)
})

test_that("list_share_invitations", {
  skip_on_cran()
  expect_error(svc$list_share_invitations(), NA)
})

test_that("list_share_invitations", {
  skip_on_cran()
  expect_error(svc$list_share_invitations(MaxResults = 20), NA)
})

test_that("list_workloads", {
  skip_on_cran()
  expect_error(svc$list_workloads(), NA)
})

test_that("list_workloads", {
  skip_on_cran()
  expect_error(svc$list_workloads(MaxResults = 20), NA)
})
