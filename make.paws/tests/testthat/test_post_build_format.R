test_that("apply_gsub_patterns replaces patterns correctly", {
  content <- c(
    "#' This is a test",
    "#' formed *within*",
    "#' normal text"
  )

  patterns_before <- c("\\*within\\*", "test")
  patterns_after <- c("\\\\emph\\{within\\}", "example")

  result <- apply_gsub_patterns(content, patterns_before, patterns_after)

  expect_equal(result[1], "#' This is a example")
  expect_equal(result[2], "#' formed \\emph{within}")
  expect_equal(result[3], "#' normal text")
})

test_that("apply_gsub_patterns handles no matches", {
  content <- c("#' This is a test", "#' Another line")
  patterns_before <- c("notfound")
  patterns_after <- c("replacement")

  result <- apply_gsub_patterns(content, patterns_before, patterns_after)

  expect_equal(result, content)
})

test_that("unescape_latex removes escaped characters", {
  content <- c(
    "#' Test \\# hash",
    "#' Test \\$ dollar",
    "#' Test \\_ underscore",
    "#' Normal text"
  )

  result <- unescape_latex(content)

  expect_equal(result[1], "#' Test # hash")
  expect_equal(result[2], "#' Test $ dollar")
  expect_equal(result[3], "#' Test _ underscore")
  expect_equal(result[4], "#' Normal text")
})

test_that("unescape_latex handles custom characters", {
  content <- c("#' Test \\@ at sign")

  result <- unescape_latex(content, special_characters = c("@"))

  expect_equal(result[1], "#' Test @ at sign")
})

test_that("fix_html_span returns early when no span tags", {
  content <- c("#' Normal text", "#' Another line")

  result <- fix_html_span(content, is_rd = FALSE)

  expect_equal(result, content)
})

test_that("fix_html_span fixes R file span tags", {
  content <- c(
    "#' <span href=\"https://example.com\">",
    "#' link text</span>"
  )

  result <- fix_html_span(content, is_rd = FALSE)

  expect_true(any(grepl("\\\\href\\{https://example.com\\}\\{", result)))
  expect_false(any(grepl("<span", result)))
})

test_that("fix_html_span fixes Rd file span tags", {
  # Create content that matches how R handles escaped strings in actual .Rd files
  content <- c(
    "\\\\if{html}\\\\out{<span href=\"https://example.com\">",
    "link text</span>}}"
  )

  result <- fix_html_span(content, is_rd = TRUE)

  expect_true(any(grepl("\\\\href\\{https://example.com\\}", result)))
  expect_false(any(grepl("<span", result)))
  # The function removes \\if{html}\\out{ (the actual escaped version in .Rd files)
  expect_false(any(grepl("\\\\if\\{html\\}\\\\out\\{", result, fixed = TRUE)))
})

test_that("process_file_single_pass returns FALSE when no changes", {
  temp_file <- tempfile(fileext = ".R")
  writeLines(c("#' Normal text", "#' Another line"), temp_file)
  on.exit(unlink(temp_file))

  result <- process_file_single_pass(
    temp_file,
    patterns_before = c("notfound"),
    patterns_after = c("replacement"),
    is_rd = FALSE
  )

  expect_false(result)
  expect_equal(readLines(temp_file), c("#' Normal text", "#' Another line"))
})

test_that("process_file_single_pass returns TRUE and writes when changed", {
  temp_file <- tempfile(fileext = ".R")
  writeLines(c("#' Test \\# hash", "#' Test text"), temp_file)
  on.exit(unlink(temp_file))

  result <- process_file_single_pass(
    temp_file,
    patterns_before = c("text"),
    patterns_after = c("example"),
    is_rd = FALSE
  )

  expect_true(result)
  modified <- readLines(temp_file, warn = FALSE)
  expect_equal(modified[1], "#' Test # hash")  # unescape_latex applied
  expect_equal(modified[2], "#' Test example")  # gsub applied
})

test_that("process_file_single_pass applies all transformations", {
  temp_file <- tempfile(fileext = ".R")
  writeLines(
    c(
      "#' Test \\# escaped",
      "#' Pattern to replace",
      "#' <span href=\"http://example.com\">link</span>"
    ),
    temp_file
  )
  on.exit(unlink(temp_file))

  result <- process_file_single_pass(
    temp_file,
    patterns_before = c("replace"),
    patterns_after = c("changed"),
    is_rd = FALSE
  )

  expect_true(result)
  modified <- readLines(temp_file, warn = FALSE)

  # Check all transformations applied
  expect_equal(modified[1], "#' Test # escaped")  # LaTeX unescaped
  expect_true(grepl("changed", modified[2]))  # Pattern replaced
  expect_true(any(grepl("\\\\href", modified)))  # Span fixed
})

test_that("paws_post_build_format processes files correctly", {
  # Create temporary directory structure
  temp_root <- tempfile()
  dir.create(file.path(temp_root, "paws", "R"), recursive = TRUE)
  dir.create(file.path(temp_root, "cran", "paws.test", "R"), recursive = TRUE)
  dir.create(file.path(temp_root, "cran", "paws.test", "man"), recursive = TRUE)
  on.exit(unlink(temp_root, recursive = TRUE))

  # Create test files
  r_file <- file.path(temp_root, "paws", "R", "test.R")
  writeLines(c("#' Test \\# hash", "#' replace me"), r_file)

  cran_r_file <- file.path(temp_root, "cran", "paws.test", "R", "service.R")
  writeLines(c("#' Another \\$ test"), cran_r_file)

  rd_file <- file.path(temp_root, "cran", "paws.test", "man", "test.Rd")
  writeLines(c("Test \\_ underscore"), rd_file)

  # Mock log_info to avoid dependency
  mock_log_info <- function(...) invisible(NULL)
  mockery::stub(paws_post_build_format, "utils::getFromNamespace", function(...) mock_log_info)

  # Run function
  paws_post_build_format(
    root = temp_root,
    patterns_before = c("replace me"),
    patterns_after = c("replaced")
  )

  # Verify files were modified
  r_content <- readLines(r_file, warn = FALSE)
  expect_equal(r_content[1], "#' Test # hash")
  expect_equal(r_content[2], "#' replaced")

  cran_r_content <- readLines(cran_r_file, warn = FALSE)
  expect_equal(cran_r_content[1], "#' Another $ test")

  rd_content <- readLines(rd_file, warn = FALSE)
  expect_equal(rd_content[1], "Test _ underscore")
})

test_that("paws_post_build_format handles empty patterns", {
  temp_root <- tempfile()
  dir.create(file.path(temp_root, "paws", "R"), recursive = TRUE)
  dir.create(file.path(temp_root, "cran"), recursive = TRUE)
  on.exit(unlink(temp_root, recursive = TRUE))

  r_file <- file.path(temp_root, "paws", "R", "test.R")
  writeLines(c("#' Test content"), r_file)

  mock_log_info <- function(...) invisible(NULL)
  mockery::stub(paws_post_build_format, "utils::getFromNamespace", function(...) mock_log_info)

  # Should not error with empty patterns
  expect_silent(
    paws_post_build_format(
      root = temp_root,
      patterns_before = character(0),
      patterns_after = character(0)
    )
  )
})

test_that("paws_post_build_format reports modified file counts", {
  temp_root <- tempfile()
  dir.create(file.path(temp_root, "paws", "R"), recursive = TRUE)
  dir.create(file.path(temp_root, "cran"), recursive = TRUE)
  on.exit(unlink(temp_root, recursive = TRUE))

  # Create 2 files that will be modified
  r_file1 <- file.path(temp_root, "paws", "R", "test1.R")
  writeLines(c("#' pattern1"), r_file1)

  r_file2 <- file.path(temp_root, "paws", "R", "test2.R")
  writeLines(c("#' pattern2"), r_file2)

  # Create 1 file that won't be modified
  r_file3 <- file.path(temp_root, "paws", "R", "test3.R")
  writeLines(c("#' no match"), r_file3)

  log_calls <- list()
  mock_log_info <- function(...) {
    log_calls <<- c(log_calls, list(list(...)))
    invisible(NULL)
  }
  mockery::stub(paws_post_build_format, "utils::getFromNamespace", function(...) mock_log_info)

  paws_post_build_format(
    root = temp_root,
    patterns_before = c("pattern1", "pattern2"),
    patterns_after = c("replaced1", "replaced2")
  )

  # Check that log_info was called with file counts
  expect_true(length(log_calls) >= 4)  # Processing + Modified messages for R and Rd files
})
