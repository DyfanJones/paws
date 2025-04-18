% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emrserverless_operations.R
\name{emrserverless_create_application}
\alias{emrserverless_create_application}
\title{Creates an application}
\usage{
emrserverless_create_application(
  name = NULL,
  releaseLabel,
  type,
  clientToken,
  initialCapacity = NULL,
  maximumCapacity = NULL,
  tags = NULL,
  autoStartConfiguration = NULL,
  autoStopConfiguration = NULL,
  networkConfiguration = NULL,
  architecture = NULL,
  imageConfiguration = NULL,
  workerTypeSpecifications = NULL,
  runtimeConfiguration = NULL,
  monitoringConfiguration = NULL,
  interactiveConfiguration = NULL,
  schedulerConfiguration = NULL
)
}
\arguments{
\item{name}{The name of the application.}

\item{releaseLabel}{[required] The Amazon EMR release associated with the application.}

\item{type}{[required] The type of application you want to start, such as Spark or Hive.}

\item{clientToken}{[required] The client idempotency token of the application to create. Its value
must be unique for each request.}

\item{initialCapacity}{The capacity to initialize when the application is created.}

\item{maximumCapacity}{The maximum capacity to allocate when the application is created. This
is cumulative across all workers at any given point in time, not just
when an application is created. No new resources will be created once
any one of the defined limits is hit.}

\item{tags}{The tags assigned to the application.}

\item{autoStartConfiguration}{The configuration for an application to automatically start on job
submission.}

\item{autoStopConfiguration}{The configuration for an application to automatically stop after a
certain amount of time being idle.}

\item{networkConfiguration}{The network configuration for customer VPC connectivity.}

\item{architecture}{The CPU architecture of an application.}

\item{imageConfiguration}{The image configuration for all worker types. You can either set this
parameter or \code{imageConfiguration} for each worker type in
\code{workerTypeSpecifications}.}

\item{workerTypeSpecifications}{The key-value pairs that specify worker type to
\code{WorkerTypeSpecificationInput}. This parameter must contain all valid
worker types for a Spark or Hive application. Valid worker types include
\code{Driver} and \code{Executor} for Spark applications and \code{HiveDriver} and
\code{TezTask} for Hive applications. You can either set image details in
this parameter for each worker type, or in \code{imageConfiguration} for all
worker types.}

\item{runtimeConfiguration}{The
\href{https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html}{Configuration}
specifications to use when creating an application. Each configuration
consists of a classification and properties. This configuration is
applied to all the job runs submitted under the application.}

\item{monitoringConfiguration}{The configuration setting for monitoring.}

\item{interactiveConfiguration}{The interactive configuration object that enables the interactive use
cases to use when running an application.}

\item{schedulerConfiguration}{The scheduler configuration for batch and streaming jobs running on this
application. Supported with release labels emr-7.0.0 and above.}
}
\description{
Creates an application.

See \url{https://www.paws-r-sdk.com/docs/emrserverless_create_application/} for full documentation.
}
\keyword{internal}
