svc <- paws.analytics::ivs()

test_that("list_ad_configurations", {
  skip_on_cran()
  expect_error(svc$list_ad_configurations(), NA)
})

test_that("list_channels", {
  skip_on_cran()
  expect_error(svc$list_channels(), NA)
})

test_that("list_playback_key_pairs", {
  skip_on_cran()
  expect_error(svc$list_playback_key_pairs(), NA)
})

test_that("list_playback_restriction_policies", {
  skip_on_cran()
  expect_error(svc$list_playback_restriction_policies(), NA)
})

test_that("list_recording_configurations", {
  skip_on_cran()
  expect_error(svc$list_recording_configurations(), NA)
})

test_that("list_streams", {
  skip_on_cran()
  expect_error(svc$list_streams(), NA)
})
