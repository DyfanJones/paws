% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_describe_configuration_recorder_status}
\alias{configservice_describe_configuration_recorder_status}
\title{Returns the current status of the configuration recorder you specify as
well as the status of the last recording event for the configuration
recorders}
\usage{
configservice_describe_configuration_recorder_status(
  ConfigurationRecorderNames = NULL,
  ServicePrincipal = NULL,
  Arn = NULL
)
}
\arguments{
\item{ConfigurationRecorderNames}{The name of the configuration recorder. If the name is not specified,
the opertation returns the status for the customer managed configuration
recorder configured for the account, if applicable.

When making a request to this operation, you can only specify one
configuration recorder.}

\item{ServicePrincipal}{For service-linked configuration recorders, you can use the service
principal of the linked Amazon Web Services service to specify the
configuration recorder.}

\item{Arn}{The Amazon Resource Name (ARN) of the configuration recorder that you
want to specify.}
}
\description{
Returns the current status of the configuration recorder you specify as well as the status of the last recording event for the configuration recorders.

See \url{https://www.paws-r-sdk.com/docs/configservice_describe_configuration_recorder_status/} for full documentation.
}
\keyword{internal}
