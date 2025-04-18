% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/guardduty_operations.R
\name{guardduty_list_filters}
\alias{guardduty_list_filters}
\title{Returns a paginated list of the current filters}
\usage{
guardduty_list_filters(DetectorId, MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{DetectorId}{[required] The unique ID of the detector that is associated with the filter.

To find the \code{detectorId} in the current Region, see the Settings page in
the GuardDuty console, or run the
\code{\link[=guardduty_list_detectors]{list_detectors}} API.}

\item{MaxResults}{You can use this parameter to indicate the maximum number of items that
you want in the response. The default value is 50. The maximum value is
50.}

\item{NextToken}{You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the list action. For
subsequent calls to the action, fill nextToken in the request with the
value of NextToken from the previous response to continue listing data.}
}
\description{
Returns a paginated list of the current filters.

See \url{https://www.paws-r-sdk.com/docs/guardduty_list_filters/} for full documentation.
}
\keyword{internal}
