% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroups_operations.R
\name{resourcegroups_update_account_settings}
\alias{resourcegroups_update_account_settings}
\title{Turns on or turns off optional features in Resource Groups}
\usage{
resourcegroups_update_account_settings(
  GroupLifecycleEventsDesiredStatus = NULL
)
}
\arguments{
\item{GroupLifecycleEventsDesiredStatus}{Specifies whether you want to turn \href{https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html}{group lifecycle events}
on or off.

You can't turn on group lifecycle events if your resource groups quota
is greater than 2,000.}
}
\description{
Turns on or turns off optional features in Resource Groups.

See \url{https://www.paws-r-sdk.com/docs/resourcegroups_update_account_settings/} for full documentation.
}
\keyword{internal}
