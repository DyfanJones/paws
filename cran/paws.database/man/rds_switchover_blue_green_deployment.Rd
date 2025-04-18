% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_switchover_blue_green_deployment}
\alias{rds_switchover_blue_green_deployment}
\title{Switches over a blue/green deployment}
\usage{
rds_switchover_blue_green_deployment(
  BlueGreenDeploymentIdentifier,
  SwitchoverTimeout = NULL
)
}
\arguments{
\item{BlueGreenDeploymentIdentifier}{[required] The resource ID of the blue/green deployment.

Constraints:
\itemize{
\item Must match an existing blue/green deployment resource ID.
}}

\item{SwitchoverTimeout}{The amount of time, in seconds, for the switchover to complete.

Default: 300

If the switchover takes longer than the specified duration, then any
changes are rolled back, and no changes are made to the environments.}
}
\description{
Switches over a blue/green deployment.

See \url{https://www.paws-r-sdk.com/docs/rds_switchover_blue_green_deployment/} for full documentation.
}
\keyword{internal}
