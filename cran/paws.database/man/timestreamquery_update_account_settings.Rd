% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timestreamquery_operations.R
\name{timestreamquery_update_account_settings}
\alias{timestreamquery_update_account_settings}
\title{Transitions your account to use TCUs for query pricing and modifies the
maximum query compute units that you've configured}
\usage{
timestreamquery_update_account_settings(
  MaxQueryTCU = NULL,
  QueryPricingModel = NULL,
  QueryCompute = NULL
)
}
\arguments{
\item{MaxQueryTCU}{The maximum number of compute units the service will use at any point in
time to serve your queries. To run queries, you must set a minimum
capacity of 4 TCU. You can set the maximum number of TCU in multiples of
4, for example, 4, 8, 16, 32, and so on. The maximum value supported for
\code{MaxQueryTCU} is 1000. To request an increase to this soft limit,
contact Amazon Web Services Support. For information about the default
quota for maxQueryTCU, see Default quotas. This configuration is
applicable only for on-demand usage of Timestream Compute Units (TCUs).

The maximum value supported for \code{MaxQueryTCU} is 1000. To request an
increase to this soft limit, contact Amazon Web Services Support. For
information about the default quota for \code{maxQueryTCU}, see \href{https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.default}{Default quotas}.}

\item{QueryPricingModel}{The pricing model for queries in an account.

The \code{QueryPricingModel} parameter is used by several Timestream
operations; however, the
\code{\link[=timestreamquery_update_account_settings]{update_account_settings}} API
operation doesn't recognize any values other than \code{COMPUTE_UNITS}.}

\item{QueryCompute}{Modifies the query compute settings configured in your account,
including the query pricing model and provisioned Timestream Compute
Units (TCUs) in your account.

This API is idempotent, meaning that making the same request multiple
times will have the same effect as making the request once.}
}
\description{
Transitions your account to use TCUs for query pricing and modifies the maximum query compute units that you've configured. If you reduce the value of \code{MaxQueryTCU} to a desired configuration, the new value can take up to 24 hours to be effective.

See \url{https://www.paws-r-sdk.com/docs/timestreamquery_update_account_settings/} for full documentation.
}
\keyword{internal}
