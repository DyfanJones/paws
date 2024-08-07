% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vpclattice_operations.R
\name{vpclattice_create_target_group}
\alias{vpclattice_create_target_group}
\title{Creates a target group}
\usage{
vpclattice_create_target_group(
  clientToken = NULL,
  config = NULL,
  name,
  tags = NULL,
  type
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.}

\item{config}{The target group configuration.}

\item{name}{[required] The name of the target group. The name must be unique within the
account. The valid characters are a-z, 0-9, and hyphens (-). You can't
use a hyphen as the first or last character, or immediately after
another hyphen.}

\item{tags}{The tags for the target group.}

\item{type}{[required] The type of target group.}
}
\description{
Creates a target group. A target group is a collection of targets, or compute resources, that run your application or service. A target group can only be used by a single service.

See \url{https://www.paws-r-sdk.com/docs/vpclattice_create_target_group/} for full documentation.
}
\keyword{internal}
