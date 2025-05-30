% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_create_subscription_grant}
\alias{datazone_create_subscription_grant}
\title{Creates a subsscription grant in Amazon DataZone}
\usage{
datazone_create_subscription_grant(
  assetTargetNames = NULL,
  clientToken = NULL,
  domainIdentifier,
  environmentIdentifier,
  grantedEntity,
  subscriptionTargetIdentifier = NULL
)
}
\arguments{
\item{assetTargetNames}{The names of the assets for which the subscription grant is created.}

\item{clientToken}{A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.}

\item{domainIdentifier}{[required] The ID of the Amazon DataZone domain in which the subscription grant is
created.}

\item{environmentIdentifier}{[required] The ID of the environment in which the subscription grant is created.}

\item{grantedEntity}{[required] The entity to which the subscription is to be granted.}

\item{subscriptionTargetIdentifier}{The ID of the subscription target for which the subscription grant is
created.}
}
\description{
Creates a subsscription grant in Amazon DataZone.

See \url{https://www.paws-r-sdk.com/docs/datazone_create_subscription_grant/} for full documentation.
}
\keyword{internal}
