svc <- paws.end.user.computing::appstream()

test_that("describe_app_block_builder_app_block_associations", {
  skip_on_cran()
  expect_error(svc$describe_app_block_builder_app_block_associations(), NA)
})

test_that("describe_app_block_builder_app_block_associations", {
  skip_on_cran()
  expect_error(svc$describe_app_block_builder_app_block_associations(MaxResults = 20), NA)
})

test_that("describe_app_block_builders", {
  skip_on_cran()
  expect_error(svc$describe_app_block_builders(), NA)
})

test_that("describe_app_block_builders", {
  skip_on_cran()
  expect_error(svc$describe_app_block_builders(MaxResults = 20), NA)
})

test_that("describe_app_blocks", {
  skip_on_cran()
  expect_error(svc$describe_app_blocks(), NA)
})

test_that("describe_app_blocks", {
  skip_on_cran()
  expect_error(svc$describe_app_blocks(MaxResults = 20), NA)
})

test_that("describe_application_fleet_associations", {
  skip_on_cran()
  expect_error(svc$describe_application_fleet_associations(), NA)
})

test_that("describe_application_fleet_associations", {
  skip_on_cran()
  expect_error(svc$describe_application_fleet_associations(MaxResults = 20), NA)
})

test_that("describe_applications", {
  skip_on_cran()
  expect_error(svc$describe_applications(), NA)
})

test_that("describe_applications", {
  skip_on_cran()
  expect_error(svc$describe_applications(MaxResults = 20), NA)
})

test_that("describe_directory_configs", {
  skip_on_cran()
  expect_error(svc$describe_directory_configs(), NA)
})

test_that("describe_directory_configs", {
  skip_on_cran()
  expect_error(svc$describe_directory_configs(MaxResults = 20), NA)
})

test_that("describe_fleets", {
  skip_on_cran()
  expect_error(svc$describe_fleets(), NA)
})

test_that("describe_image_builders", {
  skip_on_cran()
  expect_error(svc$describe_image_builders(), NA)
})

test_that("describe_image_builders", {
  skip_on_cran()
  expect_error(svc$describe_image_builders(MaxResults = 20), NA)
})

test_that("describe_images", {
  skip_on_cran()
  expect_error(svc$describe_images(), NA)
})

test_that("describe_images", {
  skip_on_cran()
  expect_error(svc$describe_images(MaxResults = 20), NA)
})

test_that("describe_stacks", {
  skip_on_cran()
  expect_error(svc$describe_stacks(), NA)
})

test_that("describe_usage_report_subscriptions", {
  skip_on_cran()
  expect_error(svc$describe_usage_report_subscriptions(), NA)
})

test_that("describe_usage_report_subscriptions", {
  skip_on_cran()
  expect_error(svc$describe_usage_report_subscriptions(MaxResults = 20), NA)
})

test_that("list_export_image_tasks", {
  skip_on_cran()
  expect_error(svc$list_export_image_tasks(), NA)
})

test_that("list_export_image_tasks", {
  skip_on_cran()
  expect_error(svc$list_export_image_tasks(MaxResults = 20), NA)
})
