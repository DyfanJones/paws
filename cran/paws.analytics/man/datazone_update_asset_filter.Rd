% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_update_asset_filter}
\alias{datazone_update_asset_filter}
\title{Updates an asset filter}
\usage{
datazone_update_asset_filter(
  assetIdentifier,
  configuration = NULL,
  description = NULL,
  domainIdentifier,
  identifier,
  name = NULL
)
}
\arguments{
\item{assetIdentifier}{[required] The ID of the data asset.}

\item{configuration}{The configuration of the asset filter.}

\item{description}{The description of the asset filter.}

\item{domainIdentifier}{[required] The ID of the domain where you want to update an asset filter.}

\item{identifier}{[required] The ID of the asset filter.}

\item{name}{The name of the asset filter.}
}
\description{
Updates an asset filter.

See \url{https://www.paws-r-sdk.com/docs/datazone_update_asset_filter/} for full documentation.
}
\keyword{internal}
