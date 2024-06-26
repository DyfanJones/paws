% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prometheusservice_operations.R
\name{prometheusservice_create_alert_manager_definition}
\alias{prometheusservice_create_alert_manager_definition}
\title{The CreateAlertManagerDefinition operation creates the alert manager
definition in a workspace}
\usage{
prometheusservice_create_alert_manager_definition(
  clientToken = NULL,
  data,
  workspaceId
)
}
\arguments{
\item{clientToken}{A unique identifier that you can provide to ensure the idempotency of
the request. Case-sensitive.}

\item{data}{[required] The alert manager definition to add. A base64-encoded version of the
YAML alert manager definition file.

For details about the alert manager definition, see
\href{https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html}{AlertManagedDefinitionData}.}

\item{workspaceId}{[required] The ID of the workspace to add the alert manager definition to.}
}
\description{
The \code{\link[=prometheusservice_create_alert_manager_definition]{create_alert_manager_definition}} operation creates the alert manager definition in a workspace. If a workspace already has an alert manager definition, don't use this operation to update it. Instead, use \code{\link[=prometheusservice_put_alert_manager_definition]{put_alert_manager_definition}}.

See \url{https://www.paws-r-sdk.com/docs/prometheusservice_create_alert_manager_definition/} for full documentation.
}
\keyword{internal}
