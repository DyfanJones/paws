svc <- paws.networking::appmesh()

test_that("list_meshes", {
  skip_on_cran()
  expect_error(svc$list_meshes(), NA)
})
