% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_describe_maintenance_window_executions}
\alias{ssm_describe_maintenance_window_executions}
\title{Lists the executions of a Maintenance Window}
\usage{
ssm_describe_maintenance_window_executions(WindowId, Filters,
  MaxResults, NextToken)
}
\arguments{
\item{WindowId}{[required] The ID of the Maintenance Window whose executions should be retrieved.}

\item{Filters}{Each entry in the array is a structure containing:

Key (string, between 1 and 128 characters)

Values (array of strings, each string is between 1 and 256 characters)

The supported Keys are ExecutedBefore and ExecutedAfter with the value
being a date/time string such as 2016-11-04T05:00:00Z.}

\item{MaxResults}{The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.}

\item{NextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}
}
\description{
Lists the executions of a Maintenance Window. This includes information
about when the Maintenance Window was scheduled to be active, and
information about tasks registered and run with the Maintenance Window.
}
\section{Request syntax}{
\preformatted{svc$describe_maintenance_window_executions(
  WindowId = "string",
  Filters = list(
    list(
      Key = "string",
      Values = list(
        "string"
      )
    )
  ),
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}