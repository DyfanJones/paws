% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_operations.R
\name{appstream_describe_usage_report_subscriptions}
\alias{appstream_describe_usage_report_subscriptions}
\title{Retrieves a list that describes one or more usage report subscriptions}
\usage{
appstream_describe_usage_report_subscriptions(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum size of each page of results.}

\item{NextToken}{The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.}
}
\description{
Retrieves a list that describes one or more usage report subscriptions.
}
\section{Request syntax}{
\preformatted{svc$describe_usage_report_subscriptions(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}