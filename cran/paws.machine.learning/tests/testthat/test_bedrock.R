svc <- paws.machine.learning::bedrock()

test_that("list_advanced_prompt_optimization_jobs", {
  skip_on_cran()
  expect_error(svc$list_advanced_prompt_optimization_jobs(), NA)
})

test_that("list_automated_reasoning_policies", {
  skip_on_cran()
  expect_error(svc$list_automated_reasoning_policies(), NA)
})

test_that("list_custom_model_deployments", {
  skip_on_cran()
  expect_error(svc$list_custom_model_deployments(), NA)
})

test_that("list_custom_models", {
  skip_on_cran()
  expect_error(svc$list_custom_models(), NA)
})

test_that("list_enforced_guardrails_configuration", {
  skip_on_cran()
  expect_error(svc$list_enforced_guardrails_configuration(), NA)
})

test_that("list_evaluation_jobs", {
  skip_on_cran()
  expect_error(svc$list_evaluation_jobs(), NA)
})

test_that("list_foundation_models", {
  skip_on_cran()
  expect_error(svc$list_foundation_models(), NA)
})

test_that("list_guardrails", {
  skip_on_cran()
  expect_error(svc$list_guardrails(), NA)
})

test_that("list_imported_models", {
  skip_on_cran()
  expect_error(svc$list_imported_models(), NA)
})

test_that("list_inference_profiles", {
  skip_on_cran()
  expect_error(svc$list_inference_profiles(), NA)
})

test_that("list_marketplace_model_endpoints", {
  skip_on_cran()
  expect_error(svc$list_marketplace_model_endpoints(), NA)
})

test_that("list_model_copy_jobs", {
  skip_on_cran()
  expect_error(svc$list_model_copy_jobs(), NA)
})

test_that("list_model_customization_jobs", {
  skip_on_cran()
  expect_error(svc$list_model_customization_jobs(), NA)
})

test_that("list_model_import_jobs", {
  skip_on_cran()
  expect_error(svc$list_model_import_jobs(), NA)
})

test_that("list_model_invocation_jobs", {
  skip_on_cran()
  expect_error(svc$list_model_invocation_jobs(), NA)
})

test_that("list_prompt_routers", {
  skip_on_cran()
  expect_error(svc$list_prompt_routers(), NA)
})

test_that("list_provisioned_model_throughputs", {
  skip_on_cran()
  expect_error(svc$list_provisioned_model_throughputs(), NA)
})
