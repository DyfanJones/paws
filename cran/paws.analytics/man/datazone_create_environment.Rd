% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_create_environment}
\alias{datazone_create_environment}
\title{Create an Amazon DataZone environment}
\usage{
datazone_create_environment(
  deploymentOrder = NULL,
  description = NULL,
  domainIdentifier,
  environmentAccountIdentifier = NULL,
  environmentAccountRegion = NULL,
  environmentBlueprintIdentifier = NULL,
  environmentConfigurationId = NULL,
  environmentProfileIdentifier,
  glossaryTerms = NULL,
  name,
  projectIdentifier,
  userParameters = NULL
)
}
\arguments{
\item{deploymentOrder}{The deployment order of the environment.}

\item{description}{The description of the Amazon DataZone environment.}

\item{domainIdentifier}{[required] The identifier of the Amazon DataZone domain in which the environment is
created.}

\item{environmentAccountIdentifier}{The ID of the account in which the environment is being created.}

\item{environmentAccountRegion}{The region of the account in which the environment is being created.}

\item{environmentBlueprintIdentifier}{The ID of the blueprint with which the environment is being created.}

\item{environmentConfigurationId}{The configuration ID of the environment.}

\item{environmentProfileIdentifier}{[required] The identifier of the environment profile that is used to create this
Amazon DataZone environment.}

\item{glossaryTerms}{The glossary terms that can be used in this Amazon DataZone environment.}

\item{name}{[required] The name of the Amazon DataZone environment.}

\item{projectIdentifier}{[required] The identifier of the Amazon DataZone project in which this environment
is created.}

\item{userParameters}{The user parameters of this Amazon DataZone environment.}
}
\description{
Create an Amazon DataZone environment.

See \url{https://www.paws-r-sdk.com/docs/datazone_create_environment/} for full documentation.
}
\keyword{internal}
