svc <- paws.machine.learning::translate()

test_that("list_languages", {
  skip_on_cran()
  expect_error(svc$list_languages(), NA)
})

test_that("list_languages", {
  skip_on_cran()
  expect_error(svc$list_languages(MaxResults = 20), NA)
})

test_that("list_parallel_data", {
  skip_on_cran()
  expect_error(svc$list_parallel_data(), NA)
})

test_that("list_parallel_data", {
  skip_on_cran()
  expect_error(svc$list_parallel_data(MaxResults = 20), NA)
})

test_that("list_terminologies", {
  skip_on_cran()
  expect_error(svc$list_terminologies(), NA)
})

test_that("list_terminologies", {
  skip_on_cran()
  expect_error(svc$list_terminologies(MaxResults = 20), NA)
})

test_that("list_text_translation_jobs", {
  skip_on_cran()
  expect_error(svc$list_text_translation_jobs(), NA)
})

test_that("list_text_translation_jobs", {
  skip_on_cran()
  expect_error(svc$list_text_translation_jobs(MaxResults = 20), NA)
})
