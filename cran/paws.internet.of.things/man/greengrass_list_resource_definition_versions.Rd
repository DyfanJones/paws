% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greengrass_operations.R
\name{greengrass_list_resource_definition_versions}
\alias{greengrass_list_resource_definition_versions}
\title{Lists the versions of a resource definition}
\usage{
greengrass_list_resource_definition_versions(MaxResults, NextToken,
  ResourceDefinitionId)
}
\arguments{
\item{MaxResults}{The maximum number of results to be returned per request.}

\item{NextToken}{The token for the next set of results, or ''null'' if there are no additional results.}

\item{ResourceDefinitionId}{[required] The ID of the resource definition.}
}
\description{
Lists the versions of a resource definition.
}
\section{Request syntax}{
\preformatted{svc$list_resource_definition_versions(
  MaxResults = "string",
  NextToken = "string",
  ResourceDefinitionId = "string"
)
}
}

\keyword{internal}
