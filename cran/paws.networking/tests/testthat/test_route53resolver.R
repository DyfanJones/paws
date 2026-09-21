svc <- paws.networking::route53resolver()

test_that("list_firewall_configs", {
  skip_on_cran()
  expect_error(svc$list_firewall_configs(), NA)
})

test_that("list_firewall_configs", {
  skip_on_cran()
  expect_error(svc$list_firewall_configs(MaxResults = 20), NA)
})

test_that("list_firewall_domain_lists", {
  skip_on_cran()
  expect_error(svc$list_firewall_domain_lists(), NA)
})

test_that("list_firewall_domain_lists", {
  skip_on_cran()
  expect_error(svc$list_firewall_domain_lists(MaxResults = 20), NA)
})

test_that("list_firewall_rule_group_associations", {
  skip_on_cran()
  expect_error(svc$list_firewall_rule_group_associations(), NA)
})

test_that("list_firewall_rule_group_associations", {
  skip_on_cran()
  expect_error(svc$list_firewall_rule_group_associations(MaxResults = 20), NA)
})

test_that("list_firewall_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_firewall_rule_groups(), NA)
})

test_that("list_firewall_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_firewall_rule_groups(MaxResults = 20), NA)
})

test_that("list_firewall_rule_types", {
  skip_on_cran()
  expect_error(svc$list_firewall_rule_types(), NA)
})

test_that("list_firewall_rule_types", {
  skip_on_cran()
  expect_error(svc$list_firewall_rule_types(MaxResults = 20), NA)
})

test_that("list_outpost_resolvers", {
  skip_on_cran()
  expect_error(svc$list_outpost_resolvers(), NA)
})

test_that("list_outpost_resolvers", {
  skip_on_cran()
  expect_error(svc$list_outpost_resolvers(MaxResults = 20), NA)
})

test_that("list_resolver_configs", {
  skip_on_cran()
  expect_error(svc$list_resolver_configs(), NA)
})

test_that("list_resolver_configs", {
  skip_on_cran()
  expect_error(svc$list_resolver_configs(MaxResults = 20), NA)
})

test_that("list_resolver_dnssec_configs", {
  skip_on_cran()
  expect_error(svc$list_resolver_dnssec_configs(), NA)
})

test_that("list_resolver_dnssec_configs", {
  skip_on_cran()
  expect_error(svc$list_resolver_dnssec_configs(MaxResults = 20), NA)
})

test_that("list_resolver_endpoints", {
  skip_on_cran()
  expect_error(svc$list_resolver_endpoints(), NA)
})

test_that("list_resolver_endpoints", {
  skip_on_cran()
  expect_error(svc$list_resolver_endpoints(MaxResults = 20), NA)
})

test_that("list_resolver_query_log_config_associations", {
  skip_on_cran()
  expect_error(svc$list_resolver_query_log_config_associations(), NA)
})

test_that("list_resolver_query_log_config_associations", {
  skip_on_cran()
  expect_error(svc$list_resolver_query_log_config_associations(MaxResults = 20), NA)
})

test_that("list_resolver_query_log_configs", {
  skip_on_cran()
  expect_error(svc$list_resolver_query_log_configs(), NA)
})

test_that("list_resolver_query_log_configs", {
  skip_on_cran()
  expect_error(svc$list_resolver_query_log_configs(MaxResults = 20), NA)
})

test_that("list_resolver_rule_associations", {
  skip_on_cran()
  expect_error(svc$list_resolver_rule_associations(), NA)
})

test_that("list_resolver_rule_associations", {
  skip_on_cran()
  expect_error(svc$list_resolver_rule_associations(MaxResults = 20), NA)
})

test_that("list_resolver_rules", {
  skip_on_cran()
  expect_error(svc$list_resolver_rules(), NA)
})

test_that("list_resolver_rules", {
  skip_on_cran()
  expect_error(svc$list_resolver_rules(MaxResults = 20), NA)
})
