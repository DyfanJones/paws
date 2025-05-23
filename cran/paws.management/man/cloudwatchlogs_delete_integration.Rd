% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_delete_integration}
\alias{cloudwatchlogs_delete_integration}
\title{Deletes the integration between CloudWatch Logs and OpenSearch Service}
\usage{
cloudwatchlogs_delete_integration(integrationName, force = NULL)
}
\arguments{
\item{integrationName}{[required] The name of the integration to delete. To find the name of your
integration, use
\code{\link[=cloudwatchlogs_list_integrations]{list_integrations}}.}

\item{force}{Specify \code{true} to force the deletion of the integration even if vended
logs dashboards currently exist.

The default is \code{false}.}
}
\description{
Deletes the integration between CloudWatch Logs and OpenSearch Service. If your integration has active vended logs dashboards, you must specify \code{true} for the \code{force} parameter, otherwise the operation will fail. If you delete the integration by setting \code{force} to \code{true}, all your vended logs dashboards powered by OpenSearch Service will be deleted and the data that was on them will no longer be accessible.

See \url{https://www.paws-r-sdk.com/docs/cloudwatchlogs_delete_integration/} for full documentation.
}
\keyword{internal}
