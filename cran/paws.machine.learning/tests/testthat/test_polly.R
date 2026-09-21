svc <- paws.machine.learning::polly()

test_that("describe_voices", {
  skip_on_cran()
  expect_error(svc$describe_voices(), NA)
})

test_that("list_lexicons", {
  skip_on_cran()
  expect_error(svc$list_lexicons(), NA)
})

test_that("list_speech_synthesis_tasks", {
  skip_on_cran()
  expect_error(svc$list_speech_synthesis_tasks(), NA)
})

test_that("list_speech_synthesis_tasks", {
  skip_on_cran()
  expect_error(svc$list_speech_synthesis_tasks(MaxResults = 20), NA)
})
