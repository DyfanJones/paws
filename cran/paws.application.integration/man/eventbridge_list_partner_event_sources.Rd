% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eventbridge_operations.R
\name{eventbridge_list_partner_event_sources}
\alias{eventbridge_list_partner_event_sources}
\title{An SaaS partner can use this operation to list all the partner event
source names that they have created}
\usage{
eventbridge_list_partner_event_sources(
  NamePrefix,
  NextToken = NULL,
  Limit = NULL
)
}
\arguments{
\item{NamePrefix}{[required] If you specify this, the results are limited to only those partner event
sources that start with the string you specify.}

\item{NextToken}{The token returned by a previous call, which you can use to retrieve the
next set of results.

The value of \code{nextToken} is a unique pagination token for each page. To
retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an \verb{HTTP 400 InvalidToken}
error.}

\item{Limit}{pecifying this limits the number of results returned by this operation.
The operation also returns a NextToken which you can use in a subsequent
operation to retrieve the next set of results.}
}
\description{
An SaaS partner can use this operation to list all the partner event source names that they have created. This operation is not used by Amazon Web Services customers.

See \url{https://www.paws-r-sdk.com/docs/eventbridge_list_partner_event_sources/} for full documentation.
}
\keyword{internal}
