% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_stop_application}
\alias{kinesisanalyticsv2_stop_application}
\title{Stops the application from processing data}
\usage{
kinesisanalyticsv2_stop_application(ApplicationName, Force = NULL)
}
\arguments{
\item{ApplicationName}{[required] The name of the running application to stop.}

\item{Force}{Set to \code{true} to force the application to stop. If you set \code{Force} to
\code{true}, Managed Service for Apache Flink stops the application without
taking a snapshot.

Force-stopping your application may lead to data loss or duplication. To
prevent data loss or duplicate processing of data during application
restarts, we recommend you to take frequent snapshots of your
application.

You can only force stop a Managed Service for Apache Flink application.
You can't force stop a SQL-based Kinesis Data Analytics application.

The application must be in the \code{STARTING}, \code{UPDATING}, \code{STOPPING},
\code{AUTOSCALING}, or \code{RUNNING} status.}
}
\description{
Stops the application from processing data. You can stop an application only if it is in the running status, unless you set the \code{Force} parameter to \code{true}.

See \url{https://www.paws-r-sdk.com/docs/kinesisanalyticsv2_stop_application/} for full documentation.
}
\keyword{internal}
