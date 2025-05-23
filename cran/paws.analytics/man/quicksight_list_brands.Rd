% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_list_brands}
\alias{quicksight_list_brands}
\title{Lists all brands in an Amazon QuickSight account}
\usage{
quicksight_list_brands(AwsAccountId, MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that owns the brands that you
want to list.}

\item{MaxResults}{The maximum number of results to be returned in a single request.}

\item{NextToken}{The token for the next set of results, or null if there are no more
results.}
}
\description{
Lists all brands in an Amazon QuickSight account.

See \url{https://www.paws-r-sdk.com/docs/quicksight_list_brands/} for full documentation.
}
\keyword{internal}
