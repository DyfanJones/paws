% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_delete_application}
\alias{kinesisanalyticsv2_delete_application}
\title{Deletes the specified application}
\usage{
kinesisanalyticsv2_delete_application(ApplicationName, CreateTimestamp)
}
\arguments{
\item{ApplicationName}{[required] The name of the application to delete.}

\item{CreateTimestamp}{[required] Use the
\code{\link[=kinesisanalyticsv2_describe_application]{describe_application}}
operation to get this value.}
}
\description{
Deletes the specified application. Managed Service for Apache Flink halts application execution and deletes the application.

See \url{https://www.paws-r-sdk.com/docs/kinesisanalyticsv2_delete_application/} for full documentation.
}
\keyword{internal}
