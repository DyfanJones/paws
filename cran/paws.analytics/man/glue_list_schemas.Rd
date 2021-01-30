% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_list_schemas}
\alias{glue_list_schemas}
\title{Returns a list of schemas with minimal details}
\usage{
glue_list_schemas(RegistryId, MaxResults, NextToken)
}
\arguments{
\item{RegistryId}{A wrapper structure that may contain the registry name and Amazon
Resource Name (ARN).}

\item{MaxResults}{Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.}

\item{NextToken}{A continuation token, if this is a continuation call.}
}
\description{
Returns a list of schemas with minimal details. Schemas in Deleting
status will not be included in the results. Empty results will be
returned if there are no schemas available.

When the \code{RegistryId} is not provided, all the schemas across registries
will be part of the API response.
}
\section{Request syntax}{
\preformatted{svc$list_schemas(
  RegistryId = list(
    RegistryName = "string",
    RegistryArn = "string"
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}