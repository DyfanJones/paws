svc <- paws.application.integration::sns()

test_that("list_origination_numbers", {
  skip_on_cran()
  expect_error(svc$list_origination_numbers(), NA)
})

test_that("list_origination_numbers", {
  skip_on_cran()
  expect_error(svc$list_origination_numbers(MaxResults = 20), NA)
})

test_that("list_phone_numbers_opted_out", {
  skip_on_cran()
  expect_error(svc$list_phone_numbers_opted_out(), NA)
})

test_that("list_platform_applications", {
  skip_on_cran()
  expect_error(svc$list_platform_applications(), NA)
})

test_that("list_sms_sandbox_phone_numbers", {
  skip_on_cran()
  expect_error(svc$list_sms_sandbox_phone_numbers(), NA)
})

test_that("list_sms_sandbox_phone_numbers", {
  skip_on_cran()
  expect_error(svc$list_sms_sandbox_phone_numbers(MaxResults = 20), NA)
})

test_that("list_subscriptions", {
  skip_on_cran()
  expect_error(svc$list_subscriptions(), NA)
})

test_that("list_topics", {
  skip_on_cran()
  expect_error(svc$list_topics(), NA)
})
