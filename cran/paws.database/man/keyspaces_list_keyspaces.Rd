% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keyspaces_operations.R
\name{keyspaces_list_keyspaces}
\alias{keyspaces_list_keyspaces}
\title{The ListKeyspaces operation returns a list of keyspaces}
\usage{
keyspaces_list_keyspaces(nextToken = NULL, maxResults = NULL)
}
\arguments{
\item{nextToken}{The pagination token. To resume pagination, provide the \code{NextToken}
value as argument of a subsequent API invocation.}

\item{maxResults}{The total number of keyspaces to return in the output. If the total
number of keyspaces available is more than the value specified, a
\code{NextToken} is provided in the output. To resume pagination, provide the
\code{NextToken} value as an argument of a subsequent API invocation.}
}
\description{
The \code{\link[=keyspaces_list_keyspaces]{list_keyspaces}} operation returns a list of keyspaces.

See \url{https://www.paws-r-sdk.com/docs/keyspaces_list_keyspaces/} for full documentation.
}
\keyword{internal}
