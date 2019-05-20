context("elasticsearchservice")

svc <- paws::elasticsearchservice()

test_that("describe_reserved_elasticsearch_instance_offerings", {
  expect_error(svc$describe_reserved_elasticsearch_instance_offerings(), NA)
})

test_that("describe_reserved_elasticsearch_instance_offerings", {
  expect_error(svc$describe_reserved_elasticsearch_instance_offerings(MaxResults = 20), NA)
})

test_that("describe_reserved_elasticsearch_instances", {
  expect_error(svc$describe_reserved_elasticsearch_instances(), NA)
})

test_that("describe_reserved_elasticsearch_instances", {
  expect_error(svc$describe_reserved_elasticsearch_instances(MaxResults = 20), NA)
})

test_that("list_domain_names", {
  expect_error(svc$list_domain_names(), NA)
})

test_that("list_elasticsearch_versions", {
  expect_error(svc$list_elasticsearch_versions(), NA)
})

test_that("list_elasticsearch_versions", {
  expect_error(svc$list_elasticsearch_versions(MaxResults = 20), NA)
})