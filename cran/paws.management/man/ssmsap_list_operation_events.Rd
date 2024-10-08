% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssmsap_operations.R
\name{ssmsap_list_operation_events}
\alias{ssmsap_list_operation_events}
\title{Returns a list of operations events}
\usage{
ssmsap_list_operation_events(
  OperationId,
  MaxResults = NULL,
  NextToken = NULL,
  Filters = NULL
)
}
\arguments{
\item{OperationId}{[required] The ID of the operation.}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned nextToken
value.

If you do not specify a value for \code{MaxResults}, the request returns 50
items per page by default.}

\item{NextToken}{The token to use to retrieve the next page of results. This value is
null when there are no more results to return.}

\item{Filters}{Optionally specify filters to narrow the returned operation event items.

Valid filter names include \code{status}, \code{resourceID}, and \code{resourceType}.
The valid operator for all three filters is \code{Equals}.}
}
\description{
Returns a list of operations events.

See \url{https://www.paws-r-sdk.com/docs/ssmsap_list_operation_events/} for full documentation.
}
\keyword{internal}
