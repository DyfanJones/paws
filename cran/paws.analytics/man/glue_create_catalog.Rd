% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_catalog}
\alias{glue_create_catalog}
\title{Creates a new catalog in the Glue Data Catalog}
\usage{
glue_create_catalog(Name, CatalogInput, Tags = NULL)
}
\arguments{
\item{Name}{[required] The name of the catalog to create.}

\item{CatalogInput}{[required] A \code{CatalogInput} object that defines the metadata for the catalog.}

\item{Tags}{A map array of key-value pairs, not more than 50 pairs. Each key is a
UTF-8 string, not less than 1 or more than 128 bytes long. Each value is
a UTF-8 string, not more than 256 bytes long. The tags you assign to the
catalog.}
}
\description{
Creates a new catalog in the Glue Data Catalog.

See \url{https://www.paws-r-sdk.com/docs/glue_create_catalog/} for full documentation.
}
\keyword{internal}
