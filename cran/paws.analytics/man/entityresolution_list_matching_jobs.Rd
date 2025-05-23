% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/entityresolution_operations.R
\name{entityresolution_list_matching_jobs}
\alias{entityresolution_list_matching_jobs}
\title{Lists all jobs for a given workflow}
\usage{
entityresolution_list_matching_jobs(
  workflowName,
  nextToken = NULL,
  maxResults = NULL
)
}
\arguments{
\item{workflowName}{[required] The name of the workflow to be retrieved.}

\item{nextToken}{The pagination token from the previous API call.}

\item{maxResults}{The maximum number of objects returned per page.}
}
\description{
Lists all jobs for a given workflow.

See \url{https://www.paws-r-sdk.com/docs/entityresolution_list_matching_jobs/} for full documentation.
}
\keyword{internal}
