% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_create_rule}
\alias{datazone_create_rule}
\title{Creates a rule in Amazon DataZone}
\usage{
datazone_create_rule(
  action,
  clientToken = NULL,
  description = NULL,
  detail,
  domainIdentifier,
  name,
  scope,
  target
)
}
\arguments{
\item{action}{[required] The action of the rule.}

\item{clientToken}{A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.}

\item{description}{The description of the rule.}

\item{detail}{[required] The detail of the rule.}

\item{domainIdentifier}{[required] The ID of the domain where the rule is created.}

\item{name}{[required] The name of the rule.}

\item{scope}{[required] The scope of the rule.}

\item{target}{[required] The target of the rule.}
}
\description{
Creates a rule in Amazon DataZone. A rule is a formal agreement that enforces specific requirements across user workflows (e.g., publishing assets to the catalog, requesting subscriptions, creating projects) within the Amazon DataZone data portal. These rules help maintain consistency, ensure compliance, and uphold governance standards in data management processes. For instance, a metadata enforcement rule can specify the required information for creating a subscription request or publishing a data asset to the catalog, ensuring alignment with organizational standards.

See \url{https://www.paws-r-sdk.com/docs/datazone_create_rule/} for full documentation.
}
\keyword{internal}
