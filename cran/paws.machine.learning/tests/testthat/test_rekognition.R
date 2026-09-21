svc <- paws.machine.learning::rekognition()

test_that("describe_projects", {
  skip_on_cran()
  expect_error(svc$describe_projects(), NA)
})

test_that("describe_projects", {
  skip_on_cran()
  expect_error(svc$describe_projects(MaxResults = 20), NA)
})

test_that("list_collections", {
  skip_on_cran()
  expect_error(svc$list_collections(), NA)
})

test_that("list_collections", {
  skip_on_cran()
  expect_error(svc$list_collections(MaxResults = 20), NA)
})

test_that("list_media_analysis_jobs", {
  skip_on_cran()
  expect_error(svc$list_media_analysis_jobs(), NA)
})

test_that("list_media_analysis_jobs", {
  skip_on_cran()
  expect_error(svc$list_media_analysis_jobs(MaxResults = 20), NA)
})

test_that("list_stream_processors", {
  skip_on_cran()
  expect_error(svc$list_stream_processors(), NA)
})

test_that("list_stream_processors", {
  skip_on_cran()
  expect_error(svc$list_stream_processors(MaxResults = 20), NA)
})
