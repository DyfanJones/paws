% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/billing_operations.R
\name{billing_create_billing_view}
\alias{billing_create_billing_view}
\title{Creates a billing view with the specified billing view attributes}
\usage{
billing_create_billing_view(
  name,
  description = NULL,
  sourceViews,
  dataFilterExpression = NULL,
  clientToken = NULL,
  resourceTags = NULL
)
}
\arguments{
\item{name}{[required] The name of the billing view.}

\item{description}{The description of the billing view.}

\item{sourceViews}{[required] A list of billing views used as the data source for the custom billing
view.}

\item{dataFilterExpression}{See
\href{https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html}{Expression}.
Billing view only supports \code{LINKED_ACCOUNT} and \code{Tags}.}

\item{clientToken}{A unique, case-sensitive identifier you specify to ensure idempotency of
the request. Idempotency ensures that an API request completes no more
than one time. If the original request completes successfully, any
subsequent retries complete successfully without performing any further
actions with an idempotent request.}

\item{resourceTags}{A list of key value map specifying tags associated to the billing view
being created.}
}
\description{
Creates a billing view with the specified billing view attributes.

See \url{https://www.paws-r-sdk.com/docs/billing_create_billing_view/} for full documentation.
}
\keyword{internal}
