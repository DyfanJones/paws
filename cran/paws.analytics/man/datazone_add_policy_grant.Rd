% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_add_policy_grant}
\alias{datazone_add_policy_grant}
\title{Adds a policy grant (an authorization policy) to a specified entity,
including domain units, environment blueprint configurations, or
environment profiles}
\usage{
datazone_add_policy_grant(
  clientToken = NULL,
  detail,
  domainIdentifier,
  entityIdentifier,
  entityType,
  policyType,
  principal
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.}

\item{detail}{[required] The details of the policy grant.}

\item{domainIdentifier}{[required] The ID of the domain where you want to add a policy grant.}

\item{entityIdentifier}{[required] The ID of the entity (resource) to which you want to add a policy grant.}

\item{entityType}{[required] The type of entity (resource) to which the grant is added.}

\item{policyType}{[required] The type of policy that you want to grant.}

\item{principal}{[required] The principal to whom the permissions are granted.}
}
\description{
Adds a policy grant (an authorization policy) to a specified entity, including domain units, environment blueprint configurations, or environment profiles.

See \url{https://www.paws-r-sdk.com/docs/datazone_add_policy_grant/} for full documentation.
}
\keyword{internal}
