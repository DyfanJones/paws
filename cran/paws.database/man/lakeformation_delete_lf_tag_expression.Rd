% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeformation_operations.R
\name{lakeformation_delete_lf_tag_expression}
\alias{lakeformation_delete_lf_tag_expression}
\title{Deletes the LF-Tag expression}
\usage{
lakeformation_delete_lf_tag_expression(Name, CatalogId = NULL)
}
\arguments{
\item{Name}{[required] The name for the LF-Tag expression.}

\item{CatalogId}{The identifier for the Data Catalog. By default, the account ID in which
the LF-Tag expression is saved.}
}
\description{
Deletes the LF-Tag expression. The caller must be a data lake admin or have \code{DROP} permissions on the LF-Tag expression. Deleting a LF-Tag expression will also delete all \code{LFTagPolicy} permissions referencing the LF-Tag expression.

See \url{https://www.paws-r-sdk.com/docs/lakeformation_delete_lf_tag_expression/} for full documentation.
}
\keyword{internal}
