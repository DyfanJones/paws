% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/keyspaces_operations.R
\name{keyspaces_list_types}
\alias{keyspaces_list_types}
\title{The ListTypes operation returns a list of types for a specified keyspace}
\usage{
keyspaces_list_types(nextToken = NULL, maxResults = NULL, keyspaceName)
}
\arguments{
\item{nextToken}{The pagination token. To resume pagination, provide the \code{NextToken}
value as an argument of a subsequent API invocation.}

\item{maxResults}{The total number of types to return in the output. If the total number
of types available is more than the value specified, a \code{NextToken} is
provided in the output. To resume pagination, provide the \code{NextToken}
value as an argument of a subsequent API invocation.}

\item{keyspaceName}{[required] The name of the keyspace that contains the listed types.}
}
\description{
The \code{\link[=keyspaces_list_types]{list_types}} operation returns a list of types for a specified keyspace.

See \url{https://www.paws-r-sdk.com/docs/keyspaces_list_types/} for full documentation.
}
\keyword{internal}
