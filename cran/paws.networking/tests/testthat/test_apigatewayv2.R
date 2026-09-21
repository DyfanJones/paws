svc <- paws.networking::apigatewayv2()

test_that("list_portal_products", {
  skip_on_cran()
  expect_error(svc$list_portal_products(), NA)
})

test_that("list_portal_products", {
  skip_on_cran()
  expect_error(svc$list_portal_products(MaxResults = 20), NA)
})

test_that("list_portals", {
  skip_on_cran()
  expect_error(svc$list_portals(), NA)
})

test_that("list_portals", {
  skip_on_cran()
  expect_error(svc$list_portals(MaxResults = 20), NA)
})
