svc <- paws.networking::route53profiles()

test_that("list_profile_associations", {
  skip_on_cran()
  expect_error(svc$list_profile_associations(), NA)
})

test_that("list_profile_associations", {
  skip_on_cran()
  expect_error(svc$list_profile_associations(MaxResults = 20), NA)
})

test_that("list_profiles", {
  skip_on_cran()
  expect_error(svc$list_profiles(), NA)
})

test_that("list_profiles", {
  skip_on_cran()
  expect_error(svc$list_profiles(MaxResults = 20), NA)
})
