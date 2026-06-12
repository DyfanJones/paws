# <!-- omit in toc --> Installation Guide

- [Overview](#overview)
- [Installation Options](#installation-options)
  - [Option 1: Install specific service packages](#option-1-install-specific-service-packages)
  - [Option 2: Install from R-Universe binaries](#option-2-install-from-r-universe-binaries)
  - [Option 3: Install from Paws pre-built binaries (Ubuntu)](#option-3-install-from-paws-pre-built-binaries-ubuntu)
  - [Option 4: Install from Posit Package Manager](#option-4-install-from-posit-package-manager)
  - [Option 5: Use r2u (Ubuntu)](#option-5-use-r2u-ubuntu)
  - [Option 6: Use renv with package sources](#option-6-use-renv-with-package-sources)
- [Standard CRAN Installation](#standard-cran-installation)
- [Related Issues](#related-issues)

---

# Overview

The `paws` package provides comprehensive access to AWS services through R. However, on Linux systems, the `paws.analytics` package can take a significant amount of time to compile from source. This guide provides several alternatives to avoid lengthy compilation times.

---

# Installation Options

## Option 1: Install specific service packages

Instead of installing the full `paws` package, you can install only the service package you need. This is the fastest and most lightweight approach.

Each AWS service is organized into specific packages:

``` r
# For S3, install paws.storage
install.packages("paws.storage")

# For EC2, install paws.compute
install.packages("paws.compute")

# For DynamoDB, install paws.database
install.packages("paws.database")
```

To find which package contains your AWS service, see the [Paws service reference index](https://www.paws-r-sdk.com/docs/reference_index/).

---

## Option 2: Install from R-Universe binaries

The R-Universe provides pre-compiled binaries for all platforms, including Linux:

``` r
install.packages(
  'paws',
  repos = c(
    pawsr = 'https://paws-r.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'
  )
)
```

You can browse available builds and versions at the [Paws R-Universe page](https://paws-r.r-universe.dev/builds#builds).

---

## Option 3: Install from Paws pre-built binaries (Ubuntu)

Paws provides pre-built binaries specifically for Ubuntu systems:

``` r
install.packages(
  'paws',
  repos = c(
    pawsr = 'https://paws-r-builds.s3.amazonaws.com/packages/latest/',
    CRAN = 'https://cloud.r-project.org'
  )
)
```

This repository is updated regularly and provides the latest stable releases.

---

## Option 4: Install from Posit Package Manager

Posit Package Manager (formerly RStudio Package Manager) provides pre-compiled binaries for multiple Linux distributions:

1. Visit the [Posit Package Manager setup page](https://packagemanager.posit.co/client/#/repos/cran/setup)

2. Select your operating system and R version

3. Follow the provided instructions to configure your repository

4. Install paws:

``` r
install.packages('paws')
```

---

## Option 5: Use r2u (Ubuntu)

[r2u](https://eddelbuettel.github.io/r2u/) provides fast CRAN package installation on Ubuntu through pre-built binaries:

1. Follow the [r2u installation guide](https://eddelbuettel.github.io/r2u/) to set up the repository

2. Install paws using the standard command:

``` r
install.packages('paws')
```

r2u automatically uses system binaries when available, significantly reducing installation time.

---

## Option 6: Use renv with package sources

If you're using `renv` for package management, you can configure it to use binary sources:

``` r
# In your project, configure renv to use R-Universe
options(repos = c(
  pawsr = 'https://paws-r.r-universe.dev',
  CRAN = 'https://cloud.r-project.org'
))

renv::install('paws')
```

For more advanced configurations, see the [renv package sources guide](https://rstudio.github.io/renv/articles/package-sources.html).

---

# Standard CRAN Installation

If you don't mind the compilation time or are on macOS/Windows (which use pre-compiled binaries by default), you can install directly from CRAN:

``` r
install.packages('paws')
```

Note: On Linux, this will compile `paws.analytics` from source, which may take 10-30 minutes or more depending on your system.

---

# Related Issues

For more context on Linux compilation times and related discussions, see:

- [GitHub Issue #919: paws.analytics compilation time on Linux](https://github.com/paws-r/paws/issues/919)
